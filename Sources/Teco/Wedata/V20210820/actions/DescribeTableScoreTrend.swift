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

extension Wedata {
    /// DescribeTableScoreTrend请求参数结构体
    public struct DescribeTableScoreTrendRequest: TCRequest {
        /// 项目id
        public let projectId: String

        /// 开始时间 秒级时间戳
        public let statisticsStartDate: Int64

        /// 结束时间 秒级时间戳
        public let statisticsEndDate: Int64

        /// 表id
        public let tableId: String

        /// 1:按全维度权重计算,2:按已配置维度权重计算,3:不按维度权重计算,默认1
        public let scoreType: String?

        public init(projectId: String, statisticsStartDate: Int64, statisticsEndDate: Int64, tableId: String, scoreType: String? = nil) {
            self.projectId = projectId
            self.statisticsStartDate = statisticsStartDate
            self.statisticsEndDate = statisticsEndDate
            self.tableId = tableId
            self.scoreType = scoreType
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case statisticsStartDate = "StatisticsStartDate"
            case statisticsEndDate = "StatisticsEndDate"
            case tableId = "TableId"
            case scoreType = "ScoreType"
        }
    }

    /// DescribeTableScoreTrend返回参数结构体
    public struct DescribeTableScoreTrendResponse: TCResponse {
        /// 表得分趋势
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: QualityScoreTrend?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询表得分趋势
    @inlinable
    public func describeTableScoreTrend(_ input: DescribeTableScoreTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableScoreTrendResponse> {
        self.client.execute(action: "DescribeTableScoreTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询表得分趋势
    @inlinable
    public func describeTableScoreTrend(_ input: DescribeTableScoreTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableScoreTrendResponse {
        try await self.client.execute(action: "DescribeTableScoreTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询表得分趋势
    @inlinable
    public func describeTableScoreTrend(projectId: String, statisticsStartDate: Int64, statisticsEndDate: Int64, tableId: String, scoreType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTableScoreTrendResponse> {
        self.describeTableScoreTrend(.init(projectId: projectId, statisticsStartDate: statisticsStartDate, statisticsEndDate: statisticsEndDate, tableId: tableId, scoreType: scoreType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询表得分趋势
    @inlinable
    public func describeTableScoreTrend(projectId: String, statisticsStartDate: Int64, statisticsEndDate: Int64, tableId: String, scoreType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTableScoreTrendResponse {
        try await self.describeTableScoreTrend(.init(projectId: projectId, statisticsStartDate: statisticsStartDate, statisticsEndDate: statisticsEndDate, tableId: tableId, scoreType: scoreType), region: region, logger: logger, on: eventLoop)
    }
}
