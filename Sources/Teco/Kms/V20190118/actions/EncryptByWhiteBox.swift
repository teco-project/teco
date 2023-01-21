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
    /// EncryptByWhiteBox请求参数结构体
    public struct EncryptByWhiteBoxRequest: TCRequestModel {
        /// 白盒密钥的全局唯一标识符
        public let keyId: String

        /// 待加密的文本， base64编码，文本的原始长度最大不超过4KB
        public let plainText: String

        /// 初始化向量，大小为 16 Bytes，加密算法会使用到, base64编码；如果不传，则由后端服务随机生成。用户需要自行保存该值，作为解密的参数。
        public let initializationVector: String?

        public init(keyId: String, plainText: String, initializationVector: String? = nil) {
            self.keyId = keyId
            self.plainText = plainText
            self.initializationVector = initializationVector
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case plainText = "PlainText"
            case initializationVector = "InitializationVector"
        }
    }

    /// EncryptByWhiteBox返回参数结构体
    public struct EncryptByWhiteBoxResponse: TCResponseModel {
        /// 初始化向量，加密算法会使用到, base64编码。如果由调用方在入参中传入，则原样返回。如果调用方没有传入，则后端服务随机生成，并返回
        public let initializationVector: String

        /// 加密后的密文，base64编码
        public let cipherText: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case initializationVector = "InitializationVector"
            case cipherText = "CipherText"
            case requestId = "RequestId"
        }
    }

    /// 使用白盒密钥进行加密
    @inlinable
    public func encryptByWhiteBox(_ input: EncryptByWhiteBoxRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptByWhiteBoxResponse> {
        self.client.execute(action: "EncryptByWhiteBox", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 使用白盒密钥进行加密
    @inlinable
    public func encryptByWhiteBox(_ input: EncryptByWhiteBoxRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptByWhiteBoxResponse {
        try await self.client.execute(action: "EncryptByWhiteBox", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 使用白盒密钥进行加密
    @inlinable
    public func encryptByWhiteBox(keyId: String, plainText: String, initializationVector: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptByWhiteBoxResponse> {
        self.encryptByWhiteBox(EncryptByWhiteBoxRequest(keyId: keyId, plainText: plainText, initializationVector: initializationVector), region: region, logger: logger, on: eventLoop)
    }

    /// 使用白盒密钥进行加密
    @inlinable
    public func encryptByWhiteBox(keyId: String, plainText: String, initializationVector: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptByWhiteBoxResponse {
        try await self.encryptByWhiteBox(EncryptByWhiteBoxRequest(keyId: keyId, plainText: plainText, initializationVector: initializationVector), region: region, logger: logger, on: eventLoop)
    }
}
