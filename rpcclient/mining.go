// Copyright (c) 2014-2017 The btcsuite developers
// Use of this source code is governed by an ISC
// license that can be found in the LICENSE file.

package rpcclient

import (
	"encoding/hex"
	"encoding/json"

	"github.com/pkt-cash/pktd/btcutil/er"

	"github.com/pkt-cash/pktd/btcjson"
	"github.com/pkt-cash/pktd/btcutil"
	"github.com/pkt-cash/pktd/chaincfg/chainhash"
)

// FutureGenerateResult is a future promise to deliver the result of a
// GenerateAsync RPC invocation (or an applicable error).
type FutureGenerateResult chan *response

// Receive waits for the response promised by the future and returns a list of
// block hashes generated by the call.
func (r FutureGenerateResult) Receive() ([]*chainhash.Hash, er.R) {
	res, err := receiveFuture(r)
	if err != nil {
		return nil, err
	}

	// Unmarshal result as a list of strings.
	var result []string
	err = er.E(json.Unmarshal(res, &result))
	if err != nil {
		return nil, err
	}

	// Convert each block hash to a chainhash.Hash and store a pointer to
	// each.
	convertedResult := make([]*chainhash.Hash, len(result))
	for i, hashString := range result {
		convertedResult[i], err = chainhash.NewHashFromStr(hashString)
		if err != nil {
			return nil, err
		}
	}

	return convertedResult, nil
}

// GenerateAsync returns an instance of a type that can be used to get
// the result of the RPC at some future time by invoking the Receive function on
// the returned instance.
//
// See Generate for the blocking version and more details.
func (c *Client) GenerateAsync(numBlocks uint32) FutureGenerateResult {
	cmd := btcjson.NewGenerateCmd(numBlocks)
	return c.sendCmd(cmd)
}

// Generate generates numBlocks blocks and returns their hashes.
func (c *Client) Generate(numBlocks uint32) ([]*chainhash.Hash, er.R) {
	return c.GenerateAsync(numBlocks).Receive()
}

// FutureSubmitBlockResult is a future promise to deliver the result of a
// SubmitBlockAsync RPC invocation (or an applicable error).
type FutureSubmitBlockResult chan *response

// Receive waits for the response promised by the future and returns an error if
// any occurred when submitting the block.
func (r FutureSubmitBlockResult) Receive() er.R {
	res, err := receiveFuture(r)
	if err != nil {
		return err
	}

	if string(res) != "null" {
		var result string
		err = er.E(json.Unmarshal(res, &result))
		if err != nil {
			return err
		}

		return er.New(result)
	}

	return nil

}

// SubmitBlockAsync returns an instance of a type that can be used to get the
// result of the RPC at some future time by invoking the Receive function on the
// returned instance.
//
// See SubmitBlock for the blocking version and more details.
func (c *Client) SubmitBlockAsync(block *btcutil.Block, options *btcjson.SubmitBlockOptions) FutureSubmitBlockResult {
	blockHex := ""
	if block != nil {
		blockBytes, err := block.Bytes()
		if err != nil {
			return newFutureError(err)
		}

		blockHex = hex.EncodeToString(blockBytes)
	}

	cmd := btcjson.NewSubmitBlockCmd(blockHex, options)
	return c.sendCmd(cmd)
}

// SubmitBlock attempts to submit a new block into the bitcoin network.
func (c *Client) SubmitBlock(block *btcutil.Block, options *btcjson.SubmitBlockOptions) er.R {
	return c.SubmitBlockAsync(block, options).Receive()
}

// TODO(davec): Implement GetBlockTemplate
