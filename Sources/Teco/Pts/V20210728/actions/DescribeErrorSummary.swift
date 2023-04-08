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
    /// DescribeErrorSummary请求参数结构体
    public struct DescribeErrorSummaryRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String

        /// 场景ID
        public let scenarioId: String

        /// 项目ID
        public let projectId: String

        /// 过滤参数
        public let filters: [Filter]?

        public init(jobId: String, scenarioId: String, projectId: String, filters: [Filter]? = nil) {
            self.jobId = jobId
            self.scenarioId = scenarioId
            self.projectId = projectId
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case scenarioId = "ScenarioId"
            case projectId = "ProjectId"
            case filters = "Filters"
        }
    }

    /// DescribeErrorSummary返回参数结构体
    public struct DescribeErrorSummaryResponse: TCResponseModel {
        /// 错误汇总信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorSummarySet: [ErrorSummary]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorSummarySet = "ErrorSummarySet"
            case requestId = "RequestId"
        }
    }

    /// 查询错误详情汇总信息
    @inlinable
    public func describeErrorSummary(_ input: DescribeErrorSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeErrorSummaryResponse> {
        self.client.execute(action: "DescribeErrorSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询错误详情汇总信息
    @inlinable
    public func describeErrorSummary(_ input: DescribeErrorSummaryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeErrorSummaryResponse {
        try await self.client.execute(action: "DescribeErrorSummary", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询错误详情汇总信息
    @inlinable
    public func describeErrorSummary(jobId: String, scenarioId: String, projectId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeErrorSummaryResponse> {
        self.describeErrorSummary(.init(jobId: jobId, scenarioId: scenarioId, projectId: projectId, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询错误详情汇总信息
    @inlinable
    public func describeErrorSummary(jobId: String, scenarioId: String, projectId: String, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeErrorSummaryResponse {
        try await self.describeErrorSummary(.init(jobId: jobId, scenarioId: scenarioId, projectId: projectId, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
