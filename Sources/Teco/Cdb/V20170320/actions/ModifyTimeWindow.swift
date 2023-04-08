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

import TecoCore

extension Cdb {
    /// ModifyTimeWindow请求参数结构体
    public struct ModifyTimeWindowRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 修改后的可维护时间段，其中每一个时间段的格式形如：10:00-12:00；起止时间按半个小时对齐；最短半个小时，最长三个小时；最多设置两个时间段；起止时间范围为：[00:00, 24:00]。
        public let timeRanges: [String]

        /// 指定修改哪一天的客户时间段，可能的取值为：monday，tuesday，wednesday，thursday，friday，saturday，sunday。如果不指定该值或者为空，则默认一周七天都修改。
        public let weekdays: [String]?

        /// 数据延迟阈值，仅对主实例和灾备实例有效，不传默认修改为10
        public let maxDelayTime: UInt64?

        public init(instanceId: String, timeRanges: [String], weekdays: [String]? = nil, maxDelayTime: UInt64? = nil) {
            self.instanceId = instanceId
            self.timeRanges = timeRanges
            self.weekdays = weekdays
            self.maxDelayTime = maxDelayTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case timeRanges = "TimeRanges"
            case weekdays = "Weekdays"
            case maxDelayTime = "MaxDelayTime"
        }
    }

    /// ModifyTimeWindow返回参数结构体
    public struct ModifyTimeWindowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新维护时间窗口
    ///
    /// 本接口(ModifyTimeWindow)用于更新云数据库实例的维护时间窗口。
    @inlinable @discardableResult
    public func modifyTimeWindow(_ input: ModifyTimeWindowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTimeWindowResponse> {
        self.client.execute(action: "ModifyTimeWindow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新维护时间窗口
    ///
    /// 本接口(ModifyTimeWindow)用于更新云数据库实例的维护时间窗口。
    @inlinable @discardableResult
    public func modifyTimeWindow(_ input: ModifyTimeWindowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTimeWindowResponse {
        try await self.client.execute(action: "ModifyTimeWindow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新维护时间窗口
    ///
    /// 本接口(ModifyTimeWindow)用于更新云数据库实例的维护时间窗口。
    @inlinable @discardableResult
    public func modifyTimeWindow(instanceId: String, timeRanges: [String], weekdays: [String]? = nil, maxDelayTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTimeWindowResponse> {
        self.modifyTimeWindow(.init(instanceId: instanceId, timeRanges: timeRanges, weekdays: weekdays, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }

    /// 更新维护时间窗口
    ///
    /// 本接口(ModifyTimeWindow)用于更新云数据库实例的维护时间窗口。
    @inlinable @discardableResult
    public func modifyTimeWindow(instanceId: String, timeRanges: [String], weekdays: [String]? = nil, maxDelayTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTimeWindowResponse {
        try await self.modifyTimeWindow(.init(instanceId: instanceId, timeRanges: timeRanges, weekdays: weekdays, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }
}
