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

extension Postgres {
    /// DescribeSlowQueryList请求参数结构体
    public struct DescribeSlowQueryListRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 查询起始时间戳，格式 “YYYY-MM-DD HH:mm:ss” ，日志保留时间默认为7天，起始时间不能超出保留时间范围。
        public let startTime: String

        /// 查询结束时间戳，格式 “YYYY-MM-DD HH:mm:ss”。
        public let endTime: String

        /// 根据数据库名进行筛选，可以为空。
        public let databaseName: String?

        /// 排序类型。升序asc、降序desc。默认为desc。
        public let orderByType: String?

        /// 排序维度。 可选参数，取值范围[SessionStartTime,Duration]，默认为SessionStartTime。
        public let orderBy: String?

        /// 分页大小。取值范围[1,100],默认为20。
        public let limit: Int64?

        /// 分页偏移。取值范围[0,INF)，默认为0。
        public let offset: Int64?

        public init(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderByType: String? = nil, orderBy: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.startTime = startTime
            self.endTime = endTime
            self.databaseName = databaseName
            self.orderByType = orderByType
            self.orderBy = orderBy
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case databaseName = "DatabaseName"
            case orderByType = "OrderByType"
            case orderBy = "OrderBy"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeSlowQueryList返回参数结构体
    public struct DescribeSlowQueryListResponse: TCResponseModel {
        /// 选定时间范围内慢SQL总条数。
        public let totalCount: Int64

        /// 指定时间范围内，慢SQL耗时分段分析。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let durationAnalysis: [DurationAnalysis]?

        /// 指定时间范围内 慢SQL流水。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rawSlowQueryList: [RawSlowQuery]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case durationAnalysis = "DurationAnalysis"
            case rawSlowQueryList = "RawSlowQueryList"
            case requestId = "RequestId"
        }
    }

    /// 获取慢查询列表
    ///
    /// 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。
    @inlinable
    public func describeSlowQueryList(_ input: DescribeSlowQueryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowQueryListResponse> {
        self.client.execute(action: "DescribeSlowQueryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢查询列表
    ///
    /// 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。
    @inlinable
    public func describeSlowQueryList(_ input: DescribeSlowQueryListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowQueryListResponse {
        try await self.client.execute(action: "DescribeSlowQueryList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢查询列表
    ///
    /// 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。
    @inlinable
    public func describeSlowQueryList(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderByType: String? = nil, orderBy: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowQueryListResponse> {
        self.describeSlowQueryList(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderByType: orderByType, orderBy: orderBy, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢查询列表
    ///
    /// 此接口（DescribeSlowQueryList）用于查询指定时间范围内的所有慢查询。
    @inlinable
    public func describeSlowQueryList(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderByType: String? = nil, orderBy: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowQueryListResponse {
        try await self.describeSlowQueryList(.init(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderByType: orderByType, orderBy: orderBy, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
