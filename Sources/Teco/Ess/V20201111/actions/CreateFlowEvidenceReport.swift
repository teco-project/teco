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

extension Ess {
    /// CreateFlowEvidenceReport请求参数结构体
    public struct CreateFlowEvidenceReportRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 签署流程编号
        public let flowId: String

        public init(operator: UserInfo, flowId: String) {
            self.`operator` = `operator`
            self.flowId = flowId
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case flowId = "FlowId"
        }
    }

    /// CreateFlowEvidenceReport返回参数结构体
    public struct CreateFlowEvidenceReportResponse: TCResponseModel {
        /// 出证报告 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportId: String?

        /// 废除，字段无效
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportUrl: String?

        /// 执行中：EvidenceStatusExecuting
        /// 成功：EvidenceStatusSuccess
        /// 失败：EvidenceStatusFailed
        public let status: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reportId = "ReportId"
            case reportUrl = "ReportUrl"
            case status = "Status"
            case requestId = "RequestId"
        }
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。
    @inlinable
    public func createFlowEvidenceReport(_ input: CreateFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowEvidenceReportResponse> {
        self.client.execute(action: "CreateFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。
    @inlinable
    public func createFlowEvidenceReport(_ input: CreateFlowEvidenceReportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowEvidenceReportResponse {
        try await self.client.execute(action: "CreateFlowEvidenceReport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。
    @inlinable
    public func createFlowEvidenceReport(operator: UserInfo, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateFlowEvidenceReportResponse> {
        self.createFlowEvidenceReport(CreateFlowEvidenceReportRequest(operator: `operator`, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建并返回出证报告
    ///
    /// 创建出证报告，返回报告 ID。
    @inlinable
    public func createFlowEvidenceReport(operator: UserInfo, flowId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFlowEvidenceReportResponse {
        try await self.createFlowEvidenceReport(CreateFlowEvidenceReportRequest(operator: `operator`, flowId: flowId), region: region, logger: logger, on: eventLoop)
    }
}
