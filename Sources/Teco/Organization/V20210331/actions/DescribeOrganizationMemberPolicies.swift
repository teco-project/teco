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

extension Organization {
    /// DescribeOrganizationMemberPolicies请求参数结构体
    public struct DescribeOrganizationMemberPoliciesRequest: TCRequestModel {
        /// 偏移量。
        public let offset: Int64

        /// 限制数目。最大50
        public let limit: Int64

        /// 成员Uin。
        public let memberUin: Int64

        /// 搜索关键字。可用于策略名或描述搜索
        public let searchKey: String?

        public init(offset: Int64, limit: Int64, memberUin: Int64, searchKey: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.memberUin = memberUin
            self.searchKey = searchKey
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case memberUin = "MemberUin"
            case searchKey = "SearchKey"
        }
    }

    /// DescribeOrganizationMemberPolicies返回参数结构体
    public struct DescribeOrganizationMemberPoliciesResponse: TCResponseModel {
        /// 列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [OrgMemberPolicy]?

        /// 总数目。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case items = "Items"
            case total = "Total"
            case requestId = "RequestId"
        }
    }

    /// 获取组织成员的授权策略列表
    @inlinable
    public func describeOrganizationMemberPolicies(_ input: DescribeOrganizationMemberPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationMemberPoliciesResponse> {
        self.client.execute(action: "DescribeOrganizationMemberPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组织成员的授权策略列表
    @inlinable
    public func describeOrganizationMemberPolicies(_ input: DescribeOrganizationMemberPoliciesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberPoliciesResponse {
        try await self.client.execute(action: "DescribeOrganizationMemberPolicies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组织成员的授权策略列表
    @inlinable
    public func describeOrganizationMemberPolicies(offset: Int64, limit: Int64, memberUin: Int64, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeOrganizationMemberPoliciesResponse> {
        self.describeOrganizationMemberPolicies(DescribeOrganizationMemberPoliciesRequest(offset: offset, limit: limit, memberUin: memberUin, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }

    /// 获取组织成员的授权策略列表
    @inlinable
    public func describeOrganizationMemberPolicies(offset: Int64, limit: Int64, memberUin: Int64, searchKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberPoliciesResponse {
        try await self.describeOrganizationMemberPolicies(DescribeOrganizationMemberPoliciesRequest(offset: offset, limit: limit, memberUin: memberUin, searchKey: searchKey), region: region, logger: logger, on: eventLoop)
    }
}
