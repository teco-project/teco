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

extension Eiam {
    /// ListUserGroupsOfUser请求参数结构体
    public struct ListUserGroupsOfUserRequest: TCRequestModel {
        /// 用户ID，是用户的全局唯一标识。
        public let userId: String

        /// 模糊查询条件，支持匹配用户组名称（DisplayName）。如果该字段为空，则默认展示该用户所有的用户组。
        public let searchCondition: UserGroupInformationSearchCriteria?

        /// 排序条件集合。可排序的属性支持：用户组名称（DisplayName）、用户组ID（UserGroupId）、创建时间（CreatedDate）。如果该字段为空，则默认按照用户组名称正向排序。
        public let sort: SortCondition?

        /// 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户组。
        public let offset: UInt64?

        /// 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户组。
        public let limit: UInt64?

        public init(userId: String, searchCondition: UserGroupInformationSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.userId = userId
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// ListUserGroupsOfUser返回参数结构体
    public struct ListUserGroupsOfUserResponse: TCResponseModel {
        /// 用户所属的用户组ID列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupIds: [String]?

        /// 用户ID，是用户的全局唯一标识。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 用户所属的用户组信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroupInfoList: [UserGroupInfo]?

        /// 返回的用户组信息总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userGroupIds = "UserGroupIds"
            case userId = "UserId"
            case userGroupInfoList = "UserGroupInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取用户所在的用户组列表
    @inlinable
    public func listUserGroupsOfUser(_ input: ListUserGroupsOfUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserGroupsOfUserResponse> {
        self.client.execute(action: "ListUserGroupsOfUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户所在的用户组列表
    @inlinable
    public func listUserGroupsOfUser(_ input: ListUserGroupsOfUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserGroupsOfUserResponse {
        try await self.client.execute(action: "ListUserGroupsOfUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取用户所在的用户组列表
    @inlinable
    public func listUserGroupsOfUser(userId: String, searchCondition: UserGroupInformationSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUserGroupsOfUserResponse> {
        let input = ListUserGroupsOfUserRequest(userId: userId, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit)
        return self.client.execute(action: "ListUserGroupsOfUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取用户所在的用户组列表
    @inlinable
    public func listUserGroupsOfUser(userId: String, searchCondition: UserGroupInformationSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUserGroupsOfUserResponse {
        let input = ListUserGroupsOfUserRequest(userId: userId, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit)
        return try await self.client.execute(action: "ListUserGroupsOfUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
