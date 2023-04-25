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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Pts {
    /// DescribeSampleMatrixBatchQuery请求参数结构体
    public struct DescribeSampleMatrixBatchQueryRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String

        /// 项目ID
        public let projectId: String

        /// 场景ID
        public let scenarioId: String

        /// 查询语句
        public let queries: [InternalMetricQuery]

        public init(jobId: String, projectId: String, scenarioId: String, queries: [InternalMetricQuery]) {
            self.jobId = jobId
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.queries = queries
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case queries = "Queries"
        }
    }

    /// DescribeSampleMatrixBatchQuery返回参数结构体
    public struct DescribeSampleMatrixBatchQueryResponse: TCResponseModel {
        /// 批量指标矩阵
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metricSampleMatrixSet: [CustomSampleMatrix]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricSampleMatrixSet = "MetricSampleMatrixSet"
            case requestId = "RequestId"
        }
    }

    /// 批量查询指标矩阵
    @inlinable
    public func describeSampleMatrixBatchQuery(_ input: DescribeSampleMatrixBatchQueryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleMatrixBatchQueryResponse> {
        self.client.execute(action: "DescribeSampleMatrixBatchQuery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量查询指标矩阵
    @inlinable
    public func describeSampleMatrixBatchQuery(_ input: DescribeSampleMatrixBatchQueryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleMatrixBatchQueryResponse {
        try await self.client.execute(action: "DescribeSampleMatrixBatchQuery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量查询指标矩阵
    @inlinable
    public func describeSampleMatrixBatchQuery(jobId: String, projectId: String, scenarioId: String, queries: [InternalMetricQuery], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleMatrixBatchQueryResponse> {
        self.describeSampleMatrixBatchQuery(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId, queries: queries), region: region, logger: logger, on: eventLoop)
    }

    /// 批量查询指标矩阵
    @inlinable
    public func describeSampleMatrixBatchQuery(jobId: String, projectId: String, scenarioId: String, queries: [InternalMetricQuery], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleMatrixBatchQueryResponse {
        try await self.describeSampleMatrixBatchQuery(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId, queries: queries), region: region, logger: logger, on: eventLoop)
    }
}
