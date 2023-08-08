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
    /// DescribeChannelFlowEvidenceReport请求参数结构体
    public struct DescribeChannelFlowEvidenceReportRequest: TCRequestModel {
        /// 应用相关信息。 此接口Agent.ProxyOrganizationOpenId、Agent. ProxyOperator.OpenId、Agent.AppId 必填
        public let agent: Agent

        /// 出证报告编号
        public let reportId: String

        /// 暂未开放
        public let `operator`: UserInfo?

        public init(agent: Agent, reportId: String, operator: UserInfo? = nil) {
            self.agent = agent
            self.reportId = reportId
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case agent = "Agent"
            case reportId = "ReportId"
            case `operator` = "Operator"
        }
    }

    /// DescribeChannelFlowEvidenceReport返回参数结构体
    public struct DescribeChannelFlowEvidenceReportResponse: TCResponseModel {
        /// 出证报告下载 URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportUrl: String?

        /// 出征任务的执行状态,状态列表如下
        ///
        /// - EvidenceStatusExecuting : 出征任务正在执行中
        /// - EvidenceStatusSuccess : 出征任务执行成功
        /// - EvidenceStatusFailed : 出征任务执行失败
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reportUrl = "ReportUrl"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeChannelFlowEvidenceReport(_ input: DescribeChannelFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelFlowEvidenceReportResponse> {
        self.client.execute(action: "DescribeChannelFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeChannelFlowEvidenceReport(_ input: DescribeChannelFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelFlowEvidenceReportResponse {
        try await self.client.execute(action: "DescribeChannelFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeChannelFlowEvidenceReport(agent: Agent, reportId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeChannelFlowEvidenceReportResponse> {
        self.describeChannelFlowEvidenceReport(.init(agent: agent, reportId: reportId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeChannelFlowEvidenceReport(agent: Agent, reportId: String, operator: UserInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeChannelFlowEvidenceReportResponse {
        try await self.describeChannelFlowEvidenceReport(.init(agent: agent, reportId: reportId, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
