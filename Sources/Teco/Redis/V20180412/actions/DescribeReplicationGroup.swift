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

extension Redis {
    /// DescribeReplicationGroup请求参数结构体
    public struct DescribeReplicationGroupRequest: TCPaginatedRequest {
        /// 每页输出实例列表的大小，参数默认值20。
        public let limit: Int64

        /// 分页偏移量，取Limit整数倍。计算公式：offset=limit*(页码-1)。
        public let offset: Int64

        /// 复制组ID。
        public let groupId: String?

        /// 设置模糊查询的关键字，可以设置为实例ID或实例名称进行模糊查询。
        public let searchKey: String?

        public init(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.groupId = groupId
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case groupId = "GroupId"
            case searchKey = "SearchKey"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeReplicationGroupResponse) -> DescribeReplicationGroupRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeReplicationGroupRequest(limit: self.limit, offset: self.offset + .init(response.getItems().count), groupId: self.groupId, searchKey: self.searchKey)
        }
    }

    /// DescribeReplicationGroup返回参数结构体
    public struct DescribeReplicationGroupResponse: TCPaginatedResponse {
        /// 复制组数量。
        public let totalCount: Int64

        /// 复制组信息。
        public let groups: [Groups]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case groups = "Groups"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Groups] {
            self.groups
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable
    public func describeReplicationGroup(_ input: DescribeReplicationGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationGroupResponse> {
        self.client.execute(action: "DescribeReplicationGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable
    public func describeReplicationGroup(_ input: DescribeReplicationGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationGroupResponse {
        try await self.client.execute(action: "DescribeReplicationGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable
    public func describeReplicationGroup(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeReplicationGroupResponse> {
        let input = DescribeReplicationGroupRequest(limit: limit, offset: offset, groupId: groupId, searchKey: searchKey)
        return self.client.execute(action: "DescribeReplicationGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable
    public func describeReplicationGroup(limit: Int64, offset: Int64, groupId: String? = nil, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeReplicationGroupResponse {
        let input = DescribeReplicationGroupRequest(limit: limit, offset: offset, groupId: groupId, searchKey: searchKey)
        return try await self.client.execute(action: "DescribeReplicationGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable
    public func describeReplicationGroupPaginated(_ input: DescribeReplicationGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Groups])> {
        self.client.paginate(input: input, region: region, command: self.describeReplicationGroup, logger: logger, on: eventLoop)
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    @inlinable @discardableResult
    public func describeReplicationGroupPaginated(_ input: DescribeReplicationGroupRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeReplicationGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeReplicationGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询复制组
    ///
    /// 本接口（DescribeReplicationGroup）查询复制组。
    ///
    /// - Returns: `AsyncSequence`s of `Groups` and `DescribeReplicationGroupResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeReplicationGroupPaginator(_ input: DescribeReplicationGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeReplicationGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeReplicationGroup, logger: logger, on: eventLoop)
    }
}
