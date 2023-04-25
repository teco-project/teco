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
    /// CreateVulExportJob请求参数结构体
    public struct CreateVulExportJobRequest: TCRequestModel {
        /// 镜像ID
        public let imageID: String

        /// 导出字段
        public let exportField: [String]

        /// 需要返回的数量，默认为10000，最大值为10000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>ComponentName- String - 是否必填：否 - 镜像组件名称</li><li>ComponentVersion- String - 是否必填：否 - 镜像组件版本</li><li>ComponentType- String - 是否必填：否 - 镜像组件类型</li><li>VulLevel- String - 是否必填：否 - 漏洞威胁等级</li><li>HasVul- String - 是否必填：否 -是否有漏洞；true：是，false，否；不传或ALL ：全部</li>
        public let filters: [AssetFilters]?

        /// 排序字段
        public let by: String?

        /// 排序方式desc ，asc
        public let order: String?

        public init(imageID: String, exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil) {
            self.imageID = imageID
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case imageID = "ImageID"
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }

    /// CreateVulExportJob返回参数结构体
    public struct CreateVulExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 查询本地镜像漏洞列表导出
    @inlinable
    public func createVulExportJob(_ input: CreateVulExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulExportJobResponse> {
        self.client.execute(action: "CreateVulExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询本地镜像漏洞列表导出
    @inlinable
    public func createVulExportJob(_ input: CreateVulExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulExportJobResponse {
        try await self.client.execute(action: "CreateVulExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询本地镜像漏洞列表导出
    @inlinable
    public func createVulExportJob(imageID: String, exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulExportJobResponse> {
        self.createVulExportJob(.init(imageID: imageID, exportField: exportField, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 查询本地镜像漏洞列表导出
    @inlinable
    public func createVulExportJob(imageID: String, exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulExportJobResponse {
        try await self.createVulExportJob(.init(imageID: imageID, exportField: exportField, limit: limit, offset: offset, filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }
}
