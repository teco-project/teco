//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Pts {
    /// 查询指标矩阵
    ///
    /// 查询指标矩阵
    @inlinable
    public func describeSampleMatrixQuery(_ input: DescribeSampleMatrixQueryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeSampleMatrixQueryResponse > {
        self.client.execute(action: "DescribeSampleMatrixQuery", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询指标矩阵
    ///
    /// 查询指标矩阵
    @inlinable
    public func describeSampleMatrixQuery(_ input: DescribeSampleMatrixQueryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleMatrixQueryResponse {
        try await self.client.execute(action: "DescribeSampleMatrixQuery", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeSampleMatrixQuery请求参数结构体
    public struct DescribeSampleMatrixQueryRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String
        
        /// 项目ID
        public let projectId: String
        
        /// 场景ID
        public let scenarioId: String
        
        /// 指标名字
        public let metric: String
        
        /// 聚合函数
        public let aggregation: String
        
        /// 指标过滤
        public let filters: [Filter]?
        
        /// 分组
        public let groupBy: [String]?
        
        public init (jobId: String, projectId: String, scenarioId: String, metric: String, aggregation: String, filters: [Filter]?, groupBy: [String]?) {
            self.jobId = jobId
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.metric = metric
            self.aggregation = aggregation
            self.filters = filters
            self.groupBy = groupBy
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case metric = "Metric"
            case aggregation = "Aggregation"
            case filters = "Filters"
            case groupBy = "GroupBy"
        }
    }
    
    /// DescribeSampleMatrixQuery返回参数结构体
    public struct DescribeSampleMatrixQueryResponse: TCResponseModel {
        /// 指标矩阵
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metricSampleMatrix: CustomSampleMatrix
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case metricSampleMatrix = "MetricSampleMatrix"
            case requestId = "RequestId"
        }
    }
}