//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeAssetImageRiskListExport请求参数结构体
    public struct DescribeAssetImageRiskListExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]

        /// 镜像id
        public let imageID: String

        /// 过滤条件。
        /// <li>Level- String - 是否必填：否 - 风险级别 1,2,3,4，</li>
        /// <li>Behavior - String - 是否必填：否 - 风险行为 1,2,3,4</li>
        /// <li>Type - String - 是否必填：否 - 风险类型  1,2,</li>
        public let filters: [AssetFilters]?

        public init(exportField: [String], imageID: String, filters: [AssetFilters]? = nil) {
            self.exportField = exportField
            self.imageID = imageID
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case imageID = "ImageID"
            case filters = "Filters"
        }
    }

    /// DescribeAssetImageRiskListExport返回参数结构体
    public struct DescribeAssetImageRiskListExportResponse: TCResponseModel {
        /// excel文件下载地址
        public let downloadUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }

    /// 镜像风险列表导出
    ///
    /// 容器安全搜索查询镜像风险列表导出
    @inlinable
    public func describeAssetImageRiskListExport(_ input: DescribeAssetImageRiskListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRiskListExportResponse > {
        self.client.execute(action: "DescribeAssetImageRiskListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像风险列表导出
    ///
    /// 容器安全搜索查询镜像风险列表导出
    @inlinable
    public func describeAssetImageRiskListExport(_ input: DescribeAssetImageRiskListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRiskListExportResponse {
        try await self.client.execute(action: "DescribeAssetImageRiskListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像风险列表导出
    ///
    /// 容器安全搜索查询镜像风险列表导出
    @inlinable
    public func describeAssetImageRiskListExport(exportField: [String], imageID: String, filters: [AssetFilters]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRiskListExportResponse > {
        self.describeAssetImageRiskListExport(DescribeAssetImageRiskListExportRequest(exportField: exportField, imageID: imageID, filters: filters), logger: logger, on: eventLoop)
    }

    /// 镜像风险列表导出
    ///
    /// 容器安全搜索查询镜像风险列表导出
    @inlinable
    public func describeAssetImageRiskListExport(exportField: [String], imageID: String, filters: [AssetFilters]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRiskListExportResponse {
        try await self.describeAssetImageRiskListExport(DescribeAssetImageRiskListExportRequest(exportField: exportField, imageID: imageID, filters: filters), logger: logger, on: eventLoop)
    }
}
