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

import TecoCore

extension Tcss {
    /// CreateVulDefenceHostExportJob请求参数结构体
    public struct CreateVulDefenceHostExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>Status- String - 是否必填：否 - 插件状态，正常：SUCCESS，异常：FAIL， NO_DEFENCE:未防御</li>
        /// <li>KeyWords- string - 是否必填：否 - 主机名称/IP。</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，最大值为100000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：更新时间：ModifyTime/首次开启时间：CreateTime
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// CreateVulDefenceHostExportJob返回参数结构体
    public struct CreateVulDefenceHostExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建漏洞防御主机导出任务
    @inlinable
    public func createVulDefenceHostExportJob(_ input: CreateVulDefenceHostExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulDefenceHostExportJobResponse> {
        self.client.execute(action: "CreateVulDefenceHostExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建漏洞防御主机导出任务
    @inlinable
    public func createVulDefenceHostExportJob(_ input: CreateVulDefenceHostExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulDefenceHostExportJobResponse {
        try await self.client.execute(action: "CreateVulDefenceHostExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建漏洞防御主机导出任务
    @inlinable
    public func createVulDefenceHostExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulDefenceHostExportJobResponse> {
        self.createVulDefenceHostExportJob(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 创建漏洞防御主机导出任务
    @inlinable
    public func createVulDefenceHostExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulDefenceHostExportJobResponse {
        try await self.createVulDefenceHostExportJob(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
