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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Pts {
    /// DescribeSampleLogs请求参数结构体
    public struct DescribeSampleLogsRequest: TCRequest {
        /// 测试项目ID
        public let projectId: String

        /// 测试场景ID
        public let scenarioId: String

        /// 测试任务ID
        public let jobId: String

        /// 加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        public let context: String?

        /// 日志开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$from`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var from: Date?

        /// 日志结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$to`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var to: Date?

        /// 日志级别debug,info,error
        public let severityText: String?

        /// ap-shanghai, ap-guangzhou
        public let instanceRegion: String?

        /// 施压引擎节点IP
        public let instance: String?

        /// request 代表采样日志,可为不填
        public let logType: String?

        /// 返回日志条数，最大100
        public let limit: Int64?

        /// 采样日志响应时间范围
        public let reactionTimeRange: ReactionTimeRange?

        /// 采样请求状态码
        public let status: String?

        /// 采样请求结果码
        public let result: String?

        /// 采样请求方法
        public let method: String?

        /// 采样服务API
        public let service: String?

        public init(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instanceRegion: String? = nil, instance: String? = nil, logType: String? = nil, limit: Int64? = nil, reactionTimeRange: ReactionTimeRange? = nil, status: String? = nil, result: String? = nil, method: String? = nil, service: String? = nil) {
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.jobId = jobId
            self.context = context
            self._from = .init(wrappedValue: from)
            self._to = .init(wrappedValue: to)
            self.severityText = severityText
            self.instanceRegion = instanceRegion
            self.instance = instance
            self.logType = logType
            self.limit = limit
            self.reactionTimeRange = reactionTimeRange
            self.status = status
            self.result = result
            self.method = method
            self.service = service
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case jobId = "JobId"
            case context = "Context"
            case from = "From"
            case to = "To"
            case severityText = "SeverityText"
            case instanceRegion = "InstanceRegion"
            case instance = "Instance"
            case logType = "LogType"
            case limit = "Limit"
            case reactionTimeRange = "ReactionTimeRange"
            case status = "Status"
            case result = "Result"
            case method = "Method"
            case service = "Service"
        }
    }

    /// DescribeSampleLogs返回参数结构体
    public struct DescribeSampleLogsResponse: TCResponse {
        /// 日志总数
        public let total: Int64

        /// 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 采样日志数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sampleLogs: [SampleLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case context = "Context"
            case sampleLogs = "SampleLogs"
            case requestId = "RequestId"
        }
    }

    /// 查询采样日志
    @inlinable
    public func describeSampleLogs(_ input: DescribeSampleLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleLogsResponse> {
        self.client.execute(action: "DescribeSampleLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询采样日志
    @inlinable
    public func describeSampleLogs(_ input: DescribeSampleLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleLogsResponse {
        try await self.client.execute(action: "DescribeSampleLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询采样日志
    @inlinable
    public func describeSampleLogs(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instanceRegion: String? = nil, instance: String? = nil, logType: String? = nil, limit: Int64? = nil, reactionTimeRange: ReactionTimeRange? = nil, status: String? = nil, result: String? = nil, method: String? = nil, service: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSampleLogsResponse> {
        self.describeSampleLogs(.init(projectId: projectId, scenarioId: scenarioId, jobId: jobId, context: context, from: from, to: to, severityText: severityText, instanceRegion: instanceRegion, instance: instance, logType: logType, limit: limit, reactionTimeRange: reactionTimeRange, status: status, result: result, method: method, service: service), region: region, logger: logger, on: eventLoop)
    }

    /// 查询采样日志
    @inlinable
    public func describeSampleLogs(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instanceRegion: String? = nil, instance: String? = nil, logType: String? = nil, limit: Int64? = nil, reactionTimeRange: ReactionTimeRange? = nil, status: String? = nil, result: String? = nil, method: String? = nil, service: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSampleLogsResponse {
        try await self.describeSampleLogs(.init(projectId: projectId, scenarioId: scenarioId, jobId: jobId, context: context, from: from, to: to, severityText: severityText, instanceRegion: instanceRegion, instance: instance, logType: logType, limit: limit, reactionTimeRange: reactionTimeRange, status: status, result: result, method: method, service: service), region: region, logger: logger, on: eventLoop)
    }
}
