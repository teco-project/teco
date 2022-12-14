//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Wedata {
    /// DescribeAlarmEvents请求参数结构体
    public struct DescribeAlarmEventsRequest: TCRequestModel {
        /// 过滤条件(key可以是：AlarmLevel,AlarmIndicator,KeyWord)
        public let filters: [Filter]

        /// 排序字段（AlarmTime）
        public let orderFields: [OrderField]

        /// 类型(201表示实时，202表示离线)
        public let taskType: UInt64

        /// 开始时间
        public let startTime: String

        /// 结束时间
        public let endTime: String

        /// 项目ID
        public let projectId: String

        /// 当前页
        public let pageNumber: UInt64

        /// 每页记录数
        public let pageSize: UInt64

        public init(filters: [Filter], orderFields: [OrderField], taskType: UInt64, startTime: String, endTime: String, projectId: String, pageNumber: UInt64, pageSize: UInt64) {
            self.filters = filters
            self.orderFields = orderFields
            self.taskType = taskType
            self.startTime = startTime
            self.endTime = endTime
            self.projectId = projectId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case orderFields = "OrderFields"
            case taskType = "TaskType"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case projectId = "ProjectId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }
    }

    /// DescribeAlarmEvents返回参数结构体
    public struct DescribeAlarmEventsResponse: TCResponseModel {
        /// 告警事件列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarmEventInfoList: [AlarmEventInfo]?

        /// 总记录数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmEventInfoList = "AlarmEventInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 告警事件列表
    @inlinable
    public func describeAlarmEvents(_ input: DescribeAlarmEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlarmEventsResponse > {
        self.client.execute(action: "DescribeAlarmEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 告警事件列表
    @inlinable
    public func describeAlarmEvents(_ input: DescribeAlarmEventsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmEventsResponse {
        try await self.client.execute(action: "DescribeAlarmEvents", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 告警事件列表
    @inlinable
    public func describeAlarmEvents(filters: [Filter], orderFields: [OrderField], taskType: UInt64, startTime: String, endTime: String, projectId: String, pageNumber: UInt64, pageSize: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlarmEventsResponse > {
        self.describeAlarmEvents(DescribeAlarmEventsRequest(filters: filters, orderFields: orderFields, taskType: taskType, startTime: startTime, endTime: endTime, projectId: projectId, pageNumber: pageNumber, pageSize: pageSize), logger: logger, on: eventLoop)
    }

    /// 告警事件列表
    @inlinable
    public func describeAlarmEvents(filters: [Filter], orderFields: [OrderField], taskType: UInt64, startTime: String, endTime: String, projectId: String, pageNumber: UInt64, pageSize: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmEventsResponse {
        try await self.describeAlarmEvents(DescribeAlarmEventsRequest(filters: filters, orderFields: orderFields, taskType: taskType, startTime: startTime, endTime: endTime, projectId: projectId, pageNumber: pageNumber, pageSize: pageSize), logger: logger, on: eventLoop)
    }
}
