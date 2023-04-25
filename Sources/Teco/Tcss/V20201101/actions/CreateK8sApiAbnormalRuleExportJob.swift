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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tcss {
    /// CreateK8sApiAbnormalRuleExportJob请求参数结构体
    public struct CreateK8sApiAbnormalRuleExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>RuleType - string  - 是否必填: 否 -规则类型</li>
        /// <li>Status - string  - 是否必填: 否 -状态</li>
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: [String]?

        /// 导出字段
        public let exportField: [String]?

        public init(filters: [RunTimeFilters]? = nil, order: String? = nil, by: [String]? = nil, exportField: [String]? = nil) {
            self.filters = filters
            self.order = order
            self.by = by
            self.exportField = exportField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case order = "Order"
            case by = "By"
            case exportField = "ExportField"
        }
    }

    /// CreateK8sApiAbnormalRuleExportJob返回参数结构体
    public struct CreateK8sApiAbnormalRuleExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建k8sApi异常规则导出任务
    @inlinable
    public func createK8sApiAbnormalRuleExportJob(_ input: CreateK8sApiAbnormalRuleExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateK8sApiAbnormalRuleExportJobResponse> {
        self.client.execute(action: "CreateK8sApiAbnormalRuleExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建k8sApi异常规则导出任务
    @inlinable
    public func createK8sApiAbnormalRuleExportJob(_ input: CreateK8sApiAbnormalRuleExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateK8sApiAbnormalRuleExportJobResponse {
        try await self.client.execute(action: "CreateK8sApiAbnormalRuleExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建k8sApi异常规则导出任务
    @inlinable
    public func createK8sApiAbnormalRuleExportJob(filters: [RunTimeFilters]? = nil, order: String? = nil, by: [String]? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateK8sApiAbnormalRuleExportJobResponse> {
        self.createK8sApiAbnormalRuleExportJob(.init(filters: filters, order: order, by: by, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }

    /// 创建k8sApi异常规则导出任务
    @inlinable
    public func createK8sApiAbnormalRuleExportJob(filters: [RunTimeFilters]? = nil, order: String? = nil, by: [String]? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateK8sApiAbnormalRuleExportJobResponse {
        try await self.createK8sApiAbnormalRuleExportJob(.init(filters: filters, order: order, by: by, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }
}
