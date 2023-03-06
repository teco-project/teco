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

extension Dlc {
    /// DescribeUsers请求参数结构体
    public struct DescribeUsersRequest: TCPaginatedRequest {
        /// 指定查询的子用户uin，用户需要通过CreateUser接口创建。
        public let userId: String?

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回数量，默认20，最大值100
        public let limit: Int64?

        /// 排序字段，支持如下字段类型，create-time
        public let sortBy: String?

        /// 排序方式，desc表示正序，asc表示反序， 默认为asc
        public let sorting: String?

        /// 过滤条件，支持如下字段类型，user-type：根据用户类型过滤。user-keyword：根据用户名称过滤
        public let filters: [Filter]?

        public init(userId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil) {
            self.userId = userId
            self.offset = offset
            self.limit = limit
            self.sortBy = sortBy
            self.sorting = sorting
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case offset = "Offset"
            case limit = "Limit"
            case sortBy = "SortBy"
            case sorting = "Sorting"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUsersResponse) -> DescribeUsersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUsersRequest(userId: self.userId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, sortBy: self.sortBy, sorting: self.sorting, filters: self.filters)
        }
    }

    /// DescribeUsers返回参数结构体
    public struct DescribeUsersResponse: TCPaginatedResponse {
        /// 查询到的用户总数
        public let totalCount: Int64

        /// 查询到的授权用户信息集合
        public let userSet: [UserInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userSet = "UserSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserInfo] {
            self.userSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取用户列表信息
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    @inlinable
    public func describeUsers(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        try await self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户列表信息
    @inlinable
    public func describeUsers(userId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUsersResponse> {
        let input = DescribeUsersRequest(userId: userId, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting, filters: filters)
        return self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    @inlinable
    public func describeUsers(userId: String? = nil, offset: Int64? = nil, limit: Int64? = nil, sortBy: String? = nil, sorting: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUsersResponse {
        let input = DescribeUsersRequest(userId: userId, offset: offset, limit: limit, sortBy: sortBy, sorting: sorting, filters: filters)
        return try await self.client.execute(action: "DescribeUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户列表信息
    @inlinable
    public func describeUsersPaginated(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UserInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeUsers, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    @inlinable @discardableResult
    public func describeUsersPaginated(_ input: DescribeUsersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUsersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUsers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    ///
    /// - Returns: `AsyncSequence`s of `UserInfo` and `DescribeUsersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUsersPaginator(_ input: DescribeUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUsersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUsers, logger: logger, on: eventLoop)
    }
}
