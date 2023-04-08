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
    /// VerifyByAsymmetricKey请求参数结构体
    public struct VerifyByAsymmetricKeyRequest: TCRequestModel {
        /// 密钥的唯一标识
        public let keyId: String

        /// 签名值，通过调用KMS签名接口生成
        public let signatureValue: String

        /// 消息原文或消息摘要。如果提供的是消息原文，则消息原文的长度（Base64编码前的长度）不超过4096字节。如果提供的是消息摘要，则消息摘要长度（Base64编码前的长度）必须等于32字节
        public let message: String

        /// 签名算法，支持的算法：SM2DSA，ECC_P256_R1，RSA_PSS_SHA_256，RSA_PKCS1_SHA_256 等。更多支持的算法可通过 ListAlgorithms 接口进行查询。
        public let algorithm: String

        /// 消息类型：RAW，DIGEST，如果不传，默认为RAW，表示消息原文。
        public let messageType: String?

        public init(keyId: String, signatureValue: String, message: String, algorithm: String, messageType: String? = nil) {
            self.keyId = keyId
            self.signatureValue = signatureValue
            self.message = message
            self.algorithm = algorithm
            self.messageType = messageType
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case signatureValue = "SignatureValue"
            case message = "Message"
            case algorithm = "Algorithm"
            case messageType = "MessageType"
        }
    }

    /// VerifyByAsymmetricKey返回参数结构体
    public struct VerifyByAsymmetricKeyResponse: TCResponseModel {
        /// 签名是否有效。true：签名有效，false：签名无效。
        public let signatureValid: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signatureValid = "SignatureValid"
            case requestId = "RequestId"
        }
    }

    /// 验证签名
    ///
    /// 使用非对称密钥验签
    @inlinable
    public func verifyByAsymmetricKey(_ input: VerifyByAsymmetricKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyByAsymmetricKeyResponse> {
        self.client.execute(action: "VerifyByAsymmetricKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 验证签名
    ///
    /// 使用非对称密钥验签
    @inlinable
    public func verifyByAsymmetricKey(_ input: VerifyByAsymmetricKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyByAsymmetricKeyResponse {
        try await self.client.execute(action: "VerifyByAsymmetricKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 验证签名
    ///
    /// 使用非对称密钥验签
    @inlinable
    public func verifyByAsymmetricKey(keyId: String, signatureValue: String, message: String, algorithm: String, messageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<VerifyByAsymmetricKeyResponse> {
        self.verifyByAsymmetricKey(.init(keyId: keyId, signatureValue: signatureValue, message: message, algorithm: algorithm, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }

    /// 验证签名
    ///
    /// 使用非对称密钥验签
    @inlinable
    public func verifyByAsymmetricKey(keyId: String, signatureValue: String, message: String, algorithm: String, messageType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> VerifyByAsymmetricKeyResponse {
        try await self.verifyByAsymmetricKey(.init(keyId: keyId, signatureValue: signatureValue, message: message, algorithm: algorithm, messageType: messageType), region: region, logger: logger, on: eventLoop)
    }
}
