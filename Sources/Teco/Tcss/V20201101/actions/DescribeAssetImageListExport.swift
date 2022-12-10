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
    /// 查询镜像列表导出
    ///
    /// 容器安全搜索查询镜像列表导出
    @inlinable
    public func describeAssetImageListExport(_ input: DescribeAssetImageListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageListExportResponse > {
        self.client.execute(action: "DescribeAssetImageListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询镜像列表导出
    ///
    /// 容器安全搜索查询镜像列表导出
    @inlinable
    public func describeAssetImageListExport(_ input: DescribeAssetImageListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageListExportResponse {
        try await self.client.execute(action: "DescribeAssetImageListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetImageListExport请求参数结构体
    public struct DescribeAssetImageListExportRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 过滤条件。
        /// <li>ImageName- String - 是否必填：否 - 镜像名称筛选，</li>
        /// <li>ScanStatus - String - 是否必填：否 - 镜像扫描状态notScan，scanning，scanned，scanErr</li>
        /// <li>ImageID- String - 是否必填：否 - 镜像ID筛选，</li>
        /// <li>SecurityRisk- String - 是否必填：否 - 安全风险，VulCnt 、VirusCnt、RiskCnt、IsTrustImage</li>
        public let filters: [AssetFilters]?
        
        /// 排序字段
        public let by: String?
        
        /// 排序方式 asc,desc
        public let order: String?
        
        public init (exportField: [String], limit: UInt64?, offset: UInt64?, filters: [AssetFilters]?, by: String?, order: String?) {
            self.exportField = exportField
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.by = by
            self.order = order
        }
        
        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case by = "By"
            case order = "Order"
        }
    }
    
    /// DescribeAssetImageListExport返回参数结构体
    public struct DescribeAssetImageListExportResponse: TCResponseModel {
        /// excel文件下载地址
        public let downloadUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }
}