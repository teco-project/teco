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

extension Pts {
    /// DescribeSampleQuery请求参数结构体
    public struct DescribeSampleQueryRequest: TCRequestModel {
        /// job id
        public let jobId: String

        /// 场景Id
        public let scenarioId: String

        /// 指标名
        public let metric: String

        /// 聚合条件
        public let aggregation: String

        /// 项目ID
        public let projectId: String

        /// 过滤条件
        public let labels: [Label]?

        public init(jobId: String, scenarioId: String, metric: String, aggregation: String, projectId: String, labels: [Label]? = nil) {
            self.jobId = jobId
            self.scenarioId = scenarioId
            self.metric = metric
            self.aggregation = aggregation
            self.projectId = projectId
            self.labels = labels
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case scenarioId = "ScenarioId"
            case metric = "Metric"
            case aggregation = "Aggregation"
            case projectId = "ProjectId"
            case labels = "Labels"
        }
    }

    /// DescribeSampleQuery返回参数结构体
    public struct DescribeSampleQueryResponse: TCResponseModel {
        /// 返回指标内容
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metricSample: CustomSample?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricSample = "MetricSample"
            case requestId = "RequestId"
        }
    }

    /// 查询指标
    ///
    /// 查询指标，返回固定时间点指标内容
    @inlinable
    public func describeSampleQuery(_ input: DescribeSampleQueryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleQueryResponse> {
        self.client.execute(action: "DescribeSampleQuery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指标
    ///
    /// 查询指标，返回固定时间点指标内容
    @inlinable
    public func describeSampleQuery(_ input: DescribeSampleQueryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleQueryResponse {
        try await self.client.execute(action: "DescribeSampleQuery", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指标
    ///
    /// 查询指标，返回固定时间点指标内容
    @inlinable
    public func describeSampleQuery(jobId: String, scenarioId: String, metric: String, aggregation: String, projectId: String, labels: [Label]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleQueryResponse> {
        self.describeSampleQuery(.init(jobId: jobId, scenarioId: scenarioId, metric: metric, aggregation: aggregation, projectId: projectId, labels: labels), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指标
    ///
    /// 查询指标，返回固定时间点指标内容
    @inlinable
    public func describeSampleQuery(jobId: String, scenarioId: String, metric: String, aggregation: String, projectId: String, labels: [Label]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleQueryResponse {
        try await self.describeSampleQuery(.init(jobId: jobId, scenarioId: scenarioId, metric: metric, aggregation: aggregation, projectId: projectId, labels: labels), region: region, logger: logger, on: eventLoop)
    }
}
