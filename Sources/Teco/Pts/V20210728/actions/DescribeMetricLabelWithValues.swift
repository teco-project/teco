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

extension Pts {
    /// DescribeMetricLabelWithValues请求参数结构体
    public struct DescribeMetricLabelWithValuesRequest: TCRequest {
        /// job id
        public let jobId: String

        /// project id
        public let projectId: String

        /// scenario id
        public let scenarioId: String

        public init(jobId: String, projectId: String, scenarioId: String) {
            self.jobId = jobId
            self.projectId = projectId
            self.scenarioId = scenarioId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
        }
    }

    /// DescribeMetricLabelWithValues返回参数结构体
    public struct DescribeMetricLabelWithValuesResponse: TCResponse {
        /// 指标所有的label和values数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metricLabelWithValuesSet: [MetricLabelWithValues]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metricLabelWithValuesSet = "MetricLabelWithValuesSet"
            case requestId = "RequestId"
        }
    }

    /// 查询指标所有的label及values值
    @inlinable
    public func describeMetricLabelWithValues(_ input: DescribeMetricLabelWithValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricLabelWithValuesResponse> {
        self.client.execute(action: "DescribeMetricLabelWithValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询指标所有的label及values值
    @inlinable
    public func describeMetricLabelWithValues(_ input: DescribeMetricLabelWithValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMetricLabelWithValuesResponse {
        try await self.client.execute(action: "DescribeMetricLabelWithValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询指标所有的label及values值
    @inlinable
    public func describeMetricLabelWithValues(jobId: String, projectId: String, scenarioId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMetricLabelWithValuesResponse> {
        self.describeMetricLabelWithValues(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询指标所有的label及values值
    @inlinable
    public func describeMetricLabelWithValues(jobId: String, projectId: String, scenarioId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMetricLabelWithValuesResponse {
        try await self.describeMetricLabelWithValues(.init(jobId: jobId, projectId: projectId, scenarioId: scenarioId), region: region, logger: logger, on: eventLoop)
    }
}
