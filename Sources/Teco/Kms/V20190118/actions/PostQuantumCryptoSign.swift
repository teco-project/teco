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
    /// PostQuantumCryptoSign请求参数结构体
    public struct PostQuantumCryptoSignRequest: TCRequest {
        /// Base64 编码的消息原文。消息原文的长度（Base64编码前的长度）不超过4096字节。
        public let message: String

        /// 密钥的唯一标识
        public let keyId: String

        public init(message: String, keyId: String) {
            self.message = message
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case message = "Message"
            case keyId = "KeyId"
        }
    }

    /// PostQuantumCryptoSign返回参数结构体
    public struct PostQuantumCryptoSignResponse: TCResponse {
        /// 签名值，Base64编码。可使用 PostQuantumCryptoVerify接口对签名值进行验证。
        public let signature: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case signature = "Signature"
            case requestId = "RequestId"
        }
    }

    /// 后量子密码算法签名
    ///
    /// 使用后量子密码算法签名验签密钥进行签名。
    @inlinable
    public func postQuantumCryptoSign(_ input: PostQuantumCryptoSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PostQuantumCryptoSignResponse> {
        self.client.execute(action: "PostQuantumCryptoSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 后量子密码算法签名
    ///
    /// 使用后量子密码算法签名验签密钥进行签名。
    @inlinable
    public func postQuantumCryptoSign(_ input: PostQuantumCryptoSignRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PostQuantumCryptoSignResponse {
        try await self.client.execute(action: "PostQuantumCryptoSign", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 后量子密码算法签名
    ///
    /// 使用后量子密码算法签名验签密钥进行签名。
    @inlinable
    public func postQuantumCryptoSign(message: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<PostQuantumCryptoSignResponse> {
        self.postQuantumCryptoSign(.init(message: message, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 后量子密码算法签名
    ///
    /// 使用后量子密码算法签名验签密钥进行签名。
    @inlinable
    public func postQuantumCryptoSign(message: String, keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PostQuantumCryptoSignResponse {
        try await self.postQuantumCryptoSign(.init(message: message, keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
