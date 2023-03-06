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

extension Eiam {
    /// ListUsers请求参数结构体
    public struct ListUsersRequest: TCPaginatedRequest {
        /// 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,*]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        public let searchCondition: UserSearchCriteria?

        /// 指定期望返回的用户属性，默认返回所有用户内置属性。内置用户属性包括：用户UUID（UserId）、用户昵称（DisplayName）、用户名字（UserName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、用户组（SubjectGroups）机构路径（OrgPath）、备注（Description）、创建时间 （CreationTime）、上次修改时间（LastUpdateTime）、上次登录时间（LastLoginTime）。
        public let expectedFields: [String]?

        /// 排序条件集合。可排序的属性支持：用户名字（UserName）、用户昵称（DisplayName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreationTime）、上次修改时间（LastUpdateTime）、上次登录时间（LastLoginTime）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        public let sort: SortCondition?

        /// 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多1000个用户。
        public let offset: UInt64?

        /// 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多1000个用户。
        public let limit: UInt64?

        /// 是否查看搜索结果的总数，默认该选项为false不查看。
        public let includeTotal: Bool?

        public init(searchCondition: UserSearchCriteria? = nil, expectedFields: [String]? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, includeTotal: Bool? = nil) {
            self.searchCondition = searchCondition
            self.expectedFields = expectedFields
            self.sort = sort
            self.offset = offset
            self.limit = limit
            self.includeTotal = includeTotal
        }

        enum CodingKeys: String, CodingKey {
            case searchCondition = "SearchCondition"
            case expectedFields = "ExpectedFields"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
            case includeTotal = "IncludeTotal"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: ListUsersResponse) -> ListUsersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return ListUsersRequest(searchCondition: self.searchCondition, expectedFields: self.expectedFields, sort: self.sort, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, includeTotal: self.includeTotal)
        }
    }

    /// ListUsers返回参数结构体
    public struct ListUsersResponse: TCPaginatedResponse {
        /// 查询返回的相关用户列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userList: [UserInformation]?

        /// 返回查询用户的总数量，仅当入参IncludeTotal等于true时返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userList = "UserList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UserInformation] {
            self.userList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable
    public func listUsers(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable
    public func listUsers(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        try await self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable
    public func listUsers(searchCondition: UserSearchCriteria? = nil, expectedFields: [String]? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, includeTotal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersResponse> {
        let input = ListUsersRequest(searchCondition: searchCondition, expectedFields: expectedFields, sort: sort, offset: offset, limit: limit, includeTotal: includeTotal)
        return self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable
    public func listUsers(searchCondition: UserSearchCriteria? = nil, expectedFields: [String]? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, includeTotal: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersResponse {
        let input = ListUsersRequest(searchCondition: searchCondition, expectedFields: expectedFields, sort: sort, offset: offset, limit: limit, includeTotal: includeTotal)
        return try await self.client.execute(action: "ListUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable
    public func listUsersPaginated(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UserInformation])> {
        self.client.paginate(input: input, region: region, command: self.listUsers, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    @inlinable @discardableResult
    public func listUsersPaginated(_ input: ListUsersRequest, region: TCRegion? = nil, onResponse: @escaping (ListUsersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listUsers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取用户列表信息
    ///
    /// 获取用户列表信息。
    ///
    /// - Returns: `AsyncSequence`s of `UserInformation` and `ListUsersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func listUsersPaginator(_ input: ListUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListUsersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listUsers, logger: logger, on: eventLoop)
    }
}
