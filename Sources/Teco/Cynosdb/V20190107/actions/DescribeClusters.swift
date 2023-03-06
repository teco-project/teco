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

extension Cynosdb {
    /// DescribeClusters请求参数结构体
    public struct DescribeClustersRequest: TCPaginatedRequest {
        /// 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        public let dbType: String?

        /// 返回数量，默认为 20，最大值为 100
        public let limit: Int64?

        /// 记录偏移量，默认值为0
        public let offset: Int64?

        /// 排序字段，取值范围：
        /// <li> CREATETIME：创建时间</li>
        /// <li> PERIODENDTIME：过期时间</li>
        public let orderBy: String?

        /// 排序类型，取值范围：
        /// <li> ASC：升序排序 </li>
        /// <li> DESC：降序排序 </li>
        public let orderByType: String?

        /// 搜索条件，若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
        public let filters: [QueryFilter]?

        public init(dbType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil) {
            self.dbType = dbType
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case dbType = "DbType"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClustersResponse) -> DescribeClustersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClustersRequest(dbType: self.dbType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType, filters: self.filters)
        }
    }

    /// DescribeClusters返回参数结构体
    public struct DescribeClustersResponse: TCPaginatedResponse {
        /// 集群数
        public let totalCount: Int64

        /// 集群列表
        public let clusterSet: [CynosdbCluster]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterSet = "ClusterSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [CynosdbCluster] {
            self.clusterSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(dbType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClustersResponse> {
        let input = DescribeClustersRequest(dbType: dbType, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, filters: filters)
        return self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable
    public func describeClusters(dbType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClustersResponse {
        let input = DescribeClustersRequest(dbType: dbType, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, filters: filters)
        return try await self.client.execute(action: "DescribeClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询集群列表
    @inlinable
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CynosdbCluster])> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    @inlinable @discardableResult
    public func describeClustersPaginated(_ input: DescribeClustersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClustersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusters, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询集群列表
    ///
    /// - Returns: `AsyncSequence`s of `CynosdbCluster` and `DescribeClustersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClustersPaginator(_ input: DescribeClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClustersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusters, logger: logger, on: eventLoop)
    }
}
