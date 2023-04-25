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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Sqlserver {
    /// DescribeDBs请求参数结构体
    public struct DescribeDBsRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceIdSet: [String]

        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: UInt64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: UInt64?

        /// 数据库名称
        public let name: String?

        /// 排序规则（desc-降序，asc-升序），默认desc
        public let orderByType: String?

        public init(instanceIdSet: [String], limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderByType: String? = nil) {
            self.instanceIdSet = instanceIdSet
            self.limit = limit
            self.offset = offset
            self.name = name
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceIdSet = "InstanceIdSet"
            case limit = "Limit"
            case offset = "Offset"
            case name = "Name"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDBsResponse) -> DescribeDBsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDBsRequest(instanceIdSet: self.instanceIdSet, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), name: self.name, orderByType: self.orderByType)
        }
    }

    /// DescribeDBs返回参数结构体
    public struct DescribeDBsResponse: TCPaginatedResponse {
        /// 数据库数量
        public let totalCount: Int64

        /// 实例数据库列表
        public let dbInstances: [InstanceDBDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case dbInstances = "DBInstances"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InstanceDBDetail] {
            self.dbInstances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(_ input: DescribeDBsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBsResponse> {
        self.client.execute(action: "DescribeDBs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(_ input: DescribeDBsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBsResponse {
        try await self.client.execute(action: "DescribeDBs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(instanceIdSet: [String], limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBsResponse> {
        self.describeDBs(.init(instanceIdSet: instanceIdSet, limit: limit, offset: offset, name: name, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBs(instanceIdSet: [String], limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBsResponse {
        try await self.describeDBs(.init(instanceIdSet: instanceIdSet, limit: limit, offset: offset, name: name, orderByType: orderByType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable
    public func describeDBsPaginated(_ input: DescribeDBsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceDBDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeDBs, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    @inlinable @discardableResult
    public func describeDBsPaginated(_ input: DescribeDBsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDBsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDBs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库列表
    ///
    /// 本接口（DescribeDBs）用于查询数据库列表。
    ///
    /// - Returns: `AsyncSequence`s of `InstanceDBDetail` and `DescribeDBsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDBsPaginator(_ input: DescribeDBsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDBsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDBs, logger: logger, on: eventLoop)
    }
}
