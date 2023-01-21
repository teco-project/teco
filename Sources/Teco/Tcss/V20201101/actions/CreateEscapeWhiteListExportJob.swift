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

extension Tcss {
    /// CreateEscapeWhiteListExportJob请求参数结构体
    public struct CreateEscapeWhiteListExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// <li>EventType- String - 是否必填：否 - 加白事件类型，ESCAPE_CGROUPS：利用cgroup机制逃逸，ESCAPE_TAMPER_SENSITIVE_FILE：篡改敏感文件逃逸， ESCAPE_DOCKER_API：访问Docker API接口逃逸，ESCAPE_VUL_OCCURRED：逃逸漏洞利用，MOUNT_SENSITIVE_PTAH：敏感路径挂载，PRIVILEGE_CONTAINER_START：特权容器， PRIVILEGE：程序提权逃逸</li>
        /// <li>ImageName- string - 是否必填：否 - 镜像名称。</li>
        /// <li>ImageID- string - 是否必填：否 - 镜像ID。</li>
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，默认为10000，最大值为10000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：主机数量：HostCount，容器数量：ContainerCount，更新时间：UpdateTime
        public let by: String?

        public init(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.filters = filters
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }
    }

    /// CreateEscapeWhiteListExportJob返回参数结构体
    public struct CreateEscapeWhiteListExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建逃逸白名单导出任务
    @inlinable
    public func createEscapeWhiteListExportJob(_ input: CreateEscapeWhiteListExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEscapeWhiteListExportJobResponse> {
        self.client.execute(action: "CreateEscapeWhiteListExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建逃逸白名单导出任务
    @inlinable
    public func createEscapeWhiteListExportJob(_ input: CreateEscapeWhiteListExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEscapeWhiteListExportJobResponse {
        try await self.client.execute(action: "CreateEscapeWhiteListExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建逃逸白名单导出任务
    @inlinable
    public func createEscapeWhiteListExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEscapeWhiteListExportJobResponse> {
        self.createEscapeWhiteListExportJob(CreateEscapeWhiteListExportJobRequest(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 创建逃逸白名单导出任务
    @inlinable
    public func createEscapeWhiteListExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEscapeWhiteListExportJobResponse {
        try await self.createEscapeWhiteListExportJob(CreateEscapeWhiteListExportJobRequest(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
