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

extension Eiam {
    /// ListUsersInUserGroup请求参数结构体
    public struct ListUsersInUserGroupRequest: TCPaginatedRequest {
        /// 用户组ID，是用户组的全局唯一标识。
        public let userGroupId: String

        /// 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        public let searchCondition: UserSearchCriteria?

        /// 排序条件集合。可排序的属性支持：用户名字（UserName）、用户昵称（DisplayName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreatedDate）、上次更新时间（LastModifiedDate）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        public let sort: SortCondition?

        /// 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        public let offset: Int64?

        /// 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        public let limit: Int64?

        public init(userGroupId: String, searchCondition: UserSearchCriteria? = nil, sort: SortCondition? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.userGroupId = userGroupId
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListUsersInUserGroupResponse) -> ListUsersInUserGroupRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(userGroupId: self.userGroupId, searchCondition: self.searchCondition, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// ListUsersInUserGroup返回参数结构体
    public struct ListUsersInUserGroupResponse: TCPaginatedResponse {
        /// 用户组ID，是用户组的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupId: String?

        /// 返回的用户信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userInfo: [UserInfo]?

        /// 返回的用户信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalNum: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userGroupId = "UserGroupId"
            case userInfo = "UserInfo"
            case totalNum = "TotalNum"
            case requestId = "RequestId"
        }

        /// Extract the returned ``UserInfo`` list from the paginated response.
        public func getItems() -> [UserInfo] {
            self.userInfo ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalNum
        }
    }

    /// 获取用户组中的用户列表
    @inlinable
    public func listUsersInUserGroup(_ input: ListUsersInUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersInUserGroupResponse> {
        self.client.execute(action: "ListUsersInUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户组中的用户列表
    @inlinable
    public func listUsersInUserGroup(_ input: ListUsersInUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersInUserGroupResponse {
        try await self.client.execute(action: "ListUsersInUserGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户组中的用户列表
    @inlinable
    public func listUsersInUserGroup(userGroupId: String, searchCondition: UserSearchCriteria? = nil, sort: SortCondition? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersInUserGroupResponse> {
        self.listUsersInUserGroup(.init(userGroupId: userGroupId, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户组中的用户列表
    @inlinable
    public func listUsersInUserGroup(userGroupId: String, searchCondition: UserSearchCriteria? = nil, sort: SortCondition? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersInUserGroupResponse {
        try await self.listUsersInUserGroup(.init(userGroupId: userGroupId, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户组中的用户列表
    @inlinable
    public func listUsersInUserGroupPaginated(_ input: ListUsersInUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UserInfo])> {
        self.client.paginate(input: input, region: region, command: self.listUsersInUserGroup, logger: logger, on: eventLoop)
    }

    /// 获取用户组中的用户列表
    @inlinable @discardableResult
    public func listUsersInUserGroupPaginated(_ input: ListUsersInUserGroupRequest, region: TCRegion? = nil, onResponse: @escaping (ListUsersInUserGroupResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listUsersInUserGroup, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户组中的用户列表
    ///
    /// - Returns: `AsyncSequence`s of ``UserInfo`` and ``ListUsersInUserGroupResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listUsersInUserGroupPaginator(_ input: ListUsersInUserGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListUsersInUserGroupRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listUsersInUserGroup, logger: logger, on: eventLoop)
    }
}
