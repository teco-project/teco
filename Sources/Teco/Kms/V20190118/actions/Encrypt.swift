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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Kms {
    /// Encrypt请求参数结构体
    public struct EncryptRequest: TCRequestModel {
        /// 调用CreateKey生成的CMK全局唯一标识符
        public let keyId: String

        /// 被加密的明文数据，该字段必须使用base64编码，原文最大长度支持4K
        public let plaintext: String

        /// key/value对的json字符串，如果指定了该参数，则在调用Decrypt API时需要提供同样的参数，最大支持1024个字符
        public let encryptionContext: String?

        public init(keyId: String, plaintext: String, encryptionContext: String? = nil) {
            self.keyId = keyId
            self.plaintext = plaintext
            self.encryptionContext = encryptionContext
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
            case plaintext = "Plaintext"
            case encryptionContext = "EncryptionContext"
        }
    }

    /// Encrypt返回参数结构体
    public struct EncryptResponse: TCResponseModel {
        /// 加密后的密文，base64编码。注意：本字段中打包了密文和密钥的相关信息，不是对明文的直接加密结果，只有将该字段作为Decrypt接口的输入参数，才可以解密出原文。
        public let ciphertextBlob: String

        /// 加密使用的CMK的全局唯一标识
        public let keyId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ciphertextBlob = "CiphertextBlob"
            case keyId = "KeyId"
            case requestId = "RequestId"
        }
    }

    /// 加密
    ///
    /// 本接口用于加密最多为4KB任意数据，可用于加密数据库密码，RSA Key，或其它较小的敏感信息。对于应用的数据加密，使用GenerateDataKey生成的DataKey进行本地数据的加解密操作
    @inlinable
    public func encrypt(_ input: EncryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptResponse> {
        self.client.execute(action: "Encrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 加密
    ///
    /// 本接口用于加密最多为4KB任意数据，可用于加密数据库密码，RSA Key，或其它较小的敏感信息。对于应用的数据加密，使用GenerateDataKey生成的DataKey进行本地数据的加解密操作
    @inlinable
    public func encrypt(_ input: EncryptRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptResponse {
        try await self.client.execute(action: "Encrypt", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 加密
    ///
    /// 本接口用于加密最多为4KB任意数据，可用于加密数据库密码，RSA Key，或其它较小的敏感信息。对于应用的数据加密，使用GenerateDataKey生成的DataKey进行本地数据的加解密操作
    @inlinable
    public func encrypt(keyId: String, plaintext: String, encryptionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EncryptResponse> {
        self.encrypt(.init(keyId: keyId, plaintext: plaintext, encryptionContext: encryptionContext), region: region, logger: logger, on: eventLoop)
    }

    /// 加密
    ///
    /// 本接口用于加密最多为4KB任意数据，可用于加密数据库密码，RSA Key，或其它较小的敏感信息。对于应用的数据加密，使用GenerateDataKey生成的DataKey进行本地数据的加解密操作
    @inlinable
    public func encrypt(keyId: String, plaintext: String, encryptionContext: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EncryptResponse {
        try await self.encrypt(.init(keyId: keyId, plaintext: plaintext, encryptionContext: encryptionContext), region: region, logger: logger, on: eventLoop)
    }
}
