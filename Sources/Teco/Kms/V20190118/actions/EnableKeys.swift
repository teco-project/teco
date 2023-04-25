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
    /// EnableKeys请求参数结构体
    public struct EnableKeysRequest: TCRequestModel {
        /// 需要批量启用的CMK Id 列表， CMK数量最大支持100
        public let keyIds: [String]

        public init(keyIds: [String]) {
            self.keyIds = keyIds
        }

        enum CodingKeys: String, CodingKey {
            case keyIds = "KeyIds"
        }
    }

    /// EnableKeys返回参数结构体
    public struct EnableKeysResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量启动主密钥
    ///
    /// 该接口用于批量启用CMK。
    @inlinable @discardableResult
    public func enableKeys(_ input: EnableKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableKeysResponse> {
        self.client.execute(action: "EnableKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量启动主密钥
    ///
    /// 该接口用于批量启用CMK。
    @inlinable @discardableResult
    public func enableKeys(_ input: EnableKeysRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableKeysResponse {
        try await self.client.execute(action: "EnableKeys", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量启动主密钥
    ///
    /// 该接口用于批量启用CMK。
    @inlinable @discardableResult
    public func enableKeys(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EnableKeysResponse> {
        self.enableKeys(.init(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量启动主密钥
    ///
    /// 该接口用于批量启用CMK。
    @inlinable @discardableResult
    public func enableKeys(keyIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EnableKeysResponse {
        try await self.enableKeys(.init(keyIds: keyIds), region: region, logger: logger, on: eventLoop)
    }
}
