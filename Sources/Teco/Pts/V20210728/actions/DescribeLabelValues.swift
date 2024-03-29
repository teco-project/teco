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
    /// DescribeLabelValues请求参数结构体
    public struct DescribeLabelValuesRequest: TCRequest {
        /// 任务ID
        public let jobId: String

        /// 场景ID
        public let scenarioId: String

        /// 指标名称
        public let metric: String

        /// 查询标签名称
        public let labelName: String

        /// 项目ID
        public let projectId: String

        public init(jobId: String, scenarioId: String, metric: String, labelName: String, projectId: String) {
            self.jobId = jobId
            self.scenarioId = scenarioId
            self.metric = metric
            self.labelName = labelName
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case scenarioId = "ScenarioId"
            case metric = "Metric"
            case labelName = "LabelName"
            case projectId = "ProjectId"
        }
    }

    /// DescribeLabelValues返回参数结构体
    public struct DescribeLabelValuesResponse: TCResponse {
        /// 标签值数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let labelValueSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case labelValueSet = "LabelValueSet"
            case requestId = "RequestId"
        }
    }

    /// 查询标签值
    ///
    /// 查询标签内容
    @inlinable
    public func describeLabelValues(_ input: DescribeLabelValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLabelValuesResponse> {
        self.client.execute(action: "DescribeLabelValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 查询标签内容
    @inlinable
    public func describeLabelValues(_ input: DescribeLabelValuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLabelValuesResponse {
        try await self.client.execute(action: "DescribeLabelValues", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询标签值
    ///
    /// 查询标签内容
    @inlinable
    public func describeLabelValues(jobId: String, scenarioId: String, metric: String, labelName: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLabelValuesResponse> {
        self.describeLabelValues(.init(jobId: jobId, scenarioId: scenarioId, metric: metric, labelName: labelName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询标签值
    ///
    /// 查询标签内容
    @inlinable
    public func describeLabelValues(jobId: String, scenarioId: String, metric: String, labelName: String, projectId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLabelValuesResponse {
        try await self.describeLabelValues(.init(jobId: jobId, scenarioId: scenarioId, metric: metric, labelName: labelName, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
