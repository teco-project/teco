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

extension Organization {
    /// ListOrganizationNodeMembers请求参数结构体
    public struct ListOrganizationNodeMembersRequest: TCRequestModel {
        /// 企业组织单元ID
        public let nodeId: UInt64

        /// 偏移量
        public let offset: UInt64?

        /// 限制数目
        public let limit: UInt64?

        public init(nodeId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.nodeId = nodeId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// ListOrganizationNodeMembers返回参数结构体
    public struct ListOrganizationNodeMembersResponse: TCResponseModel {
        /// 总数目
        public let totalCount: UInt64

        /// 成员列表
        public let members: [OrgMember]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case members = "Members"
            case requestId = "RequestId"
        }
    }

    /// 获取企业组织单元成员列表
    @inlinable
    public func listOrganizationNodeMembers(_ input: ListOrganizationNodeMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationNodeMembersResponse> {
        self.client.execute(action: "ListOrganizationNodeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取企业组织单元成员列表
    @inlinable
    public func listOrganizationNodeMembers(_ input: ListOrganizationNodeMembersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationNodeMembersResponse {
        try await self.client.execute(action: "ListOrganizationNodeMembers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取企业组织单元成员列表
    @inlinable
    public func listOrganizationNodeMembers(nodeId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListOrganizationNodeMembersResponse> {
        self.listOrganizationNodeMembers(ListOrganizationNodeMembersRequest(nodeId: nodeId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取企业组织单元成员列表
    @inlinable
    public func listOrganizationNodeMembers(nodeId: UInt64, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListOrganizationNodeMembersResponse {
        try await self.listOrganizationNodeMembers(ListOrganizationNodeMembersRequest(nodeId: nodeId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
