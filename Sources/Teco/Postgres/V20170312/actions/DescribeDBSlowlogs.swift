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

@_exported import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Postgres {
    /// DescribeDBSlowlogs请求参数结构体
    public struct DescribeDBSlowlogsRequest: TCRequestModel {
        /// 实例ID，形如postgres-lnp6j617
        public let dbInstanceId: String

        /// 查询起始时间，形如2018-06-10 17:06:38，起始时间不得小于7天以前
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间，形如2018-06-10 17:06:38
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 数据库名字
        public let databaseName: String?

        /// 按照何种指标排序，取值为sum_calls或者sum_cost_time。sum_calls-总调用次数；sum_cost_time-总的花费时间
        public let orderBy: String?

        /// 排序规则。desc-降序；asc-升序
        public let orderByType: String?

        /// 分页返回结果，每页最大返回数量，取值为1-100，默认20
        public let limit: Int64?

        /// 分页返回结果，返回结果的第几页，从0开始计数
        public let offset: Int64?

        public init(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.databaseName = databaseName
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case databaseName = "DatabaseName"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeDBSlowlogs返回参数结构体
    public struct DescribeDBSlowlogsResponse: TCResponseModel {
        /// 本次返回多少条数据
        public let totalCount: Int64

        /// 慢查询日志详情
        public let detail: SlowlogDetail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 获取慢查询日志 （废弃）
    ///
    /// 本接口（DescribeDBSlowlogs）用于获取慢查询日志。已于2021.09.01日正式废弃，后续此接口将不再返回任何数据，新接口为DescribeSlowQueryList，详细请查看：https://cloud.tencent.com/document/product/409/60540
    @inlinable
    public func describeDBSlowlogs(_ input: DescribeDBSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSlowlogsResponse> {
        self.client.execute(action: "DescribeDBSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志 （废弃）
    ///
    /// 本接口（DescribeDBSlowlogs）用于获取慢查询日志。已于2021.09.01日正式废弃，后续此接口将不再返回任何数据，新接口为DescribeSlowQueryList，详细请查看：https://cloud.tencent.com/document/product/409/60540
    @inlinable
    public func describeDBSlowlogs(_ input: DescribeDBSlowlogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowlogsResponse {
        try await self.client.execute(action: "DescribeDBSlowlogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢查询日志 （废弃）
    ///
    /// 本接口（DescribeDBSlowlogs）用于获取慢查询日志。已于2021.09.01日正式废弃，后续此接口将不再返回任何数据，新接口为DescribeSlowQueryList，详细请查看：https://cloud.tencent.com/document/product/409/60540
    @inlinable
    public func describeDBSlowlogs(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSlowlogsResponse> {
        self.describeDBSlowlogs(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢查询日志 （废弃）
    ///
    /// 本接口（DescribeDBSlowlogs）用于获取慢查询日志。已于2021.09.01日正式废弃，后续此接口将不再返回任何数据，新接口为DescribeSlowQueryList，详细请查看：https://cloud.tencent.com/document/product/409/60540
    @inlinable
    public func describeDBSlowlogs(dbInstanceId: String, startTime: Date, endTime: Date, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSlowlogsResponse {
        try await self.describeDBSlowlogs(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
