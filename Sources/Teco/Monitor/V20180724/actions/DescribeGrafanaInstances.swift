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

extension Monitor {
    /// DescribeGrafanaInstances请求参数结构体
    public struct DescribeGrafanaInstancesRequest: TCRequest {
        /// 查询偏移量
        public let offset: Int64

        /// 查询数量
        public let limit: Int64

        /// Grafana 实例 ID 数组
        public let instanceIds: [String]?

        /// Grafana 实例名，支持前缀模糊搜索
        public let instanceName: String?

        /// 查询状态
        public let instanceStatus: [Int64]?

        /// 标签过滤数组
        public let tagFilters: [PrometheusTag]?

        public init(offset: Int64, limit: Int64, instanceIds: [String]? = nil, instanceName: String? = nil, instanceStatus: [Int64]? = nil, tagFilters: [PrometheusTag]? = nil) {
            self.offset = offset
            self.limit = limit
            self.instanceIds = instanceIds
            self.instanceName = instanceName
            self.instanceStatus = instanceStatus
            self.tagFilters = tagFilters
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case instanceIds = "InstanceIds"
            case instanceName = "InstanceName"
            case instanceStatus = "InstanceStatus"
            case tagFilters = "TagFilters"
        }
    }

    /// DescribeGrafanaInstances返回参数结构体
    public struct DescribeGrafanaInstancesResponse: TCResponse {
        /// 已废弃，请使用 Instances
        public let instanceSet: [GrafanaInstanceInfo]

        /// 符合查询条件的实例总数
        public let totalCount: Int64

        /// 实例列表
        public let instances: [GrafanaInstanceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceSet = "InstanceSet"
            case totalCount = "TotalCount"
            case instances = "Instances"
            case requestId = "RequestId"
        }
    }

    /// 列出用户所有的 Grafana 服务
    @inlinable
    public func describeGrafanaInstances(_ input: DescribeGrafanaInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaInstancesResponse> {
        self.client.execute(action: "DescribeGrafanaInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出用户所有的 Grafana 服务
    @inlinable
    public func describeGrafanaInstances(_ input: DescribeGrafanaInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaInstancesResponse {
        try await self.client.execute(action: "DescribeGrafanaInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出用户所有的 Grafana 服务
    @inlinable
    public func describeGrafanaInstances(offset: Int64, limit: Int64, instanceIds: [String]? = nil, instanceName: String? = nil, instanceStatus: [Int64]? = nil, tagFilters: [PrometheusTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGrafanaInstancesResponse> {
        self.describeGrafanaInstances(.init(offset: offset, limit: limit, instanceIds: instanceIds, instanceName: instanceName, instanceStatus: instanceStatus, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }

    /// 列出用户所有的 Grafana 服务
    @inlinable
    public func describeGrafanaInstances(offset: Int64, limit: Int64, instanceIds: [String]? = nil, instanceName: String? = nil, instanceStatus: [Int64]? = nil, tagFilters: [PrometheusTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGrafanaInstancesResponse {
        try await self.describeGrafanaInstances(.init(offset: offset, limit: limit, instanceIds: instanceIds, instanceName: instanceName, instanceStatus: instanceStatus, tagFilters: tagFilters), region: region, logger: logger, on: eventLoop)
    }
}
