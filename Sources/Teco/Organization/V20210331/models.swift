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
    /// 互信主体主要信息
    public struct AuthNode: TCOutputModel {
        /// 互信主体关系ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let relationId: Int64?

        /// 互信主体名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authName: String?

        /// 主体管理员
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let manager: MemberMainInfo?

        enum CodingKeys: String, CodingKey {
            case relationId = "RelationId"
            case authName = "AuthName"
            case manager = "Manager"
        }
    }

    /// 组织身份策略
    public struct IdentityPolicy: TCInputModel, TCOutputModel {
        /// 策略ID
        public let policyId: UInt64

        /// 策略名称
        public let policyName: String

        public init(policyId: UInt64, policyName: String) {
            self.policyId = policyId
            self.policyName = policyName
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
        }
    }

    /// 成员管理身份
    public struct MemberIdentity: TCOutputModel {
        /// 身份ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityId: Int64?

        /// 身份名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityAliasName: String?

        enum CodingKeys: String, CodingKey {
            case identityId = "IdentityId"
            case identityAliasName = "IdentityAliasName"
        }
    }

    /// 成员主要信息
    public struct MemberMainInfo: TCOutputModel {
        /// 成员uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memberUin: Int64?

        /// 成员名称j
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memberName: String?

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case memberName = "MemberName"
        }
    }

    /// 组织身份
    public struct OrgIdentity: TCOutputModel {
        /// 身份ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityId: Int64?

        /// 身份名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityAliasName: String?

        /// 描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 身份策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityPolicy: [IdentityPolicy]?

        /// 身份类型。 1-预设、 2-自定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityType: UInt64?

        /// 更新时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case identityId = "IdentityId"
            case identityAliasName = "IdentityAliasName"
            case description = "Description"
            case identityPolicy = "IdentityPolicy"
            case identityType = "IdentityType"
            case updateTime = "UpdateTime"
        }
    }

    /// 企业组织成员
    public struct OrgMember: TCOutputModel {
        /// 成员Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memberUin: Int64?

        /// 成员名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 成员类型，邀请：Invite， 创建：Create
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let memberType: String?

        /// 关系策略类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPolicyType: String?

        /// 关系策略名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPolicyName: String?

        /// 关系策略权限
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgPermission: [OrgPermission]?

        /// 所属节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeId: Int64?

        /// 所属节点名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeName: String?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 是否允许成员退出。允许：Allow，不允许：Denied。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAllowQuit: String?

        /// 代付者Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payUin: String?

        /// 代付者名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let payName: String?

        /// 管理身份
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgIdentity: [MemberIdentity]?

        /// 安全信息绑定状态  未绑定：Unbound，待激活：Valid，绑定成功：Success，绑定失败：Failed
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bindStatus: String?

        /// 成员权限状态 已确认：Confirmed ，待确认：UnConfirmed
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let permissionStatus: String?

        enum CodingKeys: String, CodingKey {
            case memberUin = "MemberUin"
            case name = "Name"
            case memberType = "MemberType"
            case orgPolicyType = "OrgPolicyType"
            case orgPolicyName = "OrgPolicyName"
            case orgPermission = "OrgPermission"
            case nodeId = "NodeId"
            case nodeName = "NodeName"
            case remark = "Remark"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case isAllowQuit = "IsAllowQuit"
            case payUin = "PayUin"
            case payName = "PayName"
            case orgIdentity = "OrgIdentity"
            case bindStatus = "BindStatus"
            case permissionStatus = "PermissionStatus"
        }
    }

    /// 成员和子账号的授权关系
    public struct OrgMemberAuthAccount: TCOutputModel {
        /// 组织子账号Uin。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgSubAccountUin: Int64?

        /// 策略ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: Int64?

        /// 策略名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?

        /// 身份ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityId: Int64?

        /// 身份角色名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleName: String?

        /// 身份角色别名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleAliasName: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 子账号名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orgSubAccountName: String?

        enum CodingKeys: String, CodingKey {
            case orgSubAccountUin = "OrgSubAccountUin"
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case identityId = "IdentityId"
            case identityRoleName = "IdentityRoleName"
            case identityRoleAliasName = "IdentityRoleAliasName"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case orgSubAccountName = "OrgSubAccountName"
        }
    }

    /// 组织成员可授权的身份
    public struct OrgMemberAuthIdentity: TCOutputModel {
        /// 身份ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityId: Int64?

        /// 身份的角色名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleName: String?

        /// 身份的角色别名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleAliasName: String?

        /// 描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        /// 身份类型。取值： 1-预设  2-自定义
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityType: UInt64?

        enum CodingKeys: String, CodingKey {
            case identityId = "IdentityId"
            case identityRoleName = "IdentityRoleName"
            case identityRoleAliasName = "IdentityRoleAliasName"
            case description = "Description"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case identityType = "IdentityType"
        }
    }

    /// 组织成员被授权的策略
    public struct OrgMemberPolicy: TCOutputModel {
        /// 策略ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyId: Int64?

        /// 策略名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?

        /// 身份ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityId: Int64?

        /// 身份角色名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleName: String?

        /// 身份角色别名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityRoleAliasName: String?

        /// 描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case identityId = "IdentityId"
            case identityRoleName = "IdentityRoleName"
            case identityRoleAliasName = "IdentityRoleAliasName"
            case description = "Description"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 企业组织单元
    public struct OrgNode: TCOutputModel {
        /// 组织节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodeId: Int64?

        /// 名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 父节点ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let parentNodeId: Int64?

        /// 备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: String?

        enum CodingKeys: String, CodingKey {
            case nodeId = "NodeId"
            case name = "Name"
            case parentNodeId = "ParentNodeId"
            case remark = "Remark"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
        }
    }

    /// 关系策略权限
    public struct OrgPermission: TCOutputModel {
        /// 权限Id
        public let id: UInt64

        /// 权限名
        public let name: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
        }
    }
}
