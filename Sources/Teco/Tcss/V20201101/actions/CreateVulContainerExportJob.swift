//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// CreateVulContainerExportJob请求参数结构体
    public struct CreateVulContainerExportJobRequest: TCRequestModel {
        /// 漏洞PocID
        public let pocID: String

        /// 需要返回的数量，默认为50000，最大值为50000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>OnlyAffectedNewestImage- Bool- 是否必填：否 - 仅展示影响最新版本镜像的漏洞</li>
        /// <li>ContainerID- string - 是否必填：否 - 容器ID</li>
        /// <li>ContainerName- String -是否必填: 否 - 容器名称</li>
        public let filters: [RunTimeFilters]?

        public init(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil) {
            self.pocID = pocID
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// CreateVulContainerExportJob返回参数结构体
    public struct CreateVulContainerExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建受漏洞影响的容器导出任务
    @inlinable
    public func createVulContainerExportJob(_ input: CreateVulContainerExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulContainerExportJobResponse> {
        self.client.execute(action: "CreateVulContainerExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建受漏洞影响的容器导出任务
    @inlinable
    public func createVulContainerExportJob(_ input: CreateVulContainerExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulContainerExportJobResponse {
        try await self.client.execute(action: "CreateVulContainerExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建受漏洞影响的容器导出任务
    @inlinable
    public func createVulContainerExportJob(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateVulContainerExportJobResponse> {
        self.createVulContainerExportJob(CreateVulContainerExportJobRequest(pocID: pocID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 创建受漏洞影响的容器导出任务
    @inlinable
    public func createVulContainerExportJob(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateVulContainerExportJobResponse {
        try await self.createVulContainerExportJob(CreateVulContainerExportJobRequest(pocID: pocID, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
