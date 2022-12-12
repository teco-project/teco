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
    /// CreateOrganizationMemberPolicy请求参数结构体
    public struct CreateOrganizationMemberPolicyRequest: TCRequestModel {
        /// 成员Uin。
        public let memberUin: Int64
        
        /// 策略名。最大长度为128个字符，支持英文字母、数字、符号+=,.@_-
        public let policyName: String
        
        /// 成员访问身份ID。可以调用DescribeOrganizationMemberAuthIdentities获取
        public let identityId: Int64
        
        /// 描述。
        public let description: String?
        
        public init (memberUin: Int64, policyName: String, identityId: Int64, description: String? = nil) {
            self.memberUin = memberUin
            self.policyName = policyName
            self.identityId = identityId
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case policyName = "PolicyName"
            case identityId = "IdentityId"
            case description = "Description"
        }
    }
    
    /// CreateOrganizationMemberPolicy返回参数结构体
    public struct CreateOrganizationMemberPolicyResponse: TCResponseModel {
        /// 策略ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建组织成员访问授权策略
    @inlinable
    public func createOrganizationMemberPolicy(_ input: CreateOrganizationMemberPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOrganizationMemberPolicyResponse > {
        self.client.execute(action: "CreateOrganizationMemberPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建组织成员访问授权策略
    @inlinable
    public func createOrganizationMemberPolicy(_ input: CreateOrganizationMemberPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrganizationMemberPolicyResponse {
        try await self.client.execute(action: "CreateOrganizationMemberPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
