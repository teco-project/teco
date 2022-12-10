//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

@_exported import struct Foundation.Date

extension Cam {
    /// 访问密钥列表
    public struct AccessKey: TCOutputModel {
        /// 访问密钥标识
        public let accessKeyId: String
        
        /// 密钥状态，激活（Active）或未激活（Inactive）
        public let status: String
        
        /// 创建时间
        // FIXME: Codable support not implemented for datetime yet.
        public let createTime: Date
        
        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
            case status = "Status"
            case createTime = "CreateTime"
        }
    }
    
    /// 访问密钥
    public struct AccessKeyDetail: TCOutputModel {
        /// 访问密钥标识
        public let accessKeyId: String
        
        /// 访问密钥（密钥仅创建时可见，请妥善保存）
        public let secretAccessKey: String
        
        /// 密钥状态，激活（Active）或未激活（Inactive）
        public let status: String
        
        /// 创建时间
        // FIXME: Codable support not implemented for datetime yet.
        public let createTime: Date
        
        enum CodingKeys: String, CodingKey {
            case accessKeyId = "AccessKeyId"
            case secretAccessKey = "SecretAccessKey"
            case status = "Status"
            case createTime = "CreateTime"
        }
    }
    
    /// 策略关联的实体信息
    public struct AttachEntityOfPolicy: TCOutputModel {
        /// 实体ID
        public let id: String
        
        /// 实体名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 实体Uin
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uin: UInt64?
        
        /// 关联类型。1 用户关联 ； 2 用户组关联
        public let relatedType: UInt64
        
        /// 策略关联时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attachmentTime: String?
        
        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case uin = "Uin"
            case relatedType = "RelatedType"
            case attachmentTime = "AttachmentTime"
        }
    }
    
    /// 关联策略信息
    public struct AttachPolicyInfo: TCOutputModel {
        /// 策略id
        public let policyId: UInt64
        
        /// 策略名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyName: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addTime: Date?
        
        /// 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createMode: UInt64?
        
        /// 取值为user和QCS
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyType: String?
        
        /// 策略备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?
        
        /// 策略关联操作者主帐号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateOwnerUin: String?
        
        /// 策略关联操作者ID，如果UinType为0表示子帐号Uin，如果UinType为1表示角色ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateUin: String?
        
        /// UinType为0表示OperateUin字段是子帐号Uin，如果UinType为1表示OperateUin字段是角色ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let operateUinType: UInt64?
        
        /// 是否已下线
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactived: UInt64?
        
        /// 已下线的产品列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactivedDetail: [String]?
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case addTime = "AddTime"
            case createMode = "CreateMode"
            case policyType = "PolicyType"
            case remark = "Remark"
            case operateOwnerUin = "OperateOwnerUin"
            case operateUin = "OperateUin"
            case operateUinType = "OperateUinType"
            case deactived = "Deactived"
            case deactivedDetail = "DeactivedDetail"
        }
    }
    
    /// 角色关联的策略信息
    public struct AttachedPolicyOfRole: TCOutputModel {
        /// 策略ID
        public let policyId: UInt64
        
        /// 策略名称
        public let policyName: String
        
        /// 绑定时间
        public let addTime: String
        
        /// 策略类型，User表示自定义策略，QCS表示预设策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policyType: String?
        
        /// 策略创建方式，1表示按产品功能或项目权限创建，其他表示按策略语法创建
        public let createMode: UInt64
        
        /// 是否已下线(0:否 1:是)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactived: UInt64?
        
        /// 已下线的产品列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactivedDetail: [String]?
        
        /// 策略描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case addTime = "AddTime"
            case policyType = "PolicyType"
            case createMode = "CreateMode"
            case deactived = "Deactived"
            case deactivedDetail = "DeactivedDetail"
            case description = "Description"
        }
    }
    
    /// 用户关联的策略详情
    public struct AttachedUserPolicy: TCOutputModel {
        /// 策略ID
        public let policyId: String
        
        /// 策略名
        public let policyName: String
        
        /// 策略描述
        public let description: String
        
        /// 创建时间
        public let addTime: String
        
        /// 策略类型(1表示自定义策略，2表示预设策略)
        public let strategyType: String
        
        /// 创建模式(1表示按产品或项目权限创建的策略，其他表示策略语法创建的策略)
        public let createMode: String
        
        /// 随组关联信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groups: [AttachedUserPolicyGroupInfo]?
        
        /// 是否已下线(0:否 1:是)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactived: UInt64?
        
        /// 已下线的产品列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactivedDetail: [String]?
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case description = "Description"
            case addTime = "AddTime"
            case strategyType = "StrategyType"
            case createMode = "CreateMode"
            case groups = "Groups"
            case deactived = "Deactived"
            case deactivedDetail = "DeactivedDetail"
        }
    }
    
    /// 用户关联策略(随组关联)信息
    public struct AttachedUserPolicyGroupInfo: TCOutputModel {
        /// 分组ID
        public let groupId: UInt64
        
        /// 分组名称
        public let groupName: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
        }
    }
    
    /// 子用户和用户组关联信息
    public struct GroupIdOfUidInfo: TCInputModel {
        /// 用户组 ID
        public let groupId: UInt64
        
        /// 子用户 UID
        public let uid: UInt64?
        
        /// 子用户 Uin，Uid和Uin至少有一个必填
        public let uin: UInt64?
        
        public init (groupId: UInt64, uid: UInt64?, uin: UInt64?) {
            self.groupId = groupId
            self.uid = uid
            self.uin = uin
        }
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case uid = "Uid"
            case uin = "Uin"
        }
    }
    
    /// 用户组信息
    public struct GroupInfo: TCOutputModel {
        /// 用户组 ID。
        public let groupId: UInt64
        
        /// 用户组名称。
        public let groupName: String
        
        /// 用户组创建时间。
        public let createTime: String
        
        /// 用户组描述。
        public let remark: String
        
        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
            case groupName = "GroupName"
            case createTime = "CreateTime"
            case remark = "Remark"
        }
    }
    
    /// 用户组用户信息
    public struct GroupMemberInfo: TCOutputModel {
        /// 子用户 Uid。
        public let uid: UInt64
        
        /// 子用户 Uin。
        public let uin: UInt64
        
        /// 子用户名称。
        public let name: String
        
        /// 手机号。
        public let phoneNum: String
        
        /// 手机区域代码。
        public let countryCode: String
        
        /// 是否已验证手机。0-未验证  1-验证
        public let phoneFlag: UInt64
        
        /// 邮箱地址。
        public let email: String
        
        /// 是否已验证邮箱。0-未验证  1-验证
        public let emailFlag: UInt64
        
        /// 用户类型。1-全局协作者 2-项目协作者 3-消息接收者
        public let userType: UInt64
        
        /// 创建时间。
        public let createTime: String
        
        /// 是否为主消息接收人。0-否 1-是
        public let isReceiverOwner: UInt64
        
        enum CodingKeys: String, CodingKey {
            case uid = "Uid"
            case uin = "Uin"
            case name = "Name"
            case phoneNum = "PhoneNum"
            case countryCode = "CountryCode"
            case phoneFlag = "PhoneFlag"
            case email = "Email"
            case emailFlag = "EmailFlag"
            case userType = "UserType"
            case createTime = "CreateTime"
            case isReceiverOwner = "IsReceiverOwner"
        }
    }
    
    /// ListGrantServiceAccessAction节点
    public struct ListGrantServiceAccessActionNode: TCOutputModel {
        /// 接口名
        public let name: String
        
        /// 接口描述
        public let description: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
        }
    }
    
    /// 用于ListPoliciesGrantingServiceAccess接口的List节点
    public struct ListGrantServiceAccessNode: TCOutputModel {
        /// 服务
        public let service: ListGrantServiceAccessService
        
        /// 接口信息
        public let action: [ListGrantServiceAccessActionNode]
        
        /// 授权的策略
        public let policy: [ListGrantServiceAccessPolicy]
        
        enum CodingKeys: String, CodingKey {
            case service = "Service"
            case action = "Action"
            case policy = "Policy"
        }
    }
    
    /// 用于ListPoliciesGrantingServiceAccess接口的Policy节点
    public struct ListGrantServiceAccessPolicy: TCOutputModel {
        /// 策略ID
        public let policyId: String
        
        /// 策略名
        public let policyName: String
        
        /// 策略类型: Custom自定义策略，Presetting预设策略
        public let policyType: String
        
        /// 策略描述
        public let policyDescription: String
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case policyType = "PolicyType"
            case policyDescription = "PolicyDescription"
        }
    }
    
    /// 用于ListPoliciesGrantingServiceAccess接口的Service节点
    public struct ListGrantServiceAccessService: TCOutputModel {
        /// 服务
        public let serviceType: String
        
        /// 服务名
        public let serviceName: String
        
        enum CodingKeys: String, CodingKey {
            case serviceType = "ServiceType"
            case serviceName = "ServiceName"
        }
    }
    
    /// 登录和敏感操作flag
    public struct LoginActionFlag: TCInputModel, TCOutputModel {
        /// 手机
        public let phone: UInt64?
        
        /// 硬token
        public let token: UInt64?
        
        /// 软token
        public let stoken: UInt64?
        
        /// 微信
        public let wechat: UInt64?
        
        /// 自定义
        public let custom: UInt64?
        
        public init (phone: UInt64?, token: UInt64?, stoken: UInt64?, wechat: UInt64?, custom: UInt64?) {
            self.phone = phone
            self.token = token
            self.stoken = stoken
            self.wechat = wechat
            self.custom = custom
        }
        
        enum CodingKeys: String, CodingKey {
            case phone = "Phone"
            case token = "Token"
            case stoken = "Stoken"
            case wechat = "Wechat"
            case custom = "Custom"
        }
    }
    
    /// 登录和敏感操作flag
    public struct LoginActionFlagIntl: TCInputModel, TCOutputModel {
        /// 手机
        public let phone: UInt64?
        
        /// 硬token
        public let token: UInt64?
        
        /// 软token
        public let stoken: UInt64?
        
        /// 微信
        public let wechat: UInt64?
        
        /// 自定义
        public let custom: UInt64?
        
        /// 邮件
        public let mail: UInt64?
        
        public init (phone: UInt64?, token: UInt64?, stoken: UInt64?, wechat: UInt64?, custom: UInt64?, mail: UInt64?) {
            self.phone = phone
            self.token = token
            self.stoken = stoken
            self.wechat = wechat
            self.custom = custom
            self.mail = mail
        }
        
        enum CodingKeys: String, CodingKey {
            case phone = "Phone"
            case token = "Token"
            case stoken = "Stoken"
            case wechat = "Wechat"
            case custom = "Custom"
            case mail = "Mail"
        }
    }
    
    /// 登录和敏感操作flag
    public struct LoginActionMfaFlag: TCInputModel, TCOutputModel {
        /// 手机
        public let phone: UInt64?
        
        /// 软token
        public let stoken: UInt64?
        
        /// 微信
        public let wechat: UInt64?
        
        public init (phone: UInt64?, stoken: UInt64?, wechat: UInt64?) {
            self.phone = phone
            self.stoken = stoken
            self.wechat = wechat
        }
        
        enum CodingKeys: String, CodingKey {
            case phone = "Phone"
            case stoken = "Stoken"
            case wechat = "Wechat"
        }
    }
    
    /// 异地登录设置
    public struct OffsiteFlag: TCInputModel, TCOutputModel {
        /// 验证标识
        public let verifyFlag: UInt64?
        
        /// 手机通知
        public let notifyPhone: UInt64?
        
        /// 邮箱通知
        public let notifyEmail: Int64?
        
        /// 微信通知
        public let notifyWechat: UInt64?
        
        /// 提示
        public let tips: UInt64?
        
        public init (verifyFlag: UInt64?, notifyPhone: UInt64?, notifyEmail: Int64?, notifyWechat: UInt64?, tips: UInt64?) {
            self.verifyFlag = verifyFlag
            self.notifyPhone = notifyPhone
            self.notifyEmail = notifyEmail
            self.notifyWechat = notifyWechat
            self.tips = tips
        }
        
        enum CodingKeys: String, CodingKey {
            case verifyFlag = "VerifyFlag"
            case notifyPhone = "NotifyPhone"
            case notifyEmail = "NotifyEmail"
            case notifyWechat = "NotifyWechat"
            case tips = "Tips"
        }
    }
    
    /// 策略版本详情
    public struct PolicyVersionDetail: TCOutputModel {
        /// 策略版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionId: UInt64?
        
        /// 策略版本创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createDate: String?
        
        /// 是否是正在生效的版本。0表示不是，1表示是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDefaultVersion: UInt64?
        
        /// 策略语法文本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let document: String?
        
        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case createDate = "CreateDate"
            case isDefaultVersion = "IsDefaultVersion"
            case document = "Document"
        }
    }
    
    /// 策略版本列表元素结构
    public struct PolicyVersionItem: TCOutputModel {
        /// 策略版本号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let versionId: UInt64?
        
        /// 策略版本创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createDate: String?
        
        /// 是否是正在生效的版本。0表示不是，1表示是
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDefaultVersion: Int64?
        
        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case createDate = "CreateDate"
            case isDefaultVersion = "IsDefaultVersion"
        }
    }
    
    /// 角色详细信息
    public struct RoleInfo: TCOutputModel {
        /// 角色ID
        public let roleId: String
        
        /// 角色名称
        public let roleName: String
        
        /// 角色的策略文档
        public let policyDocument: String
        
        /// 角色描述
        public let description: String
        
        /// 角色的创建时间
        public let addTime: String
        
        /// 角色的最近一次时间
        public let updateTime: String
        
        /// 角色是否允许登录
        public let consoleLogin: UInt64
        
        /// 角色类型，取user、system或service_linked
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let roleType: String?
        
        /// 有效时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sessionDuration: UInt64?
        
        /// 服务相关角色删除TaskId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deletionTaskId: String?
        
        /// 标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [RoleTags]?
        
        enum CodingKeys: String, CodingKey {
            case roleId = "RoleId"
            case roleName = "RoleName"
            case policyDocument = "PolicyDocument"
            case description = "Description"
            case addTime = "AddTime"
            case updateTime = "UpdateTime"
            case consoleLogin = "ConsoleLogin"
            case roleType = "RoleType"
            case sessionDuration = "SessionDuration"
            case deletionTaskId = "DeletionTaskId"
            case tags = "Tags"
        }
    }
    
    /// 角色标签类型
    public struct RoleTags: TCInputModel, TCOutputModel {
        /// 标签键
        public let key: String
        
        /// 标签值
        public let value: String
        
        public init (key: String, value: String) {
            self.key = key
            self.value = value
        }
        
        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case value = "Value"
        }
    }
    
    /// SAML身份提供商
    public struct SAMLProviderInfo: TCInputModel, TCOutputModel {
        /// SAML身份提供商名称
        public let name: String
        
        /// SAML身份提供商描述
        public let description: String
        
        /// SAML身份提供商创建时间
        public let createTime: String
        
        /// SAML身份提供商上次修改时间
        public let modifyTime: String
        
        public init (name: String, description: String, createTime: String, modifyTime: String) {
            self.name = name
            self.description = description
            self.createTime = createTime
            self.modifyTime = modifyTime
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case description = "Description"
            case createTime = "CreateTime"
            case modifyTime = "ModifyTime"
        }
    }
    
    /// 密钥最后使用时间
    public struct SecretIdLastUsed: TCOutputModel {
        /// 密钥ID
        public let secretId: String
        
        /// 最后访问日期(有1天延迟)
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastUsedDate: Date?
        
        enum CodingKeys: String, CodingKey {
            case secretId = "SecretId"
            case lastUsedDate = "LastUsedDate"
        }
    }
    
    /// 策略信息
    public struct StrategyInfo: TCOutputModel {
        /// 策略ID。
        public let policyId: UInt64
        
        /// 策略名称。
        public let policyName: String
        
        /// 策略创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let addTime: Date?
        
        /// 策略类型。1 表示自定义策略，2 表示预设策略。
        public let type: UInt64
        
        /// 策略描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?
        
        /// 创建来源，1 通过控制台创建, 2 通过策略语法创建。
        public let createMode: UInt64
        
        /// 关联的用户数
        public let attachments: UInt64
        
        /// 策略关联的产品
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceType: String?
        
        /// 当需要查询标记实体是否已经关联策略时不为null。0表示未关联策略，1表示已关联策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isAttached: UInt64?
        
        /// 是否已下线
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactived: UInt64?
        
        /// 已下线产品列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deactivedDetail: [String]?
        
        /// 是否是服务相关角色策略
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isServiceLinkedPolicy: UInt64?
        
        /// 关联策略实体数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attachEntityCount: Int64?
        
        /// 关联权限边界实体数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attachEntityBoundaryCount: Int64?
        
        /// 最后编辑时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updateTime: Date?
        
        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case policyName = "PolicyName"
            case addTime = "AddTime"
            case type = "Type"
            case description = "Description"
            case createMode = "CreateMode"
            case attachments = "Attachments"
            case serviceType = "ServiceType"
            case isAttached = "IsAttached"
            case deactived = "Deactived"
            case deactivedDetail = "DeactivedDetail"
            case isServiceLinkedPolicy = "IsServiceLinkedPolicy"
            case attachEntityCount = "AttachEntityCount"
            case attachEntityBoundaryCount = "AttachEntityBoundaryCount"
            case updateTime = "UpdateTime"
        }
    }
    
    /// 子用户信息
    public struct SubAccountInfo: TCOutputModel {
        /// 子用户用户 ID
        public let uin: UInt64
        
        /// 子用户用户名
        public let name: String
        
        /// 子用户 UID
        public let uid: UInt64
        
        /// 子用户备注
        public let remark: String
        
        /// 子用户能否登录控制台
        public let consoleLogin: UInt64
        
        /// 手机号
        public let phoneNum: String
        
        /// 区号
        public let countryCode: String
        
        /// 邮箱
        public let email: String
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Date?
        
        /// 昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nickName: String?
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case uid = "Uid"
            case remark = "Remark"
            case consoleLogin = "ConsoleLogin"
            case phoneNum = "PhoneNum"
            case countryCode = "CountryCode"
            case email = "Email"
            case createTime = "CreateTime"
            case nickName = "NickName"
        }
    }
    
    /// 子用户信息
    public struct SubAccountUser: TCOutputModel {
        /// 子用户用户 ID
        public let uin: UInt64
        
        /// 子用户用户名
        public let name: String
        
        /// 子用户 UID，UID是用户作为消息接收人时的唯一标识，和 UIN 一样可以唯一标识一个用户，可通过接口https://cloud.tencent.com/document/api/598/53486 获取
        public let uid: UInt64
        
        /// 子用户备注
        public let remark: String
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Date?
        
        /// 用户类型(2:子用户;3:企业微信子用户;4:协作者;5:消息接收人)
        public let userType: UInt64
        
        /// 最近登录IP
        public let lastLoginIp: String
        
        /// 最近登录时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastLoginTime: String?
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case uid = "Uid"
            case remark = "Remark"
            case createTime = "CreateTime"
            case userType = "UserType"
            case lastLoginIp = "LastLoginIp"
            case lastLoginTime = "LastLoginTime"
        }
    }
    
    /// 企业微信子用户
    public struct WeChatWorkSubAccount: TCOutputModel {
        /// 子用户用户 ID
        public let uin: UInt64
        
        /// 子用户用户名
        public let name: String
        
        /// 子用户 UID
        public let uid: UInt64
        
        /// 备注
        public let remark: String
        
        /// 子用户能否登录控制台
        public let consoleLogin: UInt64
        
        /// 手机号
        public let phoneNum: String
        
        /// 区号
        public let countryCode: String
        
        /// 邮箱
        public let email: String
        
        /// 企业微信UserId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let weChatWorkUserId: String?
        
        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: Date?
        
        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case uid = "Uid"
            case remark = "Remark"
            case consoleLogin = "ConsoleLogin"
            case phoneNum = "PhoneNum"
            case countryCode = "CountryCode"
            case email = "Email"
            case weChatWorkUserId = "WeChatWorkUserId"
            case createTime = "CreateTime"
        }
    }
}