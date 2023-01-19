//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// SignByAsymmetricKey请求参数结构体
    public struct SignByAsymmetricKeyRequest: TCRequestModel {
        /// 签名算法，支持的算法：SM2DSA，ECC_P256_R1，RSA_PSS_SHA_256，RSA_PKCS1_SHA_256 等。更多支持的算法可通过 ListAlgorithms 接口进行查询。
        public let algorithm: String

        /// 消息原文或消息摘要。如果提供的是消息原文，则消息原文的长度（Base64编码前的长度）不超过4096字节。如果提供的是消息摘要，消息摘要长度（Base64编码前的长度）必须等于32字节
        public let message: String

        /// 密钥的唯一标识
        public let keyId: String

        /// 消息类型：RAW，DIGEST，如果不传，默认为RAW，表示消息原文。
        public let messageType: String?

        public init(algorithm: String, message: String, keyId: String, messageType: String? = nil) {
            self.algorithm = algorithm
            self.message = message
            self.keyId = keyId
            self.messageType = messageType
        }

        enum CodingKeys: String, CodingKey {
            case algorithm = "Algorithm"
            case message = "Message"
            case keyId = "KeyId"
            case messageType = "MessageType"
        }
    }

    /// SignByAsymmetricKey返回参数结构体
    public struct SignByAsymmetricKeyResponse: TCResponseModel {
        /// 签名，Base64编码
        public let signature: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signature = "Signature"
            case requestId = "RequestId"
        }
    }

    /// 签名
    ///
    /// 非对称密钥签名。
    /// 注意：只有 KeyUsage 为 ASYMMETRIC_SIGN_VERIFY_SM2、ASYMMETRIC_SIGN_VERIFY_ECC 或其他支持的 ASYMMETRIC_SIGN_VERIFY_${ALGORITHM} 的密钥才可以使用签名功能。
    @inlinable
    public func signByAsymmetricKey(_ input: SignByAsymmetricKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignByAsymmetricKeyResponse> {
        self.client.execute(action: "SignByAsymmetricKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 签名
    ///
    /// 非对称密钥签名。
    /// 注意：只有 KeyUsage 为 ASYMMETRIC_SIGN_VERIFY_SM2、ASYMMETRIC_SIGN_VERIFY_ECC 或其他支持的 ASYMMETRIC_SIGN_VERIFY_${ALGORITHM} 的密钥才可以使用签名功能。
    @inlinable
    public func signByAsymmetricKey(_ input: SignByAsymmetricKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignByAsymmetricKeyResponse {
        try await self.client.execute(action: "SignByAsymmetricKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 签名
    ///
    /// 非对称密钥签名。
    /// 注意：只有 KeyUsage 为 ASYMMETRIC_SIGN_VERIFY_SM2、ASYMMETRIC_SIGN_VERIFY_ECC 或其他支持的 ASYMMETRIC_SIGN_VERIFY_${ALGORITHM} 的密钥才可以使用签名功能。
    @inlinable
    public func signByAsymmetricKey(algorithm: String, message: String, keyId: String, messageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SignByAsymmetricKeyResponse> {
        self.signByAsymmetricKey(SignByAsymmetricKeyRequest(algorithm: algorithm, message: message, keyId: keyId, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }

    /// 签名
    ///
    /// 非对称密钥签名。
    /// 注意：只有 KeyUsage 为 ASYMMETRIC_SIGN_VERIFY_SM2、ASYMMETRIC_SIGN_VERIFY_ECC 或其他支持的 ASYMMETRIC_SIGN_VERIFY_${ALGORITHM} 的密钥才可以使用签名功能。
    @inlinable
    public func signByAsymmetricKey(algorithm: String, message: String, keyId: String, messageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SignByAsymmetricKeyResponse {
        try await self.signByAsymmetricKey(SignByAsymmetricKeyRequest(algorithm: algorithm, message: message, keyId: keyId, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }
}
