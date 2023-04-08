//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Kms {
    /// Decrypt请求参数结构体
    public struct DecryptRequest: TCRequestModel {
        /// 待解密的密文数据
        public let ciphertextBlob: String

        /// key/value对的json字符串，如果Encrypt指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024字符
        public let encryptionContext: String?

        /// PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        public let encryptionPublicKey: String?

        /// 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        public let encryptionAlgorithm: String?

        public init(ciphertextBlob: String, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil) {
            self.ciphertextBlob = ciphertextBlob
            self.encryptionContext = encryptionContext
            self.encryptionPublicKey = encryptionPublicKey
            self.encryptionAlgorithm = encryptionAlgorithm
        }

        enum CodingKeys: String, CodingKey {
            case ciphertextBlob = "CiphertextBlob"
            case encryptionContext = "EncryptionContext"
            case encryptionPublicKey = "EncryptionPublicKey"
            case encryptionAlgorithm = "EncryptionAlgorithm"
        }
    }

    /// Decrypt返回参数结构体
    public struct DecryptResponse: TCResponseModel {
        /// CMK的全局唯一标识
        public let keyId: String

        /// 若调用时未提供 EncryptionPublicKey，该字段值为 Base64 编码的明文，需进行 Base64 解码以获取明文。
        /// 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取明文。
        public let plaintext: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case plaintext = "Plaintext"
            case requestId = "RequestId"
        }
    }

    /// 解密
    ///
    /// 本接口用于解密密文，得到明文数据。
    @inlinable
    public func decrypt(_ input: DecryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DecryptResponse> {
        self.client.execute(action: "Decrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 解密
    ///
    /// 本接口用于解密密文，得到明文数据。
    @inlinable
    public func decrypt(_ input: DecryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DecryptResponse {
        try await self.client.execute(action: "Decrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 解密
    ///
    /// 本接口用于解密密文，得到明文数据。
    @inlinable
    public func decrypt(ciphertextBlob: String, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DecryptResponse> {
        self.decrypt(.init(ciphertextBlob: ciphertextBlob, encryptionContext: encryptionContext, encryptionPublicKey: encryptionPublicKey, encryptionAlgorithm: encryptionAlgorithm), region: region, logger: logger, on: eventLoop)
    }

    /// 解密
    ///
    /// 本接口用于解密密文，得到明文数据。
    @inlinable
    public func decrypt(ciphertextBlob: String, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DecryptResponse {
        try await self.decrypt(.init(ciphertextBlob: ciphertextBlob, encryptionContext: encryptionContext, encryptionPublicKey: encryptionPublicKey, encryptionAlgorithm: encryptionAlgorithm), region: region, logger: logger, on: eventLoop)
    }
}
