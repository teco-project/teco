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
    /// DisableKey请求参数结构体
    public struct DisableKeyRequest: TCRequest {
        /// CMK唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// DisableKey返回参数结构体
    public struct DisableKeyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用主密钥
    ///
    /// 本接口用于禁用一个主密钥，处于禁用状态的Key无法用于加密、解密操作。
    @inlinable @discardableResult
    public func disableKey(_ input: DisableKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableKeyResponse> {
        self.client.execute(action: "DisableKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用主密钥
    ///
    /// 本接口用于禁用一个主密钥，处于禁用状态的Key无法用于加密、解密操作。
    @inlinable @discardableResult
    public func disableKey(_ input: DisableKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableKeyResponse {
        try await self.client.execute(action: "DisableKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用主密钥
    ///
    /// 本接口用于禁用一个主密钥，处于禁用状态的Key无法用于加密、解密操作。
    @inlinable @discardableResult
    public func disableKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableKeyResponse> {
        self.disableKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用主密钥
    ///
    /// 本接口用于禁用一个主密钥，处于禁用状态的Key无法用于加密、解密操作。
    @inlinable @discardableResult
    public func disableKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableKeyResponse {
        try await self.disableKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
