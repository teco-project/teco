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

extension Cwp {
    /// ExportBaselineRuleDetectList请求参数结构体
    public struct ExportBaselineRuleDetectListRequest: TCRequest {
        /// - RuleName - string - 是否必填：否 - 规则名称</i>
        /// - IsPassed - int - 是否必填：否 - 是否通过
        /// - RiskTier - int - 是否必填：否 - 风险等级
        public let filters: [Filter]?

        /// 0:过滤的结果导出；1:全部导出
        public let exportAll: Int64?

        public init(filters: [Filter]? = nil, exportAll: Int64? = nil) {
            self.filters = filters
            self.exportAll = exportAll
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case exportAll = "ExportAll"
        }
    }

    /// ExportBaselineRuleDetectList返回参数结构体
    public struct ExportBaselineRuleDetectListResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 导出基线检测规则
    @inlinable @discardableResult
    public func exportBaselineRuleDetectList(_ input: ExportBaselineRuleDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineRuleDetectListResponse> {
        self.client.execute(action: "ExportBaselineRuleDetectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出基线检测规则
    @inlinable @discardableResult
    public func exportBaselineRuleDetectList(_ input: ExportBaselineRuleDetectListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineRuleDetectListResponse {
        try await self.client.execute(action: "ExportBaselineRuleDetectList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出基线检测规则
    @inlinable @discardableResult
    public func exportBaselineRuleDetectList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportBaselineRuleDetectListResponse> {
        self.exportBaselineRuleDetectList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }

    /// 导出基线检测规则
    @inlinable @discardableResult
    public func exportBaselineRuleDetectList(filters: [Filter]? = nil, exportAll: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportBaselineRuleDetectListResponse {
        try await self.exportBaselineRuleDetectList(.init(filters: filters, exportAll: exportAll), region: region, logger: logger, on: eventLoop)
    }
}
