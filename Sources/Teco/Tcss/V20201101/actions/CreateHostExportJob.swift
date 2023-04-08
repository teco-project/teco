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
    /// CreateHostExportJob请求参数结构体
    public struct CreateHostExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>Status - String - 是否必填：否 - agent状态筛选，"ALL":"全部"(或不传该字段),"UNINSTALL"："未安装","OFFLINE"："离线", "ONLINE"："防护中"</li>
        /// <li>HostName - String - 是否必填：否 - 主机名筛选</li>
        /// <li>Group- String - 是否必填：否 - 主机群组搜索</li>
        /// <li>HostIP- string - 是否必填：否 - 主机ip搜索</li>
        /// <li>HostID- string - 是否必填：否 - 主机id搜索</li>
        /// <li>DockerVersion- string - 是否必填：否 - docker版本搜索</li>
        /// <li>MachineType- string - 是否必填：否 - 主机来源MachineType搜索，"ALL":"全部"(或不传该字段),主机来源：["CVM", "ECM", "LH", "BM"]  中的之一为腾讯云服务器；["Other"]之一非腾讯云服务器；</li>
        /// <li>DockerStatus- string - 是否必填：否 - docker安装状态，"ALL":"全部"(或不传该字段),"INSTALL":"已安装","UNINSTALL":"未安装"</li>
        /// <li>ProjectID- string - 是否必填：否 - 所属项目id搜索</li>
        /// <li>Tag:xxx(tag:key)- string- 是否必填：否 - 标签键值搜索 示例Filters":[{"Name":"tag:tke-kind","Values":["service"]}]</li>
        public let filters: [AssetFilters]?

        /// 偏移量，默认为0。
        public let limit: UInt64?

        /// 需要返回的数量，默认为10，最大值为10000
        public let offset: UInt64?

        /// 排序字段
        public let by: String?

        /// 升序降序,asc desc
        public let order: String?

        /// 导出字段
        public let exportField: [String]?

        public init(filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, exportField: [String]? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.by = by
            self.order = order
            self.exportField = exportField
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case by = "By"
            case order = "Order"
            case exportField = "ExportField"
        }
    }

    /// CreateHostExportJob返回参数结构体
    public struct CreateHostExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建主机列表导出任务
    @inlinable
    public func createHostExportJob(_ input: CreateHostExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHostExportJobResponse> {
        self.client.execute(action: "CreateHostExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建主机列表导出任务
    @inlinable
    public func createHostExportJob(_ input: CreateHostExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHostExportJobResponse {
        try await self.client.execute(action: "CreateHostExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建主机列表导出任务
    @inlinable
    public func createHostExportJob(filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateHostExportJobResponse> {
        self.createHostExportJob(.init(filters: filters, limit: limit, offset: offset, by: by, order: order, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }

    /// 创建主机列表导出任务
    @inlinable
    public func createHostExportJob(filters: [AssetFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, by: String? = nil, order: String? = nil, exportField: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateHostExportJobResponse {
        try await self.createHostExportJob(.init(filters: filters, limit: limit, offset: offset, by: by, order: order, exportField: exportField), region: region, logger: logger, on: eventLoop)
    }
}
