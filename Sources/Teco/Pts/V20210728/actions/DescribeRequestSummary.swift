//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeRequestSummary请求参数结构体
    public struct DescribeRequestSummaryRequest: TCRequestModel {
        /// 压测任务ID
        public let jobId: String

        /// 压测场景ID
        public let scenarioId: String

        /// 压测项目ID
        public let projectId: String

        public init(jobId: String, scenarioId: String, projectId: String) {
            self.jobId = jobId
            self.scenarioId = scenarioId
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case scenarioId = "ScenarioId"
            case projectId = "ProjectId"
        }
    }

    /// DescribeRequestSummary返回参数结构体
    public struct DescribeRequestSummaryResponse: TCResponseModel {
        /// 请求汇总信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let requestSummarySet: [RequestSummary]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestSummarySet = "RequestSummarySet"
            case requestId = "RequestId"
        }
    }

    /// 查询请求汇总信息
    @inlinable
    public func describeRequestSummary(_ input: DescribeRequestSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRequestSummaryResponse > {
        self.client.execute(action: "DescribeRequestSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询请求汇总信息
    @inlinable
    public func describeRequestSummary(_ input: DescribeRequestSummaryRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRequestSummaryResponse {
        try await self.client.execute(action: "DescribeRequestSummary", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询请求汇总信息
    @inlinable
    public func describeRequestSummary(jobId: String, scenarioId: String, projectId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeRequestSummaryResponse > {
        self.describeRequestSummary(DescribeRequestSummaryRequest(jobId: jobId, scenarioId: scenarioId, projectId: projectId), logger: logger, on: eventLoop)
    }

    /// 查询请求汇总信息
    @inlinable
    public func describeRequestSummary(jobId: String, scenarioId: String, projectId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRequestSummaryResponse {
        try await self.describeRequestSummary(DescribeRequestSummaryRequest(jobId: jobId, scenarioId: scenarioId, projectId: projectId), logger: logger, on: eventLoop)
    }
}
