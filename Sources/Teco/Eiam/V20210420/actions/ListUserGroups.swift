//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Eiam {
    /// ListUserGroups请求参数结构体
    public struct ListUserGroupsRequest: TCRequestModel {
        /// 查询条件，支持多搜索条件组合、多数据范围匹配的搜索。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（""）表示全匹配、以星号（* ) 结尾表示字段部分匹配。如果该字段为空，则默认查全量表。
        public let searchCondition: UserGroupInfoSearchCriteria?

        /// 排序条件集合。可排序的属性支持：用户组名称（DisplayName）、用户组ID（UserGroupId）、上次更新时间（LastModifiedDate）。如果该字段为空，则默认按照用户组名称正向排序。
        public let sort: SortCondition?

        /// 分页偏移量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let offset: UInt64?

        /// 分页读取数量。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询。
        public let limit: UInt64?

        public init(searchCondition: UserGroupInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// ListUserGroups返回参数结构体
    public struct ListUserGroupsResponse: TCResponseModel {
        /// 返回的用户组列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupList: [UserGroupInformation]?

        /// 返回的用户组信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userGroupList = "UserGroupList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取用户组列表信息
    ///
    /// 获取用户组列表信息（包含查询条件）。
    @inlinable
    public func listUserGroups(_ input: ListUserGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserGroupsResponse> {
        self.client.execute(action: "ListUserGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户组列表信息
    ///
    /// 获取用户组列表信息（包含查询条件）。
    @inlinable
    public func listUserGroups(_ input: ListUserGroupsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserGroupsResponse {
        try await self.client.execute(action: "ListUserGroups", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户组列表信息
    ///
    /// 获取用户组列表信息（包含查询条件）。
    @inlinable
    public func listUserGroups(searchCondition: UserGroupInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserGroupsResponse> {
        self.listUserGroups(ListUserGroupsRequest(searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取用户组列表信息
    ///
    /// 获取用户组列表信息（包含查询条件）。
    @inlinable
    public func listUserGroups(searchCondition: UserGroupInfoSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserGroupsResponse {
        try await self.listUserGroups(ListUserGroupsRequest(searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
