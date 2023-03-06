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

extension Dbdc {
    /// DescribeInstanceList请求参数结构体
    public struct DescribeInstanceListRequest: TCPaginatedRequest {
        /// 分页返回数量
        public let limit: Int64?

        /// 分页偏移量
        public let offset: Int64?

        /// 排序字段，createTime,instancename两者之一
        public let orderBy: String?

        /// 排序规则，desc,asc两者之一
        public let sortBy: String?

        /// 按产品过滤，0:CDB, 1:TDSQL
        public let productId: [Int64]?

        /// 按实例ID过滤
        public let instanceId: [String]?

        /// 按实例名称过滤
        public let instanceName: [String]?

        /// 按金融围笼ID过滤
        public let fenceId: [String]?

        /// 按实例状态过滤, -1:已隔离, 0:创建中, 1:运行中, 2:扩容中, 3:删除中
        public let status: [Int64]?

        /// 按所属集群ID过滤
        public let clusterId: [String]?

        public init(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, sortBy: String? = nil, productId: [Int64]? = nil, instanceId: [String]? = nil, instanceName: [String]? = nil, fenceId: [String]? = nil, status: [Int64]? = nil, clusterId: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.sortBy = sortBy
            self.productId = productId
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.fenceId = fenceId
            self.status = status
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case sortBy = "SortBy"
            case productId = "ProductId"
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case fenceId = "FenceId"
            case status = "Status"
            case clusterId = "ClusterId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeInstanceListResponse) -> DescribeInstanceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstanceListRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, sortBy: self.sortBy, productId: self.productId, instanceId: self.instanceId, instanceName: self.instanceName, fenceId: self.fenceId, status: self.status, clusterId: self.clusterId)
        }
    }

    /// DescribeInstanceList返回参数结构体
    public struct DescribeInstanceListResponse: TCPaginatedResponse {
        /// 独享集群列表
        public let instances: [DescribeInstanceDetail]

        /// 独享集群实例总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instances = "Instances"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DescribeInstanceDetail] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable
    public func describeInstanceList(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceListResponse> {
        self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable
    public func describeInstanceList(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceListResponse {
        try await self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable
    public func describeInstanceList(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, sortBy: String? = nil, productId: [Int64]? = nil, instanceId: [String]? = nil, instanceName: [String]? = nil, fenceId: [String]? = nil, status: [Int64]? = nil, clusterId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstanceListResponse> {
        let input = DescribeInstanceListRequest(limit: limit, offset: offset, orderBy: orderBy, sortBy: sortBy, productId: productId, instanceId: instanceId, instanceName: instanceName, fenceId: fenceId, status: status, clusterId: clusterId)
        return self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable
    public func describeInstanceList(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, sortBy: String? = nil, productId: [Int64]? = nil, instanceId: [String]? = nil, instanceName: [String]? = nil, fenceId: [String]? = nil, status: [Int64]? = nil, clusterId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstanceListResponse {
        let input = DescribeInstanceListRequest(limit: limit, offset: offset, orderBy: orderBy, sortBy: sortBy, productId: productId, instanceId: instanceId, instanceName: instanceName, fenceId: fenceId, status: status, clusterId: clusterId)
        return try await self.client.execute(action: "DescribeInstanceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable
    public func describeInstanceListPaginated(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DescribeInstanceDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceList, logger: logger, on: eventLoop)
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    @inlinable @discardableResult
    public func describeInstanceListPaginated(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstanceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstanceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询独享集群实例列表
    ///
    /// 本接口用于查询独享集群实例列表
    ///
    /// - Returns: `AsyncSequence`s of `DescribeInstanceDetail` and `DescribeInstanceListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstanceListPaginator(_ input: DescribeInstanceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstanceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstanceList, logger: logger, on: eventLoop)
    }
}
