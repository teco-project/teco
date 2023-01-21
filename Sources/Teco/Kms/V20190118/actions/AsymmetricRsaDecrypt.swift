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
    /// AsymmetricRsaDecrypt请求参数结构体
    public struct AsymmetricRsaDecryptRequest: TCRequestModel {
        /// CMK的唯一标识
        public let keyId: String

        /// 使用PublicKey加密的密文，Base64编码
        public let ciphertext: String

        /// 在使用公钥加密时对应的算法：当前支持RSAES_PKCS1_V1_5、RSAES_OAEP_SHA_1、RSAES_OAEP_SHA_256
        public let algorithm: String

        public init(keyId: String, ciphertext: String, algorithm: String) {
            self.keyId = keyId
            self.ciphertext = ciphertext
            self.algorithm = algorithm
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case ciphertext = "Ciphertext"
            case algorithm = "Algorithm"
        }
    }

    /// AsymmetricRsaDecrypt返回参数结构体
    public struct AsymmetricRsaDecryptResponse: TCResponseModel {
        /// CMK的唯一标识
        public let keyId: String

        /// 解密后的明文，base64编码
        public let plaintext: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case plaintext = "Plaintext"
            case requestId = "RequestId"
        }
    }

    /// 非对称密钥RSA解密
    ///
    /// 使用指定的RSA非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。
    @inlinable
    public func asymmetricRsaDecrypt(_ input: AsymmetricRsaDecryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AsymmetricRsaDecryptResponse> {
        self.client.execute(action: "AsymmetricRsaDecrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 非对称密钥RSA解密
    ///
    /// 使用指定的RSA非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。
    @inlinable
    public func asymmetricRsaDecrypt(_ input: AsymmetricRsaDecryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AsymmetricRsaDecryptResponse {
        try await self.client.execute(action: "AsymmetricRsaDecrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 非对称密钥RSA解密
    ///
    /// 使用指定的RSA非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。
    @inlinable
    public func asymmetricRsaDecrypt(keyId: String, ciphertext: String, algorithm: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AsymmetricRsaDecryptResponse> {
        self.asymmetricRsaDecrypt(AsymmetricRsaDecryptRequest(keyId: keyId, ciphertext: ciphertext, algorithm: algorithm), region: region, logger: logger, on: eventLoop)
    }

    /// 非对称密钥RSA解密
    ///
    /// 使用指定的RSA非对称密钥的私钥进行数据解密，密文必须是使用对应公钥加密的。处于Enabled 状态的非对称密钥才能进行解密操作。
    @inlinable
    public func asymmetricRsaDecrypt(keyId: String, ciphertext: String, algorithm: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AsymmetricRsaDecryptResponse {
        try await self.asymmetricRsaDecrypt(AsymmetricRsaDecryptRequest(keyId: keyId, ciphertext: ciphertext, algorithm: algorithm), region: region, logger: logger, on: eventLoop)
    }
}
