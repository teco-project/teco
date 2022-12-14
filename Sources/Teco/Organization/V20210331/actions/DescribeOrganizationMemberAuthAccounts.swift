//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
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
    /// DescribeOrganizationMemberAuthAccounts请求参数结构体
    public struct DescribeOrganizationMemberAuthAccountsRequest: TCRequestModel {
        /// 偏移量。
        public let offset: Int64

        /// 限制数目。
        public let limit: Int64

        /// 成员Uin。
        public let memberUin: Int64

        /// 策略ID。
        public let policyId: Int64

        public init(offset: Int64, limit: Int64, memberUin: Int64, policyId: Int64) {
            self.offset = offset
            self.limit = limit
            self.memberUin = memberUin
            self.policyId = policyId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case memberUin = "MemberUin"
            case policyId = "PolicyId"
        }
    }

    /// DescribeOrganizationMemberAuthAccounts返回参数结构体
    public struct DescribeOrganizationMemberAuthAccountsResponse: TCResponseModel {
        /// 列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let items: [OrgMemberAuthAccount]?

        /// 总数目
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

    /// 获取组织成员被绑定授权关系的子账号列表
    @inlinable
    public func describeOrganizationMemberAuthAccounts(_ input: DescribeOrganizationMemberAuthAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOrganizationMemberAuthAccountsResponse > {
        self.client.execute(action: "DescribeOrganizationMemberAuthAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取组织成员被绑定授权关系的子账号列表
    @inlinable
    public func describeOrganizationMemberAuthAccounts(_ input: DescribeOrganizationMemberAuthAccountsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberAuthAccountsResponse {
        try await self.client.execute(action: "DescribeOrganizationMemberAuthAccounts", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取组织成员被绑定授权关系的子账号列表
    @inlinable
    public func describeOrganizationMemberAuthAccounts(offset: Int64, limit: Int64, memberUin: Int64, policyId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeOrganizationMemberAuthAccountsResponse > {
        self.describeOrganizationMemberAuthAccounts(DescribeOrganizationMemberAuthAccountsRequest(offset: offset, limit: limit, memberUin: memberUin, policyId: policyId), logger: logger, on: eventLoop)
    }

    /// 获取组织成员被绑定授权关系的子账号列表
    @inlinable
    public func describeOrganizationMemberAuthAccounts(offset: Int64, limit: Int64, memberUin: Int64, policyId: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeOrganizationMemberAuthAccountsResponse {
        try await self.describeOrganizationMemberAuthAccounts(DescribeOrganizationMemberAuthAccountsRequest(offset: offset, limit: limit, memberUin: memberUin, policyId: policyId), logger: logger, on: eventLoop)
    }
}
