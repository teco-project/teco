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
    /// CreateRiskDnsEventExportJob请求参数结构体
    public struct CreateRiskDnsEventExportJobRequest: TCRequestModel {
        /// 过滤条件。
        /// - EventStatus- String - 是否必填：否 - 事件状态，待处理：EVENT_UNDEAL，EVENT_DEALED：已处理，已忽略：EVENT_IGNORE， EVENT_ADD_WHITE：已加白
        /// - ContainerStatus- String - 是否必填：否 - 容器运行状态筛选，已创建：CREATED,正常运行：RUNNING, 暂定运行：PAUSED, 停止运行：	STOPPED，重启中：RESTARTING, 迁移中：REMOVING, 销毁：DESTROYED
        /// - ContainerNetStatus- String -是否必填: 否 -  容器网络状态筛选 未隔离：NORMAL，已隔离：ISOLATED，隔离失败：ISOLATE_FAILED，解除隔离失败：RESTORE_FAILED，解除隔离中：RESTORING，隔离中：ISOLATING
        /// - EventType - String -是否必填: 否 -  事件类型，恶意域名请求：DOMAIN，恶意IP请求：IP
        /// - TimeRange- String -是否必填: 否 -  时间范围，第一个值表示开始时间，第二个值表示结束时间
        /// - RiskDns- string - 是否必填：否 - 恶意域名。
        /// - RiskIP- string - 是否必填：否 - 恶意IP。
        /// - ContainerName- string - 是否必填：否 - 容器名称。
        /// - ContainerID- string - 是否必填：否 - 容器ID。
        /// - ImageName- string - 是否必填：否 - 镜像名称。
        /// - ImageID- string - 是否必填：否 - 镜像ID。
        /// - HostName- string - 是否必填：否 - 主机名称。
        /// - HostIP- string - 是否必填：否 - 内网IP。
        /// - PublicIP- string - 是否必填：否 - 外网IP。
        public let filters: [RunTimeFilters]?

        /// 需要返回的数量，最大值为100000
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式：asc/desc
        public let order: String?

        /// 排序字段：事件数量：EventCount
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

    /// CreateRiskDnsEventExportJob返回参数结构体
    public struct CreateRiskDnsEventExportJobResponse: TCResponseModel {
        /// 导出任务ID，前端拿着任务ID查询任务进度
        public let jobId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }

    /// 创建恶意请求事件导出任务
    @inlinable
    public func createRiskDnsEventExportJob(_ input: CreateRiskDnsEventExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRiskDnsEventExportJobResponse> {
        self.client.execute(action: "CreateRiskDnsEventExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建恶意请求事件导出任务
    @inlinable
    public func createRiskDnsEventExportJob(_ input: CreateRiskDnsEventExportJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRiskDnsEventExportJobResponse {
        try await self.client.execute(action: "CreateRiskDnsEventExportJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建恶意请求事件导出任务
    @inlinable
    public func createRiskDnsEventExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateRiskDnsEventExportJobResponse> {
        self.createRiskDnsEventExportJob(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 创建恶意请求事件导出任务
    @inlinable
    public func createRiskDnsEventExportJob(filters: [RunTimeFilters]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRiskDnsEventExportJobResponse {
        try await self.createRiskDnsEventExportJob(.init(filters: filters, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }
}
