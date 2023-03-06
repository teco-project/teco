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
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 需要过滤的账户列表
        public let accountNames: [String]?

        /// 数据库类型，取值范围:
        /// <li> MYSQL </li>
        /// 该参数已废用
        public let dbType: String?

        /// 需要过滤的账户列表
        public let hosts: [String]?

        /// 限制量
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        public init(clusterId: String, accountNames: [String]? = nil, dbType: String? = nil, hosts: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.clusterId = clusterId
            self.accountNames = accountNames
            self.dbType = dbType
            self.hosts = hosts
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case accountNames = "AccountNames"
            case dbType = "DbType"
            case hosts = "Hosts"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAccountsResponse) -> DescribeAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccountsRequest(clusterId: self.clusterId, accountNames: self.accountNames, dbType: self.dbType, hosts: self.hosts, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCPaginatedResponse {
        /// 数据库账号列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let accountSet: [Account]?

        /// 账号总数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case accountSet = "AccountSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Account] {
            self.accountSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable
    public func describeAccounts(clusterId: String, accountNames: [String]? = nil, dbType: String? = nil, hosts: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        let input = DescribeAccountsRequest(clusterId: clusterId, accountNames: accountNames, dbType: dbType, hosts: hosts, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable
    public func describeAccounts(clusterId: String, accountNames: [String]? = nil, dbType: String? = nil, hosts: [String]? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        let input = DescribeAccountsRequest(clusterId: clusterId, accountNames: accountNames, dbType: dbType, hosts: hosts, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Account])> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    @inlinable @discardableResult
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询数据库管理账号
    ///
    /// 本接口(DescribeAccounts)用于查询数据库管理账号。
    ///
    /// - Returns: `AsyncSequence`s of `Account` and `DescribeAccountsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeAccountsPaginator(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeAccountsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
    }
}
