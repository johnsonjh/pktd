module github.com/pkt-cash/pktd

go 1.14

replace (
	git.schwanenlied.me/yawning/bsaes.git => github.com/Yawning/bsaes v0.0.0-20180720073208-c0276d75487e
	github.com/coreos/bbolt v1.3.5 => go.etcd.io/bbolt v1.3.6-0.20200807205753-f6be82302843
	google.golang.org/grpc v1.34.0 => google.golang.org/grpc v1.29.1
)

require (
	filippo.io/edwards25519 v1.0.0-beta.2.0.20201218140448-c5477978affe // indirect
	git.schwanenlied.me/yawning/bsaes.git v0.0.0-20190320102049-26d1add596b6 // indirect
	github.com/NebulousLabs/go-upnp v0.0.0-20181203152547-b32978b8ccbf
	github.com/Yawning/aez v0.0.0-20180408160647-ec7426b44926
	github.com/aead/chacha20 v0.0.0-20180709150244-8b13a72661da
	github.com/aead/siphash v1.0.1
	github.com/arl/statsviz v0.2.3-0.20210106210000-ead6537275f7
	github.com/asaskevich/govalidator v0.0.0-20200907205600-7a23bdc65eef // indirect
	github.com/btcsuite/winsvc v1.0.0
	github.com/coreos/bbolt v1.3.5 // indirect
	github.com/coreos/etcd v3.3.22+incompatible
	github.com/coreos/go-semver v0.3.1-0.20201106132126-5c3640ab8809 // indirect
	github.com/coreos/go-systemd v0.0.0-20190719114852-fd7a80b32e1f // indirect
	github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f // indirect
	github.com/cpuguy83/go-md2man/v2 v2.0.1-0.20201216211136-af8da765f046 // indirect
	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc
	github.com/dchest/blake2b v1.0.0
	github.com/decred/dcrd/lru v1.1.1-0.20210107234817-0e72a3ec11b6 // indirect
	github.com/dustin/go-humanize v1.0.1-0.20200219035652-afde56e7acac // indirect
	github.com/emirpasic/gods v1.12.1-0.20201118132343-79df803e554c
	github.com/frankban/quicktest v1.11.3 // indirect
	github.com/fsnotify/fsnotify v1.4.10-0.20200417215612-7f4cf4dd2b52 // indirect
	github.com/go-errors/errors v1.1.1
	github.com/go-openapi/errors v0.19.9 // indirect
	github.com/go-openapi/strfmt v0.19.7 // indirect
	github.com/golang/protobuf v1.4.3
	github.com/golang/snappy v0.0.3-0.20201103224600-674baa8c7fc3
	github.com/google/uuid v1.1.4 // indirect
	github.com/gorilla/websocket v1.4.3-0.20200912193213-c3dd95aea977
	github.com/grpc-ecosystem/go-grpc-middleware v1.2.3-0.20201205162749-48900393c7f3
	github.com/grpc-ecosystem/go-grpc-prometheus v1.2.1-0.20200507082539-9abf3eb82b4a
	github.com/grpc-ecosystem/grpc-gateway v1.15.3-0.20201011140909-bb9b89ea8ac0
	github.com/hdevalence/ed25519consensus v0.0.0-20201207055737-7fde80a9d5ff
	github.com/jackpal/gateway v1.0.7
	github.com/jackpal/go-nat-pmp v1.0.2
	github.com/jedib0t/go-pretty v4.3.0+incompatible
	github.com/jessevdk/go-flags v1.4.1-0.20200711081900-c17162fe8fd7
	github.com/jonboulle/clockwork v0.2.2 // indirect
	github.com/json-iterator/go v1.1.11-0.20201118013158-e6b9536d3649
	github.com/kkdai/bstream v1.0.0
	github.com/lightninglabs/protobuf-hex-display v1.3.3-0.20191212020323-b444784ce75d
	github.com/ltcsuite/ltcd v0.20.1-beta.0.20201210074626-c807bfe31ef0
	github.com/mattn/go-runewidth v0.0.9 // indirect
	github.com/miekg/dns v1.1.36-0.20210107142820-59aea23afe55
	github.com/minio/sha256-simd v0.1.2-0.20190917233721-f675151bb5e1
	github.com/mitchellh/mapstructure v1.4.1-0.20210104060159-1b4332da48cb // indirect
	github.com/modern-go/reflect2 v1.0.2-0.20200602030031-7e6ae53ffa0b // indirect
	github.com/nxadm/tail v1.4.7-0.20201224113910-cab015346135 // indirect
	github.com/onsi/ginkgo v1.14.3-0.20210103162107-6803cc35e980
	github.com/onsi/gomega v1.10.5-0.20201208201658-3ed17884e444
	github.com/pkg/errors v0.9.2-0.20201214064552-5dd12d0cfe7f // indirect
	github.com/prometheus/client_golang v1.9.0
	github.com/russross/blackfriday/v2 v2.1.0 // indirect
	github.com/sethgrid/pester v1.1.1-0.20200617174401-d2ad9ec9a8b6
	github.com/soheilhy/cmux v0.1.5-0.20181025144106-8a8ea3c53959 // indirect
	github.com/sony/sonyflake v1.0.1-0.20200827011719-848d664ceea4
	github.com/stretchr/objx v0.3.0 // indirect
	github.com/stretchr/testify v1.6.2-0.20201103103935-92707c0b2d50
	github.com/tmc/grpc-websocket-proxy v0.0.0-20201229170055-e5319fda7802 // indirect
	github.com/tv42/zbase32 v0.0.0-20190604154422-aacc64a8f915
	github.com/urfave/cli v1.22.2-0.20191024042601-850de854cda0
	gitlab.com/NebulousLabs/fastrand v0.0.0-20181126182046-603482d69e40 // indirect
	gitlab.com/NebulousLabs/go-upnp v0.0.0-20181011194642-3a71999ed0d3 // indirect
	go.etcd.io/bbolt v1.3.5
	github.com/johnsonjh/goc25519sm v1.6.1-0.20210108174116-25fab8d7b2e9
	github.com/johnsonjh/leaktestfe v0.0.0-20210108112747-8342b7b9d70f // indirect
	go.mongodb.org/mongo-driver v1.4.0-beta2.0.20201217212712-60f76f5b1810 // indirect
	go.uber.org/goleak v1.1.11-0.20200902203756-89d54f0adef2
	go.uber.org/multierr v1.6.1-0.20201124182017-e015acf18bb3 // indirect
	go.uber.org/zap v1.16.1-0.20210108004007-f8ef92631288 // indirect
	go4.org v0.0.0-20201209231011-d4a079459e60
	golang.org/x/crypto v0.0.0-20201221181555-eec23a3978ad
	golang.org/x/net v0.0.0-20201224014010-6772e930b67b
	golang.org/x/sync v0.0.0-20201207232520-09787c993a3a // indirect
	golang.org/x/sys v0.0.0-20210108172913-0df2131ae363
	golang.org/x/term v0.0.0-20201210144234-2321bbc49cbf
	golang.org/x/text v0.3.5 // indirect
	golang.org/x/time v0.0.0-20201208040808-7e3f01d25324
	golang.org/x/tools v0.0.0-20210108181231-a008e46a1d25 // indirect
	google.golang.org/genproto v0.0.0-20210106152847-07624b53cd92 // indirect
	google.golang.org/grpc v1.35.0-dev.0.20210108181453-6a318bb011c6
	google.golang.org/protobuf v1.25.0 // indirect
	gopkg.in/macaroon-bakery.v2 v2.2.0
	gopkg.in/macaroon.v2 v2.1.0
	gopkg.in/yaml.v2 v2.4.0 // indirect
	gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b // indirect
	honnef.co/go/tools v0.2.0-0.dev.0.20210102034716-c5ce990a4e39 // indirect
	sigs.k8s.io/yaml v1.2.1-0.20201021160022-8aabd9a1b2a7 // indirect
)
