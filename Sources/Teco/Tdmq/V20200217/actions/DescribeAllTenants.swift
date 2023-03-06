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

import TecoPaginationHelpers

extension Tdmq {
    /// DescribeAllTenants请求参数结构体
    public struct DescribeAllTenantsRequest: TCPaginatedRequest {
        /// 查询偏移量
        public let offset: Int64

        /// 查询限制条数
        public let limit: Int64

        /// 物理集群名称
        public let clusterName: String?

        /// 虚拟集群ID
        public let tenantId: String?

        /// 虚拟集群名称
        public let tenantName: String?

        /// 协议类型数组
        public let types: [String]?

        /// 排序字段名，支持createTime，updateTime
        public let sortBy: String?

        /// 升序排列ASC，降序排列DESC
        public let sortOrder: String?

        public init(offset: Int64, limit: Int64, clusterName: String? = nil, tenantId: String? = nil, tenantName: String? = nil, types: [String]? = nil, sortBy: String? = nil, sortOrder: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.clusterName = clusterName
            self.tenantId = tenantId
            self.tenantName = tenantName
            self.types = types
            self.sortBy = sortBy
            self.sortOrder = sortOrder
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case clusterName = "ClusterName"
            case tenantId = "TenantId"
            case tenantName = "TenantName"
            case types = "Types"
            case sortBy = "SortBy"
            case sortOrder = "SortOrder"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAllTenantsResponse) -> DescribeAllTenantsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAllTenantsRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, clusterName: self.clusterName, tenantId: self.tenantId, tenantName: self.tenantName, types: self.types, sortBy: self.sortBy, sortOrder: self.sortOrder)
        }
    }

    /// DescribeAllTenants返回参数结构体
    public struct DescribeAllTenantsResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: Int64

        /// 虚拟集群列表
        public let tenants: [InternalTenant]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case tenants = "Tenants"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InternalTenant] {
            self.tenants
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenants(_ input: DescribeAllTenantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllTenantsResponse> {
        self.client.execute(action: "DescribeAllTenants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenants(_ input: DescribeAllTenantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllTenantsResponse {
        try await self.client.execute(action: "DescribeAllTenants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenants(offset: Int64, limit: Int64, clusterName: String? = nil, tenantId: String? = nil, tenantName: String? = nil, types: [String]? = nil, sortBy: String? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAllTenantsResponse> {
        let input = DescribeAllTenantsRequest(offset: offset, limit: limit, clusterName: clusterName, tenantId: tenantId, tenantName: tenantName, types: types, sortBy: sortBy, sortOrder: sortOrder)
        return self.client.execute(action: "DescribeAllTenants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenants(offset: Int64, limit: Int64, clusterName: String? = nil, tenantId: String? = nil, tenantName: String? = nil, types: [String]? = nil, sortBy: String? = nil, sortOrder: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAllTenantsResponse {
        let input = DescribeAllTenantsRequest(offset: offset, limit: limit, clusterName: clusterName, tenantId: tenantId, tenantName: tenantName, types: types, sortBy: sortBy, sortOrder: sortOrder)
        return try await self.client.execute(action: "DescribeAllTenants", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenantsPaginated(_ input: DescribeAllTenantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InternalTenant])> {
        self.client.paginate(input: input, region: region, command: self.describeAllTenants, logger: logger, on: eventLoop)
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenantsPaginated(_ input: DescribeAllTenantsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAllTenantsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAllTenants, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取某个租户的虚拟集群列表
    @inlinable
    public func describeAllTenantsPaginator(_ input: DescribeAllTenantsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAllTenantsRequest, DescribeAllTenantsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAllTenantsRequest, DescribeAllTenantsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAllTenantsRequest, DescribeAllTenantsResponse>.ResultSequence(input: input, region: region, command: self.describeAllTenants, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAllTenantsRequest, DescribeAllTenantsResponse>.ResponseSequence(input: input, region: region, command: self.describeAllTenants, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
