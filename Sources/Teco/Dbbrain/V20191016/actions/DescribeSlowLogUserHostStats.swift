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
import TecoCore
import TecoDateHelpers

extension Dbbrain {
    /// DescribeSlowLogUserHostStats请求参数结构体
    public struct DescribeSlowLogUserHostStatsRequest: TCRequestModel {
        /// 实例ID。
        public let instanceId: String

        /// 查询范围的开始时间，时间格式如：2019-09-10 12:13:14。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var startTime: Date

        /// 查询范围的结束时间，时间格式如：2019-09-10 12:13:14。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var endTime: Date

        /// 服务产品类型，支持值："mysql" - 云数据库 MySQL；"cynosdb" - 云数据库 TDSQL-C for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, startTime: Date, endTime: Date, product: String? = nil) {
            self.instanceId = instanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case product = "Product"
        }
    }

    /// DescribeSlowLogUserHostStats返回参数结构体
    public struct DescribeSlowLogUserHostStatsResponse: TCResponseModel {
        /// 来源地址数目。
        public let totalCount: Int64

        /// 各来源地址的慢日志占比详情列表。
        public let items: [SlowLogHost]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 获取慢日志来源地址统计分布图
    ///
    /// 获取慢日志来源地址统计分布图。
    @inlinable
    public func describeSlowLogUserHostStats(_ input: DescribeSlowLogUserHostStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogUserHostStatsResponse> {
        self.client.execute(action: "DescribeSlowLogUserHostStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢日志来源地址统计分布图
    ///
    /// 获取慢日志来源地址统计分布图。
    @inlinable
    public func describeSlowLogUserHostStats(_ input: DescribeSlowLogUserHostStatsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogUserHostStatsResponse {
        try await self.client.execute(action: "DescribeSlowLogUserHostStats", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢日志来源地址统计分布图
    ///
    /// 获取慢日志来源地址统计分布图。
    @inlinable
    public func describeSlowLogUserHostStats(instanceId: String, startTime: Date, endTime: Date, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowLogUserHostStatsResponse> {
        self.describeSlowLogUserHostStats(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢日志来源地址统计分布图
    ///
    /// 获取慢日志来源地址统计分布图。
    @inlinable
    public func describeSlowLogUserHostStats(instanceId: String, startTime: Date, endTime: Date, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowLogUserHostStatsResponse {
        try await self.describeSlowLogUserHostStats(.init(instanceId: instanceId, startTime: startTime, endTime: endTime, product: product), region: region, logger: logger, on: eventLoop)
    }
}
