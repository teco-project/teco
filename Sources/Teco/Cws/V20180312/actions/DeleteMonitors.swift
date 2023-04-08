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

extension Cws {
    /// DeleteMonitors请求参数结构体
    public struct DeleteMonitorsRequest: TCRequestModel {
        /// 监控任务ID列表
        public let monitorIds: [UInt64]

        public init(monitorIds: [UInt64]) {
            self.monitorIds = monitorIds
        }

        enum CodingKeys: String, CodingKey {
            case monitorIds = "MonitorIds"
        }
    }

    /// DeleteMonitors返回参数结构体
    public struct DeleteMonitorsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除监控任务
    ///
    /// 本接口 (DeleteMonitors) 用于删除用户监控任务。
    @inlinable @discardableResult
    public func deleteMonitors(_ input: DeleteMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMonitorsResponse> {
        self.client.execute(action: "DeleteMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除监控任务
    ///
    /// 本接口 (DeleteMonitors) 用于删除用户监控任务。
    @inlinable @discardableResult
    public func deleteMonitors(_ input: DeleteMonitorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMonitorsResponse {
        try await self.client.execute(action: "DeleteMonitors", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除监控任务
    ///
    /// 本接口 (DeleteMonitors) 用于删除用户监控任务。
    @inlinable @discardableResult
    public func deleteMonitors(monitorIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMonitorsResponse> {
        self.deleteMonitors(.init(monitorIds: monitorIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除监控任务
    ///
    /// 本接口 (DeleteMonitors) 用于删除用户监控任务。
    @inlinable @discardableResult
    public func deleteMonitors(monitorIds: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMonitorsResponse {
        try await self.deleteMonitors(.init(monitorIds: monitorIds), region: region, logger: logger, on: eventLoop)
    }
}
