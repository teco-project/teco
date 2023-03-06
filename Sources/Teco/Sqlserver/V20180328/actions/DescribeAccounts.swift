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

extension Sqlserver {
    /// DescribeAccounts请求参数结构体
    public struct DescribeAccountsRequest: TCPaginatedRequest {
        /// 实例ID
        public let instanceId: String

        /// 分页返回，每页返回的数目，取值为1-100，默认值为20
        public let limit: UInt64?

        /// 分页返回，页编号，默认值为第0页
        public let offset: UInt64?

        /// 账号名称
        public let name: String?

        /// createTime,updateTime,passTime" note:"排序字段，默认按照账号创建时间倒序
        public let orderBy: String?

        /// 排序规则（desc-降序，asc-升序），默认desc
        public let orderByType: String?

        public init(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderBy: String? = nil, orderByType: String? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
            self.name = name
            self.orderBy = orderBy
            self.orderByType = orderByType
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
            case name = "Name"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeAccountsResponse) -> DescribeAccountsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeAccountsRequest(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), name: self.name, orderBy: self.orderBy, orderByType: self.orderByType)
        }
    }

    /// DescribeAccounts返回参数结构体
    public struct DescribeAccountsResponse: TCPaginatedResponse {
        /// 实例ID
        public let instanceId: String

        /// 账户信息列表
        public let accounts: [AccountDetail]

        /// 总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accounts = "Accounts"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AccountDetail] {
            self.accounts
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccounts(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccounts(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAccountsResponse> {
        let input = DescribeAccountsRequest(instanceId: instanceId, limit: limit, offset: offset, name: name, orderBy: orderBy, orderByType: orderByType)
        return self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccounts(instanceId: String, limit: UInt64? = nil, offset: UInt64? = nil, name: String? = nil, orderBy: String? = nil, orderByType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAccountsResponse {
        let input = DescribeAccountsRequest(instanceId: instanceId, limit: limit, offset: offset, name: name, orderBy: orderBy, orderByType: orderByType)
        return try await self.client.execute(action: "DescribeAccounts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [AccountDetail])> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccountsPaginated(_ input: DescribeAccountsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeAccountsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeAccounts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取实例账户列表
    ///
    /// 本接口（DescribeAccounts）用于拉取实例账户列表。
    @inlinable
    public func describeAccountsPaginator(_ input: DescribeAccountsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResultSequence(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeAccountsRequest, DescribeAccountsResponse>.ResponseSequence(input: input, region: region, command: self.describeAccounts, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
