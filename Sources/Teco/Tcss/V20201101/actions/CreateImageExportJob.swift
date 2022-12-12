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
    /// CreateImageExportJob请求参数结构体
    public struct CreateImageExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>ImageName- String - 是否必填：否 - 镜像名称筛选，</li>
        /// <li>ScanStatus - String - 是否必填：否 - 镜像扫描状态notScan，scanning，scanned，scanErr</li>
        /// <li>ImageID- String - 是否必填：否 - 镜像ID筛选，</li>
        /// <li>SecurityRisk- String - 是否必填：否 - 安全风险，VulCnt 、VirusCnt、RiskCnt、IsTrustImage</li>
        public let filters: [RunTimeFilters]?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?
        
        /// 排序字段
        public let by: String?
        
        /// 排序方式 asc,desc
        public let order: String?
        
        /// 导出字段
        public let exportField: [String]?
        
        public init (filters: [RunTimeFilters]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, by: String? = nil, order: String? = nil, exportField: [String]? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.by = by
            self.order = order
            self.exportField = exportField
        }
        
        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case by = "By"
            case order = "Order"
            case exportField = "ExportField"
        }
    }
    
    /// CreateImageExportJob返回参数结构体
    public struct CreateImageExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String
        
        /// excel文件下载地址
        public let downloadUrl: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case downloadUrl = "DownloadUrl"
            case requestId = "RequestId"
        }
    }
    
    /// 创建镜像导出任务
    @inlinable
    public func createImageExportJob(_ input: CreateImageExportJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateImageExportJobResponse > {
        self.client.execute(action: "CreateImageExportJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建镜像导出任务
    @inlinable
    public func createImageExportJob(_ input: CreateImageExportJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateImageExportJobResponse {
        try await self.client.execute(action: "CreateImageExportJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
