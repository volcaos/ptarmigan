ucoin
====

# 構成
* `ucoin` がライブラリ部、 `ucoind` が通信を含めたアプリ部
* `ucoin` だけでは通信シーケンスに対応できないので、 `ucoind` に負う部分が大きい
* 全体としてエラーに対応しておらず、不整合が発生したらabortする。


# dependency libraries

* [mbedTLS](https://tls.mbed.org/)([github](https://github.com/ARMmbed/mbedtls))
* [libbase58 github](https://github.com/luke-jr/libbase58)
* [libsodium](https://download.libsodium.org/doc/)([github](https://github.com/jedisct1/libsodium))
* [lmdb](https://symas.com/lightning-memory-mapped-database/)([github](https://github.com/LMDB/lmdb))


# supported message

| hex  | dec | message                    | ref   | support |
|------|-----|----------------------------|-------|---------|
| 0010 | 16  | init                       | BOLT1 | △      |
| 0011 | 17  | error                      | BOLT1 | ×      |
| 0012 | 18  | ping                       | BOLT1 | ○      |
| 0013 | 19  | pong                       | BOLT1 | ○      |
| 0020 | 32  | open_channel               | BOLT2 | ○      |
| 0021 | 33  | accept_channel             | BOLT2 | ○      |
| 0022 | 34  | funding_created            | BOLT2 | ○      |
| 0023 | 35  | funding_signed             | BOLT2 | ○      |
| 0024 | 36  | funding_locked             | BOLT2 | ○      |
| 0026 | 38  | shutdown                   | BOLT2 | ○      |
| 0027 | 39  | closing_signed             | BOLT2 | △      |
| 0080 | 128 | update_add_htlc            | BOLT2 | ○      |
| 0082 | 130 | update_fulfill_htlc        | BOLT2 | ○      |
| 0083 | 131 | update_fail_htlc           | BOLT2 | ×      |
| 0084 | 132 | commitment_signed          | BOLT2 | △      |
| 0085 | 133 | revoke_and_ack             | BOLT2 | ○      |
| 0086 | 134 | update_fee                 | BOLT2 | ×      |
| 0087 | 135 | update_fail_malformed_htlc | BOLT2 | ×      |
| 0088 | 136 | channel_reestablish        | BOLT2 | ×      |
| 0100 | 256 | channel_announcement       | BOLT7 | △      |
| 0101 | 257 | node_announcement          | BOLT7 | △      |
| 0102 | 258 | channel_update             | BOLT7 | ×      |
| 0103 | 259 | announcement_signatures    | BOLT7 | △      |

○: supported  
△: implementating  
×: yet  

