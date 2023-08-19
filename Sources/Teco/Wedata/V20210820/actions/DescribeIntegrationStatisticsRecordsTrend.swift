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
    /// DescribeIntegrationStatisticsRecordsTrend请求参数结构体
    public struct DescribeIntegrationStatisticsRecordsTrendRequest: TCRequest {
        /// 任务类型（实时：201，离线：202）
        public let taskType: Int64

        /// 项目id
        public let projectId: String

        /// 查询日期
        public let queryDate: String?

        public init(taskType: Int64, projectId: String, queryDate: String? = nil) {
            self.taskType = taskType
            self.projectId = projectId
            self.queryDate = queryDate
        }

        enum CodingKeys: String, CodingKey {
            case taskType = "TaskType"
            case projectId = "ProjectId"
            case queryDate = "QueryDate"
        }
    }

    /// DescribeIntegrationStatisticsRecordsTrend返回参数结构体
    public struct DescribeIntegrationStatisticsRecordsTrendResponse: TCResponse {
        /// 统计结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trendsData: [IntegrationStatisticsTrendResult]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case trendsData = "TrendsData"
            case requestId = "RequestId"
        }
    }

    /// 数据集成大屏同步条数统计趋势
    @inlinable
    public func describeIntegrationStatisticsRecordsTrend(_ input: DescribeIntegrationStatisticsRecordsTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationStatisticsRecordsTrendResponse> {
        self.client.execute(action: "DescribeIntegrationStatisticsRecordsTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据集成大屏同步条数统计趋势
    @inlinable
    public func describeIntegrationStatisticsRecordsTrend(_ input: DescribeIntegrationStatisticsRecordsTrendRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationStatisticsRecordsTrendResponse {
        try await self.client.execute(action: "DescribeIntegrationStatisticsRecordsTrend", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据集成大屏同步条数统计趋势
    @inlinable
    public func describeIntegrationStatisticsRecordsTrend(taskType: Int64, projectId: String, queryDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIntegrationStatisticsRecordsTrendResponse> {
        self.describeIntegrationStatisticsRecordsTrend(.init(taskType: taskType, projectId: projectId, queryDate: queryDate), region: region, logger: logger, on: eventLoop)
    }

    /// 数据集成大屏同步条数统计趋势
    @inlinable
    public func describeIntegrationStatisticsRecordsTrend(taskType: Int64, projectId: String, queryDate: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIntegrationStatisticsRecordsTrendResponse {
        try await self.describeIntegrationStatisticsRecordsTrend(.init(taskType: taskType, projectId: projectId, queryDate: queryDate), region: region, logger: logger, on: eventLoop)
    }
}
