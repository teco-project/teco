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
    /// DescribeEscapeEventsExport请求参数结构体
    public struct DescribeEscapeEventsExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let filters: [RunTimeFilters]?

        /// 升序降序,asc desc
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// DescribeEscapeEventsExport返回参数结构体
    public struct DescribeEscapeEventsExportResponse: TCResponseModel {
        /// execle下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 查询容器逃逸事件列表导出
    ///
    /// DescribeEscapeEventsExport  查询容器逃逸事件列表导出
    @inlinable
    public func describeEscapeEventsExport(_ input: DescribeEscapeEventsExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventsExportResponse> {
        self.client.execute(action: "DescribeEscapeEventsExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询容器逃逸事件列表导出
    ///
    /// DescribeEscapeEventsExport  查询容器逃逸事件列表导出
    @inlinable
    public func describeEscapeEventsExport(_ input: DescribeEscapeEventsExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventsExportResponse {
        try await self.client.execute(action: "DescribeEscapeEventsExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询容器逃逸事件列表导出
    ///
    /// DescribeEscapeEventsExport  查询容器逃逸事件列表导出
    @inlinable
    public func describeEscapeEventsExport(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEscapeEventsExportResponse> {
        self.describeEscapeEventsExport(.init(exportField: exportField, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询容器逃逸事件列表导出
    ///
    /// DescribeEscapeEventsExport  查询容器逃逸事件列表导出
    @inlinable
    public func describeEscapeEventsExport(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEscapeEventsExportResponse {
        try await self.describeEscapeEventsExport(.init(exportField: exportField, limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
