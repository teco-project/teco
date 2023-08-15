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
    /// CreateEmergencyVulExportJob请求参数结构体
    public struct CreateEmergencyVulExportJobRequest: TCRequestModel {
        /// 需要返回的数量，默认为50000，最大值为50000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Level- String - 是否必填：否 - 威胁等级，CRITICAL:严重 HIGH:高/MIDDLE:中/LOW:低
        /// - Tags- string - 是否必填：否 - 漏洞标签，POC，EXP。
        /// - CanBeFixed- string - 是否必填：否 - 是否可修复true,false。
        /// - CVEID- string - 是否必填：否 - CVE编号
        /// - ImageID- string - 是否必填：否 - 镜像ID
        /// - ImageName- String -是否必填: 否 - 镜像名称
        /// - ContainerID- string -是否必填: 否 - 容器ID
        /// - ContainerName- string -是否必填: 否 - 容器名称
        /// - ComponentName- string -是否必填: 否 - 组件名称
        /// - ComponentVersion- string -是否必填: 否 - 组件版本
        /// - Name- string -是否必填: 否 - 漏洞名称
        public let filters: [RunTimeFilters]?

        /// 排序方式
        public let order: String?

        /// 排序字段
        public let by: String?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case order = "Order"
            case by = "By"
        }
    }

    /// CreateEmergencyVulExportJob返回参数结构体
    public struct CreateEmergencyVulExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建应急漏洞导出任务
    @inlinable
    public func createEmergencyVulExportJob(_ input: CreateEmergencyVulExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmergencyVulExportJobResponse> {
        self.client.execute(action: "CreateEmergencyVulExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建应急漏洞导出任务
    @inlinable
    public func createEmergencyVulExportJob(_ input: CreateEmergencyVulExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmergencyVulExportJobResponse {
        try await self.client.execute(action: "CreateEmergencyVulExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建应急漏洞导出任务
    @inlinable
    public func createEmergencyVulExportJob(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateEmergencyVulExportJobResponse> {
        self.createEmergencyVulExportJob(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 创建应急漏洞导出任务
    @inlinable
    public func createEmergencyVulExportJob(limit: UInt64? = nil, offset: UInt64? = nil, filters: [RunTimeFilters]? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateEmergencyVulExportJobResponse {
        try await self.createEmergencyVulExportJob(.init(limit: limit, offset: offset, filters: filters, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
