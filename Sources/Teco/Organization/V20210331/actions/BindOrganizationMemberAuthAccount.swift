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
    /// BindOrganizationMemberAuthAccount请求参数结构体
    public struct BindOrganizationMemberAuthAccountRequest: TCRequestModel {
        /// 成员Uin。
        public let memberUin: Int64
        
        /// 策略ID。可以调用DescribeOrganizationMemberPolicies获取
        public let policyId: Int64
        
        /// 组织管理员子账号Uin列表。最大5个
        public let orgSubAccountUins: [Int64]
        
        public init (memberUin: Int64, policyId: Int64, orgSubAccountUins: [Int64]) {
            self.memberUin = memberUin
            self.policyId = policyId
            self.orgSubAccountUins = orgSubAccountUins
        }
        
        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case policyId = "PolicyId"
            case orgSubAccountUins = "OrgSubAccountUins"
        }
    }
    
    /// BindOrganizationMemberAuthAccount返回参数结构体
    public struct BindOrganizationMemberAuthAccountResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 绑定组织成员和组织管理员子账号的授权关系
    @inlinable
    public func bindOrganizationMemberAuthAccount(_ input: BindOrganizationMemberAuthAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < BindOrganizationMemberAuthAccountResponse > {
        self.client.execute(action: "BindOrganizationMemberAuthAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 绑定组织成员和组织管理员子账号的授权关系
    @inlinable
    public func bindOrganizationMemberAuthAccount(_ input: BindOrganizationMemberAuthAccountRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BindOrganizationMemberAuthAccountResponse {
        try await self.client.execute(action: "BindOrganizationMemberAuthAccount", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
