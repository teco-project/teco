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

extension Dasb {
    /// DescribeUserGroupMembers请求参数结构体
    public struct DescribeUserGroupMembersRequest: TCPaginatedRequest {
        /// 用户组ID
        public let id: UInt64

        /// true - 查询已添加到该用户组的用户，false - 查询未添加到该用户组的用户
        public let bound: Bool

        /// 用户名或用户姓名，最长64个字符，模糊查询
        public let name: String?

        /// 分页偏移位置，默认值为0
        public let offset: UInt64?

        /// 每页条目数量，默认20, 最大500
        public let limit: UInt64?

        /// 所属部门ID
        public let departmentId: String?

        public init(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil) {
            self.id = id
            self.bound = bound
            self.name = name
            self.offset = offset
            self.limit = limit
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case bound = "Bound"
            case name = "Name"
            case offset = "Offset"
            case limit = "Limit"
            case departmentId = "DepartmentId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUserGroupMembersResponse) -> DescribeUserGroupMembersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUserGroupMembersRequest(id: self.id, bound: self.bound, name: self.name, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, departmentId: self.departmentId)
        }
    }

    /// DescribeUserGroupMembers返回参数结构体
    public struct DescribeUserGroupMembersResponse: TCPaginatedResponse {
        /// 用户组成员总数
        public let totalCount: UInt64

        /// 用户组成员列表
        public let userSet: [User]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case userSet = "UserSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [User] {
            self.userSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(_ input: DescribeUserGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserGroupMembersResponse> {
        self.client.execute(action: "DescribeUserGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(_ input: DescribeUserGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupMembersResponse {
        try await self.client.execute(action: "DescribeUserGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUserGroupMembersResponse> {
        let input = DescribeUserGroupMembersRequest(id: id, bound: bound, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return self.client.execute(action: "DescribeUserGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembers(id: UInt64, bound: Bool, name: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUserGroupMembersResponse {
        let input = DescribeUserGroupMembersRequest(id: id, bound: bound, name: name, offset: offset, limit: limit, departmentId: departmentId)
        return try await self.client.execute(action: "DescribeUserGroupMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户组成员列表
    @inlinable
    public func describeUserGroupMembersPaginated(_ input: DescribeUserGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [User])> {
        self.client.paginate(input: input, region: region, command: self.describeUserGroupMembers, logger: logger, on: eventLoop)
    }

    /// 查询用户组成员列表
    @inlinable @discardableResult
    public func describeUserGroupMembersPaginated(_ input: DescribeUserGroupMembersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUserGroupMembersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUserGroupMembers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询用户组成员列表
    ///
    /// - Returns: `AsyncSequence`s of `User` and `DescribeUserGroupMembersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUserGroupMembersPaginator(_ input: DescribeUserGroupMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUserGroupMembersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUserGroupMembers, logger: logger, on: eventLoop)
    }
}
