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
    /// 镜像木马列表导出
    ///
    /// 容器安全搜索查询镜像木马列表导出
    @inlinable
    public func describeAssetImageVirusListExport(_ input: DescribeAssetImageVirusListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAssetImageVirusListExportResponse > {
        self.client.execute(action: "DescribeAssetImageVirusListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 镜像木马列表导出
    ///
    /// 容器安全搜索查询镜像木马列表导出
    @inlinable
    public func describeAssetImageVirusListExport(_ input: DescribeAssetImageVirusListExportRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAssetImageVirusListExportResponse {
        try await self.client.execute(action: "DescribeAssetImageVirusListExport", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAssetImageVirusListExport请求参数结构体
    public struct DescribeAssetImageVirusListExportRequest: TCRequestModel {
        /// 列表支持字段
        public let exportField: [String]
        
        /// 镜像id
        public let imageID: String
        
        /// 过滤条件。
        /// <li>Name- String - 是否必填：否 - 镜像名称筛选，</li>
        /// <li>RiskLevel - String - 是否必填：否 - 风险等级  1,2,3,4</li>
        public let filters: [AssetFilters]?
        
        public init (exportField: [String], imageID: String, filters: [AssetFilters]?) {
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
    
    /// DescribeAssetImageVirusListExport返回参数结构体
    public struct DescribeAssetImageVirusListExportResponse: TCResponseModel {
        /// excel文件下载地址
        public let downloadUrl: String
        
        /// 任务ID
        public let jobId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case downloadUrl = "DownloadUrl"
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }
}
