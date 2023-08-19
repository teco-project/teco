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

extension Live {
    /// DescribeLiveStreamMonitor请求参数结构体
    public struct DescribeLiveStreamMonitorRequest: TCRequest {
        /// 监播任务ID。
        public let monitorId: String

        public init(monitorId: String) {
            self.monitorId = monitorId
        }

        enum CodingKeys: String, CodingKey {
            case monitorId = "MonitorId"
        }
    }

    /// DescribeLiveStreamMonitor返回参数结构体
    public struct DescribeLiveStreamMonitorResponse: TCResponse {
        /// 直播监播任务相关信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let liveStreamMonitor: LiveStreamMonitorInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case liveStreamMonitor = "LiveStreamMonitor"
            case requestId = "RequestId"
        }
    }

    /// 查询直播流监播任务
    ///
    /// 该接口用来查询某个特定监播任务的配置。
    @inlinable
    public func describeLiveStreamMonitor(_ input: DescribeLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamMonitorResponse> {
        self.client.execute(action: "DescribeLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询直播流监播任务
    ///
    /// 该接口用来查询某个特定监播任务的配置。
    @inlinable
    public func describeLiveStreamMonitor(_ input: DescribeLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamMonitorResponse {
        try await self.client.execute(action: "DescribeLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询直播流监播任务
    ///
    /// 该接口用来查询某个特定监播任务的配置。
    @inlinable
    public func describeLiveStreamMonitor(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveStreamMonitorResponse> {
        self.describeLiveStreamMonitor(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询直播流监播任务
    ///
    /// 该接口用来查询某个特定监播任务的配置。
    @inlinable
    public func describeLiveStreamMonitor(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveStreamMonitorResponse {
        try await self.describeLiveStreamMonitor(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }
}
