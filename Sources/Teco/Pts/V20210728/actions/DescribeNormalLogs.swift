//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Pts {
    /// DescribeNormalLogs请求参数结构体
    public struct DescribeNormalLogsRequest: TCRequestModel {
        /// 压测项目ID
        public let projectId: String

        /// 测试场景ID
        public let scenarioId: String

        /// 压测任务ID
        public let jobId: String

        /// 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        public let context: String?

        /// 日志开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var from: Date?

        /// 日志结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var to: Date?

        /// 日志级别，可取debug/info/error
        public let severityText: String?

        /// 施压节点IP
        public let instance: String?

        /// 施压节点所在地域
        public let instanceRegion: String?

        /// 日志类型， console代表用户输出，engine代表引擎输出
        public let logType: String?

        /// 返回日志条数限制，最大100
        public let limit: Int64?

        public init(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instance: String? = nil, instanceRegion: String? = nil, logType: String? = nil, limit: Int64? = nil) {
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.jobId = jobId
            self.context = context
            self._from = .init(wrappedValue: from)
            self._to = .init(wrappedValue: to)
            self.severityText = severityText
            self.instance = instance
            self.instanceRegion = instanceRegion
            self.logType = logType
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case jobId = "JobId"
            case context = "Context"
            case from = "From"
            case to = "To"
            case severityText = "SeverityText"
            case instance = "Instance"
            case instanceRegion = "InstanceRegion"
            case logType = "LogType"
            case limit = "Limit"
        }
    }

    /// DescribeNormalLogs返回参数结构体
    public struct DescribeNormalLogsResponse: TCResponseModel {
        /// 日志上下文，加载更多日志时使用，透传上次返回的Context值，获取后续的日志内容。过期时间1小时
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let context: String?

        /// 日志数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let normalLogs: [NormalLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case context = "Context"
            case normalLogs = "NormalLogs"
            case requestId = "RequestId"
        }
    }

    /// 查询压测过程日志
    ///
    /// 压测过程日志日志包括引擎输出日志及用户输出日志
    @inlinable
    public func describeNormalLogs(_ input: DescribeNormalLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNormalLogsResponse> {
        self.client.execute(action: "DescribeNormalLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询压测过程日志
    ///
    /// 压测过程日志日志包括引擎输出日志及用户输出日志
    @inlinable
    public func describeNormalLogs(_ input: DescribeNormalLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNormalLogsResponse {
        try await self.client.execute(action: "DescribeNormalLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询压测过程日志
    ///
    /// 压测过程日志日志包括引擎输出日志及用户输出日志
    @inlinable
    public func describeNormalLogs(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instance: String? = nil, instanceRegion: String? = nil, logType: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNormalLogsResponse> {
        self.describeNormalLogs(DescribeNormalLogsRequest(projectId: projectId, scenarioId: scenarioId, jobId: jobId, context: context, from: from, to: to, severityText: severityText, instance: instance, instanceRegion: instanceRegion, logType: logType, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询压测过程日志
    ///
    /// 压测过程日志日志包括引擎输出日志及用户输出日志
    @inlinable
    public func describeNormalLogs(projectId: String, scenarioId: String, jobId: String, context: String? = nil, from: Date? = nil, to: Date? = nil, severityText: String? = nil, instance: String? = nil, instanceRegion: String? = nil, logType: String? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNormalLogsResponse {
        try await self.describeNormalLogs(DescribeNormalLogsRequest(projectId: projectId, scenarioId: scenarioId, jobId: jobId, context: context, from: from, to: to, severityText: severityText, instance: instance, instanceRegion: instanceRegion, logType: logType, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
