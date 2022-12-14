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
    /// CancelOrganizationMemberAuthAccount请求参数结构体
    public struct CancelOrganizationMemberAuthAccountRequest: TCRequestModel {
        /// 成员Uin。
        public let memberUin: Int64

        /// 策略ID。
        public let policyId: Int64

        /// 组织子账号Uin。
        public let orgSubAccountUin: Int64

        public init(memberUin: Int64, policyId: Int64, orgSubAccountUin: Int64) {
            self.memberUin = memberUin
            self.policyId = policyId
            self.orgSubAccountUin = orgSubAccountUin
        }

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case policyId = "PolicyId"
            case orgSubAccountUin = "OrgSubAccountUin"
        }
    }

    /// CancelOrganizationMemberAuthAccount返回参数结构体
    public struct CancelOrganizationMemberAuthAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消组织成员和组织管理员子账号的授权关系
    @inlinable
    public func cancelOrganizationMemberAuthAccount(_ input: CancelOrganizationMemberAuthAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelOrganizationMemberAuthAccountResponse > {
        self.client.execute(action: "CancelOrganizationMemberAuthAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消组织成员和组织管理员子账号的授权关系
    @inlinable
    public func cancelOrganizationMemberAuthAccount(_ input: CancelOrganizationMemberAuthAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelOrganizationMemberAuthAccountResponse {
        try await self.client.execute(action: "CancelOrganizationMemberAuthAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消组织成员和组织管理员子账号的授权关系
    @inlinable
    public func cancelOrganizationMemberAuthAccount(memberUin: Int64, policyId: Int64, orgSubAccountUin: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CancelOrganizationMemberAuthAccountResponse > {
        self.cancelOrganizationMemberAuthAccount(CancelOrganizationMemberAuthAccountRequest(memberUin: memberUin, policyId: policyId, orgSubAccountUin: orgSubAccountUin), logger: logger, on: eventLoop)
    }

    /// 取消组织成员和组织管理员子账号的授权关系
    @inlinable
    public func cancelOrganizationMemberAuthAccount(memberUin: Int64, policyId: Int64, orgSubAccountUin: Int64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelOrganizationMemberAuthAccountResponse {
        try await self.cancelOrganizationMemberAuthAccount(CancelOrganizationMemberAuthAccountRequest(memberUin: memberUin, policyId: policyId, orgSubAccountUin: orgSubAccountUin), logger: logger, on: eventLoop)
    }
}
