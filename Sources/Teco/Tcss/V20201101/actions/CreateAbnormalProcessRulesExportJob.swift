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

extension Tcss {
    /// CreateAbnormalProcessRulesExportJob请求参数结构体
    public struct CreateAbnormalProcessRulesExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>RuleType - string  - 是否必填: 否 -规则类型</li>
        /// <li>Status - string  - 是否必填: 否 -状态</li>
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        /// 导出字段
        public let exportField: [String]?

        public init(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil) {
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

    /// CreateAbnormalProcessRulesExportJob返回参数结构体
    public struct CreateAbnormalProcessRulesExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建异常进程规则导出任务
    @inlinable
    public func createAbnormalProcessRulesExportJob(_ input: CreateAbnormalProcessRulesExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAbnormalProcessRulesExportJobResponse> {
        self.client.execute(action: "CreateAbnormalProcessRulesExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建异常进程规则导出任务
    @inlinable
    public func createAbnormalProcessRulesExportJob(_ input: CreateAbnormalProcessRulesExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAbnormalProcessRulesExportJobResponse {
        try await self.client.execute(action: "CreateAbnormalProcessRulesExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建异常进程规则导出任务
    @inlinable
    public func createAbnormalProcessRulesExportJob(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAbnormalProcessRulesExportJobResponse> {
        let input = CreateAbnormalProcessRulesExportJobRequest(filters: filters, order: order, by: by, exportField: exportField)
        return self.client.execute(action: "CreateAbnormalProcessRulesExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建异常进程规则导出任务
    @inlinable
    public func createAbnormalProcessRulesExportJob(filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAbnormalProcessRulesExportJobResponse {
        let input = CreateAbnormalProcessRulesExportJobRequest(filters: filters, order: order, by: by, exportField: exportField)
        return try await self.client.execute(action: "CreateAbnormalProcessRulesExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
