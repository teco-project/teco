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

extension Mps {
    /// DisableSchedule请求参数结构体
    public struct DisableScheduleRequest: TCRequestModel {
        /// 编排唯一表示。
        public let scheduleId: Int64

        public init(scheduleId: Int64) {
            self.scheduleId = scheduleId
        }

        enum CodingKeys: String, CodingKey {
            case scheduleId = "ScheduleId"
        }
    }

    /// DisableSchedule返回参数结构体
    public struct DisableScheduleResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 禁用编排
    ///
    /// 禁用自动化触发编排任务。
    @inlinable @discardableResult
    public func disableSchedule(_ input: DisableScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableScheduleResponse> {
        self.client.execute(action: "DisableSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 禁用编排
    ///
    /// 禁用自动化触发编排任务。
    @inlinable @discardableResult
    public func disableSchedule(_ input: DisableScheduleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableScheduleResponse {
        try await self.client.execute(action: "DisableSchedule", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 禁用编排
    ///
    /// 禁用自动化触发编排任务。
    @inlinable @discardableResult
    public func disableSchedule(scheduleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableScheduleResponse> {
        self.disableSchedule(.init(scheduleId: scheduleId), region: region, logger: logger, on: eventLoop)
    }

    /// 禁用编排
    ///
    /// 禁用自动化触发编排任务。
    @inlinable @discardableResult
    public func disableSchedule(scheduleId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableScheduleResponse {
        try await self.disableSchedule(.init(scheduleId: scheduleId), region: region, logger: logger, on: eventLoop)
    }
}
