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
    /// StopLiveStreamMonitor请求参数结构体
    public struct StopLiveStreamMonitorRequest: TCRequestModel {
        /// 监播ID
        public let monitorId: String

        public init(monitorId: String) {
            self.monitorId = monitorId
        }

        enum CodingKeys: String, CodingKey {
            case monitorId = "MonitorId"
        }
    }

    /// StopLiveStreamMonitor返回参数结构体
    public struct StopLiveStreamMonitorResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止直播流监播任务
    ///
    /// 该接口用来停止直播流监播任务。
    @inlinable @discardableResult
    public func stopLiveStreamMonitor(_ input: StopLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLiveStreamMonitorResponse> {
        self.client.execute(action: "StopLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止直播流监播任务
    ///
    /// 该接口用来停止直播流监播任务。
    @inlinable @discardableResult
    public func stopLiveStreamMonitor(_ input: StopLiveStreamMonitorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLiveStreamMonitorResponse {
        try await self.client.execute(action: "StopLiveStreamMonitor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止直播流监播任务
    ///
    /// 该接口用来停止直播流监播任务。
    @inlinable @discardableResult
    public func stopLiveStreamMonitor(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopLiveStreamMonitorResponse> {
        self.stopLiveStreamMonitor(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止直播流监播任务
    ///
    /// 该接口用来停止直播流监播任务。
    @inlinable @discardableResult
    public func stopLiveStreamMonitor(monitorId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopLiveStreamMonitorResponse {
        try await self.stopLiveStreamMonitor(.init(monitorId: monitorId), region: region, logger: logger, on: eventLoop)
    }
}