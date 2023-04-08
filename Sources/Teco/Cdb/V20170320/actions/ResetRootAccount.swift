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

extension Cdb {
    /// ResetRootAccount请求参数结构体
    public struct ResetRootAccountRequest: TCRequestModel {
        /// 实例id
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// ResetRootAccount返回参数结构体
    public struct ResetRootAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重置ROOT账号
    ///
    /// 重置实例ROOT账号，初始化账号权限
    @inlinable @discardableResult
    public func resetRootAccount(_ input: ResetRootAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetRootAccountResponse> {
        self.client.execute(action: "ResetRootAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重置ROOT账号
    ///
    /// 重置实例ROOT账号，初始化账号权限
    @inlinable @discardableResult
    public func resetRootAccount(_ input: ResetRootAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetRootAccountResponse {
        try await self.client.execute(action: "ResetRootAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重置ROOT账号
    ///
    /// 重置实例ROOT账号，初始化账号权限
    @inlinable @discardableResult
    public func resetRootAccount(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResetRootAccountResponse> {
        self.resetRootAccount(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 重置ROOT账号
    ///
    /// 重置实例ROOT账号，初始化账号权限
    @inlinable @discardableResult
    public func resetRootAccount(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetRootAccountResponse {
        try await self.resetRootAccount(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
