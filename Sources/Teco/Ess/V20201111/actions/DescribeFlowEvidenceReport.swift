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

extension Ess {
    /// DescribeFlowEvidenceReport请求参数结构体
    public struct DescribeFlowEvidenceReportRequest: TCRequestModel {
        /// 调用方用户信息，userId 必填
        public let `operator`: UserInfo

        /// 出证报告编号
        public let reportId: String

        public init(operator: UserInfo, reportId: String) {
            self.`operator` = `operator`
            self.reportId = reportId
        }

        enum CodingKeys: String, CodingKey {
            case `operator` = "Operator"
            case reportId = "ReportId"
        }
    }

    /// DescribeFlowEvidenceReport返回参数结构体
    public struct DescribeFlowEvidenceReportResponse: TCResponseModel {
        /// 报告 URL
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reportUrl: String?

        /// 执行中：EvidenceStatusExecuting
        /// 成功：EvidenceStatusSuccess
        /// 失败：EvidenceStatusFailed
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
    public func describeFlowEvidenceReport(_ input: DescribeFlowEvidenceReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowEvidenceReportResponse > {
        self.client.execute(action: "DescribeFlowEvidenceReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeFlowEvidenceReport(_ input: DescribeFlowEvidenceReportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowEvidenceReportResponse {
        try await self.client.execute(action: "DescribeFlowEvidenceReport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeFlowEvidenceReport(operator: UserInfo, reportId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeFlowEvidenceReportResponse > {
        self.describeFlowEvidenceReport(DescribeFlowEvidenceReportRequest(operator: `operator`, reportId: reportId), logger: logger, on: eventLoop)
    }

    /// 查询出证报告
    ///
    /// 查询出证报告，返回报告 URL。
    @inlinable
    public func describeFlowEvidenceReport(operator: UserInfo, reportId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFlowEvidenceReportResponse {
        try await self.describeFlowEvidenceReport(DescribeFlowEvidenceReportRequest(operator: `operator`, reportId: reportId), logger: logger, on: eventLoop)
    }
}
