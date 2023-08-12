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
import TecoPaginationHelpers

extension Cynosdb {
    /// DescribeInstances请求参数结构体
    public struct DescribeInstancesRequest: TCPaginatedRequest {
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

        /// 引擎类型：目前支持“MYSQL”， “POSTGRESQL”
        public let dbType: String?

        /// 实例状态, 可选值:
        /// creating 创建中
        /// running 运行中
        /// isolating 隔离中
        /// isolated 已隔离
        /// activating 恢复中
        /// offlining 下线中
        /// offlined 已下线
        public let status: String?

        /// 实例id列表
        public let instanceIds: [String]?

        public init(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil, dbType: String? = nil, status: String? = nil, instanceIds: [String]? = nil) {
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.filters = filters
            self.dbType = dbType
            self.status = status
            self.instanceIds = instanceIds
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case filters = "Filters"
            case dbType = "DbType"
            case status = "Status"
            case instanceIds = "InstanceIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInstancesResponse) -> DescribeInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInstancesRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType, filters: self.filters, dbType: self.dbType, status: self.status, instanceIds: self.instanceIds)
        }
    }

    /// DescribeInstances返回参数结构体
    public struct DescribeInstancesResponse: TCPaginatedResponse {
        /// 实例个数
        public let totalCount: Int64

        /// 实例列表
        public let instanceSet: [CynosdbInstance]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case instanceSet = "InstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CynosdbInstance`` list from the paginated response.
        public func getItems() -> [CynosdbInstance] {
            self.instanceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.client.execute(action: "DescribeInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil, dbType: String? = nil, status: String? = nil, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInstancesResponse> {
        self.describeInstances(.init(limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, filters: filters, dbType: dbType, status: status, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstances(limit: Int64? = nil, offset: Int64? = nil, orderBy: String? = nil, orderByType: String? = nil, filters: [QueryFilter]? = nil, dbType: String? = nil, status: String? = nil, instanceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInstancesResponse {
        try await self.describeInstances(.init(limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType, filters: filters, dbType: dbType, status: status, instanceIds: instanceIds), region: region, logger: logger, on: eventLoop)
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CynosdbInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    @inlinable @discardableResult
    public func describeInstancesPaginated(_ input: DescribeInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询实例的列表
    ///
    /// 本接口(DescribeInstances)用于查询实例列表。
    ///
    /// - Returns: `AsyncSequence`s of ``CynosdbInstance`` and ``DescribeInstancesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInstancesPaginator(_ input: DescribeInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInstances, logger: logger, on: eventLoop)
    }
}
