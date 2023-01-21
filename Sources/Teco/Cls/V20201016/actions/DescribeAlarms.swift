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

extension Cls {
    /// DescribeAlarms请求参数结构体
    public struct DescribeAlarmsRequest: TCRequestModel {
        /// <br><li> name
        /// 按照【告警策略名称】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <br><li> alarmId
        /// 按照【告警策略ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <br><li> topicId
        /// 按照【监控对象的日志主题ID】进行过滤。
        /// 类型：String
        /// 必选：否
        /// <br><li> enable
        /// 按照【启用状态】进行过滤。
        /// 类型：String
        /// 备注：enable参数值范围: 1, t, T, TRUE, true, True, 0, f, F, FALSE, false, False。 其它值将返回参数错误信息.
        /// 必选：否
        /// 每次请求的Filters的上限为10，Filter.Values的上限为5。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeAlarms返回参数结构体
    public struct DescribeAlarmsResponse: TCResponseModel {
        /// 告警策略列表。
        public let alarms: [AlarmInfo]

        /// 符合查询条件的告警策略数目。
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarms = "Alarms"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmsResponse> {
        self.client.execute(action: "DescribeAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(_ input: DescribeAlarmsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmsResponse {
        try await self.client.execute(action: "DescribeAlarms", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAlarmsResponse> {
        self.describeAlarms(DescribeAlarmsRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取告警策略列表
    ///
    /// 本接口用于获取告警策略列表。
    @inlinable
    public func describeAlarms(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmsResponse {
        try await self.describeAlarms(DescribeAlarmsRequest(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
