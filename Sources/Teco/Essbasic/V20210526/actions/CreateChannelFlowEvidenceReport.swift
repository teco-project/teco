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

extension Essbasic {
    /// CreateChannelFlowEvidenceReport请求参数结构体
    public struct CreateChannelFlowEvidenceReportRequest: TCRequest {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        public let agent: Agent

        /// 签署流程编号
        public let flowId: String

        /// 暂未开放
        @available(*, deprecated)
        public let `operator`: UserInfo? = nil

        public init(agent: Agent, flowId: String) {
            self.agent = agent
            self.flowId = flowId
        }

        @available(*, deprecated, renamed: "init(agent:flowId:)", message: "'operator' is deprecated in 'CreateChannelFlowEvidenceReportRequest'. Setting this parameter has no effect.")
        public init(agent: Agent, flowId: String, operator: UserInfo? = nil) {
            self.agent = agent
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case flowId = "FlowId"
            case `operator` = "Operator"
        }
    }

    /// CreateChannelFlowEvidenceReport返回参数结构体
    public struct CreateChannelFlowEvidenceReportResponse: TCResponse {
        /// 出证报告 ID，可用户DescribeChannelFlowEvidenceReport接口查询出证PDF的下载地址
        ///
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportId: String?

        /// 出征任务的执行状态,状态列表如下
        ///
        /// - EvidenceStatusExecuting : 出征任务正在执行中
        /// - EvidenceStatusSuccess : 出征任务执行成功
        /// - EvidenceStatusFailed : 出征任务执行失败
        public let status: String

        /// 废除，字段无效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reportId = "ReportId"
            case status = "Status"
            case reportUrl = "ReportUrl"
            case requestId = "RequestId"
        }
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @inlinable
    public func createChannelFlowEvidenceReport(_ input: CreateChannelFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelFlowEvidenceReportResponse> {
        self.client.execute(action: "CreateChannelFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @inlinable
    public func createChannelFlowEvidenceReport(_ input: CreateChannelFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelFlowEvidenceReportResponse {
        try await self.client.execute(action: "CreateChannelFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @inlinable
    public func createChannelFlowEvidenceReport(agent: Agent, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelFlowEvidenceReportResponse> {
        self.createChannelFlowEvidenceReport(.init(agent: agent, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @available(*, deprecated, renamed: "createChannelFlowEvidenceReport(agent:flowId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createChannelFlowEvidenceReport(agent: Agent, flowId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelFlowEvidenceReportResponse> {
        self.createChannelFlowEvidenceReport(.init(agent: agent, flowId: flowId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @inlinable
    public func createChannelFlowEvidenceReport(agent: Agent, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelFlowEvidenceReportResponse {
        try await self.createChannelFlowEvidenceReport(.init(agent: agent, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @available(*, deprecated, renamed: "createChannelFlowEvidenceReport(agent:flowId:region:logger:on:)", message: "'operator' is deprecated. Setting this parameter has no effect.")
    @inlinable
    public func createChannelFlowEvidenceReport(agent: Agent, flowId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelFlowEvidenceReportResponse {
        try await self.createChannelFlowEvidenceReport(.init(agent: agent, flowId: flowId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
