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
    /// CreateAssetImageVirusExportJob请求参数结构体
    public struct CreateAssetImageVirusExportJobRequest: TCRequestModel {
        /// 导出字段
        public let exportField: [String]

        /// 镜像id
        public let imageID: String

        /// 需要返回的数量，默认为10，最大值为10000
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let limit: UInt64?

        /// 过滤参数,"Filters":[{"Name":"Status","Values":["2"]}]
        public let offset: UInt64?

        /// 排序字段
        public let by: String?

        /// 升序降序,asc desc
        public let order: String?

        public init(exportField: [String], imageID: String, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil) {
            self.exportField = exportField
            self.imageID = imageID
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.by = by
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case exportField = "ExportField"
            case imageID = "ImageID"
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case by = "By"
            case order = "Order"
        }
    }

    /// CreateAssetImageVirusExportJob返回参数结构体
    public struct CreateAssetImageVirusExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建本地镜像木马列表导出任务
    @inlinable
    public func createAssetImageVirusExportJob(_ input: CreateAssetImageVirusExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetImageVirusExportJobResponse> {
        self.client.execute(action: "CreateAssetImageVirusExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建本地镜像木马列表导出任务
    @inlinable
    public func createAssetImageVirusExportJob(_ input: CreateAssetImageVirusExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetImageVirusExportJobResponse {
        try await self.client.execute(action: "CreateAssetImageVirusExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建本地镜像木马列表导出任务
    @inlinable
    public func createAssetImageVirusExportJob(exportField: [String], imageID: String, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAssetImageVirusExportJobResponse> {
        self.createAssetImageVirusExportJob(.init(exportField: exportField, imageID: imageID, filters: filters, limit: limit, offset: offset, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }

    /// 创建本地镜像木马列表导出任务
    @inlinable
    public func createAssetImageVirusExportJob(exportField: [String], imageID: String, filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAssetImageVirusExportJobResponse {
        try await self.createAssetImageVirusExportJob(.init(exportField: exportField, imageID: imageID, filters: filters, limit: limit, offset: offset, by: by, order: order), region: region, logger: logger, on: eventLoop)
    }
}
