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

extension Postgres {
    /// DescribeServerlessDBInstances请求参数结构体
    public struct DescribeServerlessDBInstancesRequest: TCPaginatedRequest {
        /// 查询条件
        public let filter: [Filter]?

        /// 查询个数
        public let limit: UInt64?

        /// 偏移量
        public let offset: UInt64?

        /// 排序指标，目前支持实例创建时间CreateTime
        public let orderBy: String?

        /// 排序方式，包括升序、降序
        public let orderByType: String?

        public init(filter: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.filter = filter
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServerlessDBInstancesResponse) -> DescribeServerlessDBInstancesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServerlessDBInstancesRequest(filter: self.filter, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeServerlessDBInstances返回参数结构体
    public struct DescribeServerlessDBInstancesResponse: TCPaginatedResponse {
        /// 查询结果数
        public let totalCount: Int64

        /// 查询结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbInstanceSet: [ServerlessDBInstance]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbInstanceSet = "DBInstanceSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ServerlessDBInstance] {
            self.dbInstanceSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable
    public func describeServerlessDBInstances(_ input: DescribeServerlessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerlessDBInstancesResponse> {
        self.client.execute(action: "DescribeServerlessDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable
    public func describeServerlessDBInstances(_ input: DescribeServerlessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerlessDBInstancesResponse {
        try await self.client.execute(action: "DescribeServerlessDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable
    public func describeServerlessDBInstances(filter: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServerlessDBInstancesResponse> {
        self.describeServerlessDBInstances(.init(filter: filter, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable
    public func describeServerlessDBInstances(filter: [Filter]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServerlessDBInstancesResponse {
        try await self.describeServerlessDBInstances(.init(filter: filter, limit: limit, offset: offset, orderBy: orderBy, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable
    public func describeServerlessDBInstancesPaginated(_ input: DescribeServerlessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ServerlessDBInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeServerlessDBInstances, logger: logger, on: eventLoop)
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    @inlinable @discardableResult
    public func describeServerlessDBInstancesPaginated(_ input: DescribeServerlessDBInstancesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServerlessDBInstancesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServerlessDBInstances, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询ServerlessDB实例列表
    ///
    /// 用于查询一个或多个serverlessDB实例的详细信息
    ///
    /// - Returns: `AsyncSequence`s of `ServerlessDBInstance` and `DescribeServerlessDBInstancesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServerlessDBInstancesPaginator(_ input: DescribeServerlessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServerlessDBInstancesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServerlessDBInstances, logger: logger, on: eventLoop)
    }
}
