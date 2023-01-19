//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Postgres {
    /// DescribeSlowQueryAnalysis请求参数结构体
    public struct DescribeSlowQueryAnalysisRequest: TCRequestModel {
        /// 实例ID。
        public let dbInstanceId: String

        /// 查询起始时间戳，格式 “YYYY-MM-DD HH:mm:ss” ，日志保留时间默认为7天，起始时间不能超出保留时间范围。
        public let startTime: String

        /// 查询结束时间戳，格式 “YYYY-MM-DD HH:mm:ss”。
        public let endTime: String

        /// 根据数据库名进行筛选，可以为空。
        public let databaseName: String?

        /// 排序维度。 可选参数，取值范围[CallNum,CostTime,AvgCostTime]。默认CallNum。
        public let orderBy: String?

        /// 排序类型。升序asc、降序desc。默认desc。
        public let orderByType: String?

        /// 分页大小。取值范围[1,100]。默认50。
        public let limit: Int64?

        /// 分页偏移。取值范围[0,INF)。默认0。
        public let offset: Int64?

        public init(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.dbInstanceId = dbInstanceId
            self.startTime = startTime
            self.endTime = endTime
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

    /// DescribeSlowQueryAnalysis返回参数结构体
    public struct DescribeSlowQueryAnalysisResponse: TCResponseModel {
        /// 查询总条数。
        public let totalCount: Int64

        /// 慢SQL统计分析接口返回详情。
        public let detail: Detail

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case detail = "Detail"
            case requestId = "RequestId"
        }
    }

    /// 获取慢查询统计分析列表
    ///
    /// 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。
    @inlinable
    public func describeSlowQueryAnalysis(_ input: DescribeSlowQueryAnalysisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowQueryAnalysisResponse> {
        self.client.execute(action: "DescribeSlowQueryAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取慢查询统计分析列表
    ///
    /// 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。
    @inlinable
    public func describeSlowQueryAnalysis(_ input: DescribeSlowQueryAnalysisRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowQueryAnalysisResponse {
        try await self.client.execute(action: "DescribeSlowQueryAnalysis", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取慢查询统计分析列表
    ///
    /// 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。
    @inlinable
    public func describeSlowQueryAnalysis(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSlowQueryAnalysisResponse> {
        self.describeSlowQueryAnalysis(DescribeSlowQueryAnalysisRequest(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取慢查询统计分析列表
    ///
    /// 此接口（DescribeSlowQueryAnalysis）用于统计指定时间范围内的所有慢查询，根据SQL语句抽象参数后，进行聚合分析，并返回同类SQL列表。
    @inlinable
    public func describeSlowQueryAnalysis(dbInstanceId: String, startTime: String, endTime: String, databaseName: String? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSlowQueryAnalysisResponse {
        try await self.describeSlowQueryAnalysis(DescribeSlowQueryAnalysisRequest(dbInstanceId: dbInstanceId, startTime: startTime, endTime: endTime, databaseName: databaseName, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
