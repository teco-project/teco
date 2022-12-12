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
    /// CreateOrganizationMember请求参数结构体
    public struct CreateOrganizationMemberRequest: TCRequestModel {
        /// 成员名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        public let name: String
        
        /// 关系策略。取值：Financial
        public let policyType: String
        
        /// 成员财务权限ID列表。取值：1-查看账单、2-查看余额、3-资金划拨、4-合并出账、5-开票、6-优惠继承、7-代付费，1、2 默认必须
        public let permissionIds: [UInt64]
        
        /// 成员所属部门的节点ID。可以调用DescribeOrganizationNodes获取
        public let nodeId: Int64
        
        /// 账号名称。最大长度为25个字符，支持英文字母、数字、汉字、符号+@、&._[]-:,
        public let accountName: String
        
        /// 备注。
        public let remark: String?
        
        /// 成员创建记录ID。创建异常重试时需要
        public let recordId: Int64?
        
        /// 代付者Uin。成员代付费时需要
        public let payUin: String?
        
        /// 成员访问身份ID列表。可以调用ListOrganizationIdentity获取，1默认支持
        public let identityRoleID: [UInt64]?
        
        /// 认证主体关系ID。给不同主体创建成员时需要，可以调用DescribeOrganizationAuthNode获取
        public let authRelationId: Int64?
        
        public init (name: String, policyType: String, permissionIds: [UInt64], nodeId: Int64, accountName: String, remark: String? = nil, recordId: Int64? = nil, payUin: String? = nil, identityRoleID: [UInt64]? = nil, authRelationId: Int64? = nil) {
            self.name = name
            self.policyType = policyType
            self.permissionIds = permissionIds
            self.nodeId = nodeId
            self.accountName = accountName
            self.remark = remark
            self.recordId = recordId
            self.payUin = payUin
            self.identityRoleID = identityRoleID
            self.authRelationId = authRelationId
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case policyType = "PolicyType"
            case permissionIds = "PermissionIds"
            case nodeId = "NodeId"
            case accountName = "AccountName"
            case remark = "Remark"
            case recordId = "RecordId"
            case payUin = "PayUin"
            case identityRoleID = "IdentityRoleID"
            case authRelationId = "AuthRelationId"
        }
    }
    
    /// CreateOrganizationMember返回参数结构体
    public struct CreateOrganizationMemberResponse: TCResponseModel {
        /// 成员Uin。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uin: Int64?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case requestId = "RequestId"
        }
    }
    
    /// 创建组织成员
    @inlinable
    public func createOrganizationMember(_ input: CreateOrganizationMemberRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOrganizationMemberResponse > {
        self.client.execute(action: "CreateOrganizationMember", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建组织成员
    @inlinable
    public func createOrganizationMember(_ input: CreateOrganizationMemberRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOrganizationMemberResponse {
        try await self.client.execute(action: "CreateOrganizationMember", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
