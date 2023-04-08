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
    /// DescribeReverseShellEventsExport请求参数结构体
    public struct DescribeReverseShellEventsExportRequest: TCRequestModel {
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

        /// 导出字段
        public let exportField: [String]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
            self.exportField = exportField
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
            case exportField = "ExportField"
        }
    }

    /// DescribeReverseShellEventsExport返回参数结构体
    public struct DescribeReverseShellEventsExportResponse: TCResponseModel {
        /// execle下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let jobId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 运行时反弹shell列表导出
    ///
    /// 查询运行时反弹shell事件列表信息导出
    @inlinable
    public func describeReverseShellEventsExport(_ input: DescribeReverseShellEventsExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventsExportResponse> {
        self.client.execute(action: "DescribeReverseShellEventsExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表导出
    ///
    /// 查询运行时反弹shell事件列表信息导出
    @inlinable
    public func describeReverseShellEventsExport(_ input: DescribeReverseShellEventsExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventsExportResponse {
        try await self.client.execute(action: "DescribeReverseShellEventsExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 运行时反弹shell列表导出
    ///
    /// 查询运行时反弹shell事件列表信息导出
    @inlinable
    public func describeReverseShellEventsExport(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReverseShellEventsExportResponse> {
        self.describeReverseShellEventsExport(.init(limit: limit, offset: offset, filters: filters, order: order, by: by, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }

    /// 运行时反弹shell列表导出
    ///
    /// 查询运行时反弹shell事件列表信息导出
    @inlinable
    public func describeReverseShellEventsExport(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReverseShellEventsExportResponse {
        try await self.describeReverseShellEventsExport(.init(limit: limit, offset: offset, filters: filters, order: order, by: by, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }
}
