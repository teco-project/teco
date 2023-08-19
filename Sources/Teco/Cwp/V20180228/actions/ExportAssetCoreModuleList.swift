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
    /// ExportAssetCoreModuleList请求参数结构体
    public struct ExportAssetCoreModuleListRequest: TCRequest {
        /// 服务器Uuid
        public let uuid: String?

        /// 服务器Quuid
        public let quuid: String?

        /// 过滤条件。
        /// - Name- string - 是否必填：否 - 包名
        /// - User- string - 是否必填：否 - 用户
        public let filters: [AssetFilters]?

        /// 排序方式，asc升序 或 desc降序
        public let order: String?

        /// 排序依据[FirstTime|Size|ProcessCount|ModuleCount]
        public let by: String?

        public init(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.uuid = uuid
            self.quuid = quuid
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
            case quuid = "Quuid"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// ExportAssetCoreModuleList返回参数结构体
    public struct ExportAssetCoreModuleListResponse: TCResponse {
        /// 异步下载任务ID，需要配合ExportTasks接口使用
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出资产管理内核模块列表
    @inlinable
    public func exportAssetCoreModuleList(_ input: ExportAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportAssetCoreModuleListResponse> {
        self.client.execute(action: "ExportAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出资产管理内核模块列表
    @inlinable
    public func exportAssetCoreModuleList(_ input: ExportAssetCoreModuleListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAssetCoreModuleListResponse {
        try await self.client.execute(action: "ExportAssetCoreModuleList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出资产管理内核模块列表
    @inlinable
    public func exportAssetCoreModuleList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportAssetCoreModuleListResponse> {
        self.exportAssetCoreModuleList(.init(uuid: uuid, quuid: quuid, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 导出资产管理内核模块列表
    @inlinable
    public func exportAssetCoreModuleList(uuid: String? = nil, quuid: String? = nil, filters: [AssetFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportAssetCoreModuleListResponse {
        try await self.exportAssetCoreModuleList(.init(uuid: uuid, quuid: quuid, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
