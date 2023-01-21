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

extension Cwp {
    /// ExportWebPageEventList请求参数结构体
    public struct ExportWebPageEventListRequest: TCRequestModel {
        /// 过滤条件
        /// <li>IpOrAlias - String - 是否必填：否 - 主机ip或别名筛选</li>
        /// <li>EventType - String - 是否必填：否 - 事件类型</li>
        /// <li>EventStatus - String - 是否必填：否 - 事件状态</li>
        public let filters: [AssetFilters]?

        /// 排序方式：CreateTime 或 RestoreTime，默认为CreateTime
        public let by: String?

        /// 排序方式，0降序，1升序，默认为0
        public let order: UInt64?

        public init(filters: [AssetFilters]? = nil, by: String? = nil, order: UInt64? = nil) {
            self.filters = filters
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }

    /// ExportWebPageEventList返回参数结构体
    public struct ExportWebPageEventListResponse: TCResponseModel {
        /// 任务id 可通过 ExportTasks接口下载
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(_ input: ExportWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportWebPageEventListResponse> {
        self.client.execute(action: "ExportWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(_ input: ExportWebPageEventListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportWebPageEventListResponse {
        try await self.client.execute(action: "ExportWebPageEventList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(filters: [AssetFilters]? = nil, by: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ExportWebPageEventListResponse> {
        self.exportWebPageEventList(ExportWebPageEventListRequest(filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 导出篡改事件列表
    @inlinable
    public func exportWebPageEventList(filters: [AssetFilters]? = nil, by: String? = nil, order: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ExportWebPageEventListResponse {
        try await self.exportWebPageEventList(ExportWebPageEventListRequest(filters: filters, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }
}
