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

extension Tcss {
    /// DescribeAssetImageRegistryVirusListExport请求参数结构体
    public struct DescribeAssetImageRegistryVirusListExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Level- String - 是否必填：否 - 漏洞级别筛选，
        /// - Name - String - 是否必填：否 - 漏洞名称
        public let filters: [AssetFilters]?

        /// 镜像信息
        public let imageInfo: ImageInfo?

        /// 镜像标识Id
        public let id: UInt64?

        public init(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil) {
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.imageInfo = imageInfo
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case imageInfo = "ImageInfo"
            case id = "Id"
        }
    }

    /// DescribeAssetImageRegistryVirusListExport返回参数结构体
    public struct DescribeAssetImageRegistryVirusListExportResponse: TCResponseModel {
        /// excel文件下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 镜像仓库木马信息列表导出
    @inlinable
    public func describeAssetImageRegistryVirusListExport(_ input: DescribeAssetImageRegistryVirusListExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryVirusListExportResponse> {
        self.client.execute(action: "DescribeAssetImageRegistryVirusListExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像仓库木马信息列表导出
    @inlinable
    public func describeAssetImageRegistryVirusListExport(_ input: DescribeAssetImageRegistryVirusListExportRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryVirusListExportResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryVirusListExport", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像仓库木马信息列表导出
    @inlinable
    public func describeAssetImageRegistryVirusListExport(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAssetImageRegistryVirusListExportResponse> {
        self.describeAssetImageRegistryVirusListExport(.init(exportField: exportField, limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 镜像仓库木马信息列表导出
    @inlinable
    public func describeAssetImageRegistryVirusListExport(exportField: [String], limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, imageInfo: ImageInfo? = nil, id: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryVirusListExportResponse {
        try await self.describeAssetImageRegistryVirusListExport(.init(exportField: exportField, limit: limit, offset: offset, filters: filters, imageInfo: imageInfo, id: id), region: region, logger: logger, on: eventLoop)
    }
}
