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
    /// AddTimeWindow请求参数结构体
    public struct AddTimeWindowRequest: TCRequestModel {
        /// 实例ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv，与云数据库控制台页面中显示的实例 ID 相同。
        public let instanceId: String

        /// 星期一的可维护时间段，其中每一个时间段的格式形如：10:00-12:00；起始时间按半个小时对齐；最短半个小时，最长三个小时；可设置多个时间段。 一周中应至少设置一天的时间窗。下同。
        public let monday: [String]?

        /// 星期二的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let tuesday: [String]?

        /// 星期三的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let wednesday: [String]?

        /// 星期四的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let thursday: [String]?

        /// 星期五的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let friday: [String]?

        /// 星期六的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let saturday: [String]?

        /// 星期日的可维护时间窗口。 一周中应至少设置一天的时间窗。
        public let sunday: [String]?

        /// 最大延迟阈值，仅对主实例和灾备实例有效
        public let maxDelayTime: UInt64?

        public init(instanceId: String, monday: [String]? = nil, tuesday: [String]? = nil, wednesday: [String]? = nil, thursday: [String]? = nil, friday: [String]? = nil, saturday: [String]? = nil, sunday: [String]? = nil, maxDelayTime: UInt64? = nil) {
            self.instanceId = instanceId
            self.monday = monday
            self.tuesday = tuesday
            self.wednesday = wednesday
            self.thursday = thursday
            self.friday = friday
            self.saturday = saturday
            self.sunday = sunday
            self.maxDelayTime = maxDelayTime
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case monday = "Monday"
            case tuesday = "Tuesday"
            case wednesday = "Wednesday"
            case thursday = "Thursday"
            case friday = "Friday"
            case saturday = "Saturday"
            case sunday = "Sunday"
            case maxDelayTime = "MaxDelayTime"
        }
    }

    /// AddTimeWindow返回参数结构体
    public struct AddTimeWindowResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加维护时间窗口
    ///
    /// 本接口(AddTimeWindow)用于添加云数据库实例的维护时间窗口，以指定实例在哪些时间段可以自动执行切换访问操作。
    @inlinable @discardableResult
    public func addTimeWindow(_ input: AddTimeWindowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTimeWindowResponse> {
        self.client.execute(action: "AddTimeWindow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加维护时间窗口
    ///
    /// 本接口(AddTimeWindow)用于添加云数据库实例的维护时间窗口，以指定实例在哪些时间段可以自动执行切换访问操作。
    @inlinable @discardableResult
    public func addTimeWindow(_ input: AddTimeWindowRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTimeWindowResponse {
        try await self.client.execute(action: "AddTimeWindow", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加维护时间窗口
    ///
    /// 本接口(AddTimeWindow)用于添加云数据库实例的维护时间窗口，以指定实例在哪些时间段可以自动执行切换访问操作。
    @inlinable @discardableResult
    public func addTimeWindow(instanceId: String, monday: [String]? = nil, tuesday: [String]? = nil, wednesday: [String]? = nil, thursday: [String]? = nil, friday: [String]? = nil, saturday: [String]? = nil, sunday: [String]? = nil, maxDelayTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTimeWindowResponse> {
        self.addTimeWindow(.init(instanceId: instanceId, monday: monday, tuesday: tuesday, wednesday: wednesday, thursday: thursday, friday: friday, saturday: saturday, sunday: sunday, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }

    /// 添加维护时间窗口
    ///
    /// 本接口(AddTimeWindow)用于添加云数据库实例的维护时间窗口，以指定实例在哪些时间段可以自动执行切换访问操作。
    @inlinable @discardableResult
    public func addTimeWindow(instanceId: String, monday: [String]? = nil, tuesday: [String]? = nil, wednesday: [String]? = nil, thursday: [String]? = nil, friday: [String]? = nil, saturday: [String]? = nil, sunday: [String]? = nil, maxDelayTime: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTimeWindowResponse {
        try await self.addTimeWindow(.init(instanceId: instanceId, monday: monday, tuesday: tuesday, wednesday: wednesday, thursday: thursday, friday: friday, saturday: saturday, sunday: sunday, maxDelayTime: maxDelayTime), region: region, logger: logger, on: eventLoop)
    }
}
