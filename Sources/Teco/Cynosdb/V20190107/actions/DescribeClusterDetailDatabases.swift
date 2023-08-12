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
    /// DescribeClusterDetailDatabases请求参数结构体
    public struct DescribeClusterDetailDatabasesRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 偏移量，默认0
        public let offset: Int64?

        /// 返回数量，默认20,最大100
        public let limit: Int64?

        /// 数据库名称
        public let dbName: String?

        public init(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, dbName: String? = nil) {
            self.clusterId = clusterId
            self.offset = offset
            self.limit = limit
            self.dbName = dbName
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case offset = "Offset"
            case limit = "Limit"
            case dbName = "DbName"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterDetailDatabasesResponse) -> DescribeClusterDetailDatabasesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterDetailDatabasesRequest(clusterId: self.clusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, dbName: self.dbName)
        }
    }

    /// DescribeClusterDetailDatabases返回参数结构体
    public struct DescribeClusterDetailDatabasesResponse: TCPaginatedResponse {
        /// 数据库信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dbInfos: [DbInfo]?

        /// 总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dbInfos = "DbInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DbInfo`` list from the paginated response.
        public func getItems() -> [DbInfo] {
            self.dbInfos ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据库列表
    @inlinable
    public func describeClusterDetailDatabases(_ input: DescribeClusterDetailDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterDetailDatabasesResponse> {
        self.client.execute(action: "DescribeClusterDetailDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    @inlinable
    public func describeClusterDetailDatabases(_ input: DescribeClusterDetailDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterDetailDatabasesResponse {
        try await self.client.execute(action: "DescribeClusterDetailDatabases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    @inlinable
    public func describeClusterDetailDatabases(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, dbName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterDetailDatabasesResponse> {
        self.describeClusterDetailDatabases(.init(clusterId: clusterId, offset: offset, limit: limit, dbName: dbName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    @inlinable
    public func describeClusterDetailDatabases(clusterId: String, offset: Int64? = nil, limit: Int64? = nil, dbName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterDetailDatabasesResponse {
        try await self.describeClusterDetailDatabases(.init(clusterId: clusterId, offset: offset, limit: limit, dbName: dbName), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    @inlinable
    public func describeClusterDetailDatabasesPaginated(_ input: DescribeClusterDetailDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DbInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterDetailDatabases, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    @inlinable @discardableResult
    public func describeClusterDetailDatabasesPaginated(_ input: DescribeClusterDetailDatabasesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterDetailDatabasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterDetailDatabases, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// - Returns: `AsyncSequence`s of `DbInfo` and `DescribeClusterDetailDatabasesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterDetailDatabasesPaginator(_ input: DescribeClusterDetailDatabasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterDetailDatabasesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterDetailDatabases, logger: logger, on: eventLoop)
    }
}
