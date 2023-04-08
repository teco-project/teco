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

extension Wedata {
    /// DescribeRuleExecExportResult请求参数结构体
    public struct DescribeRuleExecExportResultRequest: TCRequestModel {
        /// 项目id
        public let projectId: String?

        /// 规则执行id
        public let ruleExecId: UInt64?

        public init(projectId: String? = nil, ruleExecId: UInt64? = nil) {
            self.projectId = projectId
            self.ruleExecId = ruleExecId
        }

        enum CodingKeys: String, CodingKey {
            case projectId = "ProjectId"
            case ruleExecId = "RuleExecId"
        }
    }

    /// DescribeRuleExecExportResult返回参数结构体
    public struct DescribeRuleExecExportResultResponse: TCResponseModel {
        /// 导出结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: RuleExecExportResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询规则执行导出结果
    @inlinable
    public func describeRuleExecExportResult(_ input: DescribeRuleExecExportResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecExportResultResponse> {
        self.client.execute(action: "DescribeRuleExecExportResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询规则执行导出结果
    @inlinable
    public func describeRuleExecExportResult(_ input: DescribeRuleExecExportResultRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecExportResultResponse {
        try await self.client.execute(action: "DescribeRuleExecExportResult", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询规则执行导出结果
    @inlinable
    public func describeRuleExecExportResult(projectId: String? = nil, ruleExecId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRuleExecExportResultResponse> {
        self.describeRuleExecExportResult(.init(projectId: projectId, ruleExecId: ruleExecId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询规则执行导出结果
    @inlinable
    public func describeRuleExecExportResult(projectId: String? = nil, ruleExecId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRuleExecExportResultResponse {
        try await self.describeRuleExecExportResult(.init(projectId: projectId, ruleExecId: ruleExecId), region: region, logger: logger, on: eventLoop)
    }
}
