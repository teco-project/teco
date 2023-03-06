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

extension Tcb {
    /// DescribeEndUsers请求参数结构体
    public struct DescribeEndUsersRequest: TCPaginatedRequest {
        /// 开发者的环境ID
        public let envId: String

        /// 可选参数，偏移量，默认 0
        public let offset: UInt64?

        /// 可选参数，拉取数量，默认 20
        public let limit: UInt64?

        /// 按照 uuid 列表过滤，最大个数为100
        public let uuIds: [String]?

        public init(envId: String, offset: UInt64? = nil, limit: UInt64? = nil, uuIds: [String]? = nil) {
            self.envId = envId
            self.offset = offset
            self.limit = limit
            self.uuIds = uuIds
        }

        enum CodingKeys: String, CodingKey {
            case envId = "EnvId"
            case offset = "Offset"
            case limit = "Limit"
            case uuIds = "UUIds"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeEndUsersResponse) -> DescribeEndUsersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeEndUsersRequest(envId: self.envId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, uuIds: self.uuIds)
        }
    }

    /// DescribeEndUsers返回参数结构体
    public struct DescribeEndUsersResponse: TCPaginatedResponse {
        /// 用户总数
        public let total: UInt64

        /// 用户列表
        public let users: [EndUserInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case users = "Users"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [EndUserInfo] {
            self.users
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsers(_ input: DescribeEndUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUsersResponse> {
        self.client.execute(action: "DescribeEndUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsers(_ input: DescribeEndUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUsersResponse {
        try await self.client.execute(action: "DescribeEndUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsers(envId: String, offset: UInt64? = nil, limit: UInt64? = nil, uuIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeEndUsersResponse> {
        let input = DescribeEndUsersRequest(envId: envId, offset: offset, limit: limit, uuIds: uuIds)
        return self.client.execute(action: "DescribeEndUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsers(envId: String, offset: UInt64? = nil, limit: UInt64? = nil, uuIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeEndUsersResponse {
        let input = DescribeEndUsersRequest(envId: envId, offset: offset, limit: limit, uuIds: uuIds)
        return try await self.client.execute(action: "DescribeEndUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsersPaginated(_ input: DescribeEndUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EndUserInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeEndUsers, logger: logger, on: eventLoop)
    }

    /// 获取终端用户列表
    @inlinable @discardableResult
    public func describeEndUsersPaginated(_ input: DescribeEndUsersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeEndUsersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeEndUsers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取终端用户列表
    @inlinable
    public func describeEndUsersPaginator(_ input: DescribeEndUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeEndUsersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeEndUsers, logger: logger, on: eventLoop)
    }
}
