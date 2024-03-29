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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension As {
    /// ModifyScheduledAction请求参数结构体
    public struct ModifyScheduledActionRequest: TCRequest {
        /// 待修改的定时任务ID
        public let scheduledActionId: String

        /// 定时任务名称。名称仅支持中文、英文、数字、下划线、分隔符"-"、小数点，最大长度不能超60个字节。同一伸缩组下必须唯一。
        public let scheduledActionName: String?

        /// 当定时任务触发时，设置的伸缩组最大实例数。
        public let maxSize: UInt64?

        /// 当定时任务触发时，设置的伸缩组最小实例数。
        public let minSize: UInt64?

        /// 当定时任务触发时，设置的伸缩组期望实例数。
        public let desiredCapacity: UInt64?

        /// 定时任务的首次触发时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$startTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date?

        /// 定时任务的结束时间，取值为`北京时间`（UTC+8），按照`ISO8601`标准，格式：`YYYY-MM-DDThh:mm:ss+08:00`。
        ///
        /// 此参数与`Recurrence`需要同时指定，到达结束时间之后，定时任务将不再生效。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date?

        /// 定时任务的重复方式。为标准 Cron 格式
        ///
        /// 此参数与`EndTime`需要同时指定。
        public let recurrence: String?

        public init(scheduledActionId: String, scheduledActionName: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredCapacity: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, recurrence: String? = nil) {
            self.scheduledActionId = scheduledActionId
            self.scheduledActionName = scheduledActionName
            self.maxSize = maxSize
            self.minSize = minSize
            self.desiredCapacity = desiredCapacity
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.recurrence = recurrence
        }

        enum CodingKeys: String, CodingKey {
            case scheduledActionId = "ScheduledActionId"
            case scheduledActionName = "ScheduledActionName"
            case maxSize = "MaxSize"
            case minSize = "MinSize"
            case desiredCapacity = "DesiredCapacity"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case recurrence = "Recurrence"
        }
    }

    /// ModifyScheduledAction返回参数结构体
    public struct ModifyScheduledActionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改定时任务
    ///
    /// 本接口（ModifyScheduledAction）用于修改定时任务。
    @inlinable @discardableResult
    public func modifyScheduledAction(_ input: ModifyScheduledActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScheduledActionResponse> {
        self.client.execute(action: "ModifyScheduledAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改定时任务
    ///
    /// 本接口（ModifyScheduledAction）用于修改定时任务。
    @inlinable @discardableResult
    public func modifyScheduledAction(_ input: ModifyScheduledActionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScheduledActionResponse {
        try await self.client.execute(action: "ModifyScheduledAction", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改定时任务
    ///
    /// 本接口（ModifyScheduledAction）用于修改定时任务。
    @inlinable @discardableResult
    public func modifyScheduledAction(scheduledActionId: String, scheduledActionName: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredCapacity: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, recurrence: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyScheduledActionResponse> {
        self.modifyScheduledAction(.init(scheduledActionId: scheduledActionId, scheduledActionName: scheduledActionName, maxSize: maxSize, minSize: minSize, desiredCapacity: desiredCapacity, startTime: startTime, endTime: endTime, recurrence: recurrence), region: region, logger: logger, on: eventLoop)
    }

    /// 修改定时任务
    ///
    /// 本接口（ModifyScheduledAction）用于修改定时任务。
    @inlinable @discardableResult
    public func modifyScheduledAction(scheduledActionId: String, scheduledActionName: String? = nil, maxSize: UInt64? = nil, minSize: UInt64? = nil, desiredCapacity: UInt64? = nil, startTime: Date? = nil, endTime: Date? = nil, recurrence: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyScheduledActionResponse {
        try await self.modifyScheduledAction(.init(scheduledActionId: scheduledActionId, scheduledActionName: scheduledActionName, maxSize: maxSize, minSize: minSize, desiredCapacity: desiredCapacity, startTime: startTime, endTime: endTime, recurrence: recurrence), region: region, logger: logger, on: eventLoop)
    }
}
