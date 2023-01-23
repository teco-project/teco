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

extension Essbasic {
    /// CreateChannelFlowEvidenceReport请求参数结构体
    public struct CreateChannelFlowEvidenceReportRequest: TCRequestModel {
        /// 签署流程编号
        public let flowId: String

        /// 渠道应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 和 Agent.ProxyAppId 均必填
        public let agent: Agent

        /// 操作者的信息
        public let `operator`: UserInfo?

        public init(flowId: String, agent: Agent, operator: UserInfo? = nil) {
            self.flowId = flowId
            self.agent = agent
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case flowId = "FlowId"
            case agent = "Agent"
            case `operator` = "Operator"
        }
    }

    /// CreateChannelFlowEvidenceReport返回参数结构体
    public struct CreateChannelFlowEvidenceReportResponse: TCResponseModel {
        /// 出证报告 ID，用于查询出证报告接口DescribeChannelFlowEvidenceReport时用到
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportId: String?

        /// 执行中：EvidenceStatusExecuting
        /// 成功：EvidenceStatusSuccess
        /// 失败：EvidenceStatusFailed
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
    public func createChannelFlowEvidenceReport(flowId: String, agent: Agent, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateChannelFlowEvidenceReportResponse> {
        self.createChannelFlowEvidenceReport(CreateChannelFlowEvidenceReportRequest(flowId: flowId, agent: agent, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。需要配合出证套餐才能调用。
    /// 出证需要一定时间，建议调用创建出证24小时之后再通过DescribeChannelFlowEvidenceReport进行查询。
    @inlinable
    public func createChannelFlowEvidenceReport(flowId: String, agent: Agent, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateChannelFlowEvidenceReportResponse {
        try await self.createChannelFlowEvidenceReport(CreateChannelFlowEvidenceReportRequest(flowId: flowId, agent: agent, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
