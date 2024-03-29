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
    /// EnableWhiteBoxKey请求参数结构体
    public struct EnableWhiteBoxKeyRequest: TCRequest {
        /// 白盒密钥的全局唯一标识符
        public let keyId: String

        public init(keyId: String) {
            self.keyId = keyId
        }

        enum CodingKeys: String, CodingKey {
            case keyId = "KeyId"
        }
    }

    /// EnableWhiteBoxKey返回参数结构体
    public struct EnableWhiteBoxKeyResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启用白盒密钥
    @inlinable @discardableResult
    public func enableWhiteBoxKey(_ input: EnableWhiteBoxKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableWhiteBoxKeyResponse> {
        self.client.execute(action: "EnableWhiteBoxKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启用白盒密钥
    @inlinable @discardableResult
    public func enableWhiteBoxKey(_ input: EnableWhiteBoxKeyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableWhiteBoxKeyResponse {
        try await self.client.execute(action: "EnableWhiteBoxKey", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启用白盒密钥
    @inlinable @discardableResult
    public func enableWhiteBoxKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableWhiteBoxKeyResponse> {
        self.enableWhiteBoxKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }

    /// 启用白盒密钥
    @inlinable @discardableResult
    public func enableWhiteBoxKey(keyId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableWhiteBoxKeyResponse {
        try await self.enableWhiteBoxKey(.init(keyId: keyId), region: region, logger: logger, on: eventLoop)
    }
}
