//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tcss {
    /// 镜像仓库镜像列表导出
    ///
    /// 镜像仓库镜像列表导出
    @inlinable
    public func describeAssetImageRegistryListExport(_ input: DescribeAssetImageRegistryListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageRegistryListExportResponse > {
        self.client.execute(action: "DescribeAssetImageRegistryListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 镜像仓库镜像列表导出
    ///
    /// 镜像仓库镜像列表导出
    @inlinable
    public func describeAssetImageRegistryListExport(_ input: DescribeAssetImageRegistryListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageRegistryListExportResponse {
        try await self.client.execute(action: "DescribeAssetImageRegistryListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetImageRegistryListExport请求参数结构体
    public struct DescribeAssetImageRegistryListExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0
        public let offset: UInt64?
        
        /// 排序字段
        public let filters: [AssetFilters]?
        
        /// 排序字段
        public let by: String?
        
        /// 排序方式，asc，desc
        public let order: String?
        
        /// 是否仅展示repository版本最新的镜像，默认为false
        public let onlyShowLatest: Bool?
        
        public init (exportField: [String], limit: UInt64?, offset: UInt64?, filters: [AssetFilters]?, by: String?, order: String?, onlyShowLatest: Bool?) {
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
            self.onlyShowLatest = onlyShowLatest
        }
        
        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
            case onlyShowLatest = "OnlyShowLatest"
        }
    }
    
    /// DescribeAssetImageRegistryListExport返回参数结构体
    public struct DescribeAssetImageRegistryListExportResponse: TCResponseModel {
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
}