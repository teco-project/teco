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

import Logging
import NIOCore
import TecoCore

extension Kms {
    /// GenerateDataKey请求参数结构体
    public struct GenerateDataKeyRequest: TCRequestModel {
        /// CMK全局唯一标识符
        public let keyId: String

        /// 指定生成Datakey的加密算法以及Datakey大小，AES_128或者AES_256。KeySpec 和 NumberOfBytes 必须指定一个
        public let keySpec: String?

        /// 生成的DataKey的长度，同时指定NumberOfBytes和KeySpec时，以NumberOfBytes为准。最小值为1， 最大值为1024。KeySpec 和 NumberOfBytes 必须指定一个
        public let numberOfBytes: UInt64?

        /// key/value对的json字符串，如果使用该字段，则返回的DataKey在解密时需要填入相同的字符串
        public let encryptionContext: String?

        /// PEM 格式公钥字符串，支持 RSA2048 和 SM2 公钥，用于对返回数据中的 Plaintext 值进行加密。若为空，则不对 Plaintext 值加密。
        public let encryptionPublicKey: String?

        /// 非对称加密算法，配合 EncryptionPublicKey 对返回数据进行加密。目前支持：SM2（以 C1C3C2 格式返回密文），SM2_C1C3C2_ASN1 （以 C1C3C2 ASN1 格式返回密文），RSAES_PKCS1_V1_5，RSAES_OAEP_SHA_1，RSAES_OAEP_SHA_256。若为空，则默认为 SM2。
        public let encryptionAlgorithm: String?

        public init(keyId: String, keySpec: String? = nil, numberOfBytes: UInt64? = nil, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil) {
            self.keyId = keyId
            self.keySpec = keySpec
            self.numberOfBytes = numberOfBytes
            self.encryptionContext = encryptionContext
            self.encryptionPublicKey = encryptionPublicKey
            self.encryptionAlgorithm = encryptionAlgorithm
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case keySpec = "KeySpec"
            case numberOfBytes = "NumberOfBytes"
            case encryptionContext = "EncryptionContext"
            case encryptionPublicKey = "EncryptionPublicKey"
            case encryptionAlgorithm = "EncryptionAlgorithm"
        }
    }

    /// GenerateDataKey返回参数结构体
    public struct GenerateDataKeyResponse: TCResponseModel {
        /// CMK的全局唯一标识
        public let keyId: String

        /// 若调用时未提供 EncryptionPublicKey，该字段值为生成的数据密钥 DataKey 的 Base64 编码的明文，需进行 Base64 解码以获取 DataKey 明文。
        /// 若调用时提供了 EncryptionPublicKey，则该字段值为使用 EncryptionPublicKey 公钥进行非对称加密后的 Base64 编码的密文。需在 Base64 解码后，使用用户上传的公钥对应的私钥进行进一步解密，以获取 DataKey 明文。
        public let plaintext: String

        /// 数据密钥DataKey加密后的密文，用户需要自行保存该密文，KMS不托管用户的数据密钥。可以通过Decrypt接口从CiphertextBlob中获取数据密钥DataKey明文
        public let ciphertextBlob: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case plaintext = "Plaintext"
            case ciphertextBlob = "CiphertextBlob"
            case requestId = "RequestId"
        }
    }

    /// 生成数据密钥
    ///
    /// 本接口生成一个数据密钥，您可以用这个密钥进行本地数据的加密。
    @inlinable
    public func generateDataKey(_ input: GenerateDataKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateDataKeyResponse> {
        self.client.execute(action: "GenerateDataKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 生成数据密钥
    ///
    /// 本接口生成一个数据密钥，您可以用这个密钥进行本地数据的加密。
    @inlinable
    public func generateDataKey(_ input: GenerateDataKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateDataKeyResponse {
        try await self.client.execute(action: "GenerateDataKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 生成数据密钥
    ///
    /// 本接口生成一个数据密钥，您可以用这个密钥进行本地数据的加密。
    @inlinable
    public func generateDataKey(keyId: String, keySpec: String? = nil, numberOfBytes: UInt64? = nil, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GenerateDataKeyResponse> {
        self.generateDataKey(.init(keyId: keyId, keySpec: keySpec, numberOfBytes: numberOfBytes, encryptionContext: encryptionContext, encryptionPublicKey: encryptionPublicKey, encryptionAlgorithm: encryptionAlgorithm), region: region, logger: logger, on: eventLoop)
    }

    /// 生成数据密钥
    ///
    /// 本接口生成一个数据密钥，您可以用这个密钥进行本地数据的加密。
    @inlinable
    public func generateDataKey(keyId: String, keySpec: String? = nil, numberOfBytes: UInt64? = nil, encryptionContext: String? = nil, encryptionPublicKey: String? = nil, encryptionAlgorithm: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GenerateDataKeyResponse {
        try await self.generateDataKey(.init(keyId: keyId, keySpec: keySpec, numberOfBytes: numberOfBytes, encryptionContext: encryptionContext, encryptionPublicKey: encryptionPublicKey, encryptionAlgorithm: encryptionAlgorithm), region: region, logger: logger, on: eventLoop)
    }
}
