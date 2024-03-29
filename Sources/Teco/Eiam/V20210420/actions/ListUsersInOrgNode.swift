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
    /// ListUsersInOrgNode请求参数结构体
    public struct ListUsersInOrgNodeRequest: TCRequest {
        /// 机构节点ID，是机构节点全局唯一标识，长度限制：64个字符。如果为空默认读取机构根节点下用户信息。
        public let orgNodeId: String?

        /// 是否读取其子节点信息。当其为空或false时，默认仅读取当前机构节点信息。当其为true时，读取本机构节点以及其第一层子节点信息。
        public let includeOrgNodeChildInfo: Bool?

        /// 用户属性搜索条件，可查询条件包括：用户名、手机号码，邮箱、用户锁定状态、用户冻结状态、创建时间、上次修改时间，支持多种属性组合作为查询条件。同时支持查询信息内容全匹配、部分匹配、范围匹配等多种查询方式，具体查询方式为：双引号（“”）表示全匹配、以星号（*）结尾表示字段部分匹配、中括号以逗号分隔（[Min，Max]）表示闭区间查询、大括号以逗号分隔（{Min，Max}）表示开区间查询，中括号与大括号可以配合使用（例如：{Min，Max]表示最小值开区间，最大值闭区间查询）。范围匹配支持使用星号（例如{20,*]表示查询范围为大于20的所有数据）。范围查询同时支持时间段查询，支持的属性包括创建时间 （CreationTime）、上次修改时间（LastUpdateTime），查询的时间格式遵循 ISO 8601 标准，例如：2021-01-13T09:44:07.182+0000。
        public let searchCondition: ListUsersInOrgNodeSearchCriteria?

        /// 排序条件集合。可排序的属性支持：用户名字（UserName）、手机号（Phone）、邮箱（Email）、用户状态（Status）、创建时间 （CreatedDate）、上次更新时间（LastModifiedDate）。如果不指定，则默认按照用户昵称（DisplayName）正向排序。
        public let sort: SortCondition?

        /// 分页偏移量，默认为0。Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        public let offset: UInt64?

        /// 分页读取数量，默认为50，最大值为100。 Offset 和 Limit 两个字段需配合使用，即其中一个指定了，另一个必须指定。 如果不指定以上参数，则表示不进行分页查询，即只返回最多50个用户。
        public let limit: UInt64?

        public init(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil, searchCondition: ListUsersInOrgNodeSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.orgNodeId = orgNodeId
            self.includeOrgNodeChildInfo = includeOrgNodeChildInfo
            self.searchCondition = searchCondition
            self.sort = sort
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case orgNodeId = "OrgNodeId"
            case includeOrgNodeChildInfo = "IncludeOrgNodeChildInfo"
            case searchCondition = "SearchCondition"
            case sort = "Sort"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// ListUsersInOrgNode返回参数结构体
    public struct ListUsersInOrgNodeResponse: TCResponse {
        /// 机构子节点下的用户信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeChildUserInfo: [OrgNodeChildUserInfo]?

        /// 机构ID，是机构节点全局唯一标识，长度限制：64个字符。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeId: String?

        /// 用户信息列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userInfo: [UserInfo]?

        /// 当前机构节点下的用户总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalUserNum: Int64?

        /// 组织机构ID路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeIdPath: String?

        /// 组织机构名称路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgNodeNamePath: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case orgNodeChildUserInfo = "OrgNodeChildUserInfo"
            case orgNodeId = "OrgNodeId"
            case userInfo = "UserInfo"
            case totalUserNum = "TotalUserNum"
            case orgNodeIdPath = "OrgNodeIdPath"
            case orgNodeNamePath = "OrgNodeNamePath"
            case requestId = "RequestId"
        }
    }

    /// 读取节点下用户
    ///
    /// 根据机构节点ID读取节点下用户
    @inlinable
    public func listUsersInOrgNode(_ input: ListUsersInOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersInOrgNodeResponse> {
        self.client.execute(action: "ListUsersInOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 读取节点下用户
    ///
    /// 根据机构节点ID读取节点下用户
    @inlinable
    public func listUsersInOrgNode(_ input: ListUsersInOrgNodeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersInOrgNodeResponse {
        try await self.client.execute(action: "ListUsersInOrgNode", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 读取节点下用户
    ///
    /// 根据机构节点ID读取节点下用户
    @inlinable
    public func listUsersInOrgNode(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil, searchCondition: ListUsersInOrgNodeSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListUsersInOrgNodeResponse> {
        self.listUsersInOrgNode(.init(orgNodeId: orgNodeId, includeOrgNodeChildInfo: includeOrgNodeChildInfo, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 读取节点下用户
    ///
    /// 根据机构节点ID读取节点下用户
    @inlinable
    public func listUsersInOrgNode(orgNodeId: String? = nil, includeOrgNodeChildInfo: Bool? = nil, searchCondition: ListUsersInOrgNodeSearchCriteria? = nil, sort: SortCondition? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListUsersInOrgNodeResponse {
        try await self.listUsersInOrgNode(.init(orgNodeId: orgNodeId, includeOrgNodeChildInfo: includeOrgNodeChildInfo, searchCondition: searchCondition, sort: sort, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
