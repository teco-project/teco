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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Ciam {
    /// 失败详情
    public struct ErrorDetails: TCOutputModel {
        /// 用户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 失败原因
        public let error: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case error = "Error"
        }
    }

    /// 导出属性映射
    public struct ExportPropertyMap: TCInputModel, TCOutputModel {
        /// 用户属性code
        public let userPropertyCode: String

        /// 用户属性映射名称
        public let columnName: String

        public init(userPropertyCode: String, columnName: String) {
            self.userPropertyCode = userPropertyCode
            self.columnName = columnName
        }

        enum CodingKeys: String, CodingKey {
            case userPropertyCode = "UserPropertyCode"
            case columnName = "ColumnName"
        }
    }

    /// 失败的用户
    public struct FailedUsers: TCOutputModel {
        /// 失败用户标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedUserIdentification: String?

        /// 导入的用户失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedReason: String?

        enum CodingKeys: String, CodingKey {
            case failedUserIdentification = "FailedUserIdentification"
            case failedReason = "FailedReason"
        }
    }

    /// 查询条件
    public struct Filter: TCInputModel {
        /// key值
        public let key: String?

        /// value值
        public let values: [String]?

        /// 逻辑值
        public let logic: Bool?

        public init(key: String? = nil, values: [String]? = nil, logic: Bool? = nil) {
            self.key = key
            self.values = values
            self.logic = logic
        }

        enum CodingKeys: String, CodingKey {
            case key = "Key"
            case values = "Values"
            case logic = "Logic"
        }
    }

    /// 导入用户信息
    /// 1、UserName，PhoneNumber ，Email ，WechatOpenId ，WechatUnionId ，AlipayUserId ，QqOpenId ，QqUnionId 八个属性中，导入时必须包含其中一个属性并遵守初始化自定义属性的正则表达式规则。UserName，PhoneNumber，Email的正则表达式在控制台的自定义属性中可以查询到。
    /// 2、对于密码的导入，导入的密码支持明文导入，MD5密文导入，SHA1密文导入，BCRYPT密文导入 ，这个需要在PasswordEncryptTypeEnum 字段中指定。
    /// 3、IdentityVerified，IdentityVerificationMethod 支持导入，
    /// IdentityVerified 为true，IdentityVerificationMethod必传；
    /// IdentityVerificationMethod 为nameAndIdCard，Name,ResidentIdentityCard必传
    /// IdentityVerificationMethod 为nameIdCardAndPhone，Name,PhoneNumber,ResidentIdentityCard必传;
    public struct ImportUser: TCInputModel {
        /// 用户名
        public let userName: String?

        /// 手机号
        public let phoneNumber: String?

        /// 邮箱
        public let email: String?

        /// 身份证号
        public let residentIdentityCard: String?

        /// 昵称
        public let nickname: String?

        /// 地址
        public let address: String?

        /// 用户组ID
        public let userGroup: [String]?

        /// QQ qqOpenId
        public let qqOpenId: String?

        /// QQ qqUnionId
        public let qqUnionId: String?

        /// 微信wechatOpenId
        public let wechatOpenId: String?

        /// 微信wechatUnionId
        public let wechatUnionId: String?

        /// 支付宝alipayUserId
        public let alipayUserId: String?

        /// 描述
        public let description: String?

        /// 生日
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCDateEncoding public var birthdate: Date?

        /// 姓名
        public let name: String?

        /// 坐标
        public let locale: String?

        /// 性别（MALE;FEMALE;UNKNOWN）
        public let gender: String?

        /// 实名核验方式
        public let identityVerificationMethod: String?

        /// 是否已实名核验
        public let identityVerified: Bool?

        /// 工作
        public let job: String?

        /// 国家
        public let nationality: String?

        /// 时区
        public let zone: String?

        /// 密码密文
        public let password: String?

        /// 自定义属性
        public let customizationAttributes: [MemberMap]?

        /// 密码盐
        public let salt: Salt?

        /// 密码加密方式（SHA1;BCRYPT）
        public let passwordEncryptTypeEnum: String?

        /// 索引字段1
        public let indexedAttribute1: String?

        /// 索引字段2
        public let indexedAttribute2: String?

        /// 索引字段3
        public let indexedAttribute3: String?

        /// 索引字段4
        public let indexedAttribute4: String?

        /// 索引字段5
        public let indexedAttribute5: String?

        public init(userName: String? = nil, phoneNumber: String? = nil, email: String? = nil, residentIdentityCard: String? = nil, nickname: String? = nil, address: String? = nil, userGroup: [String]? = nil, qqOpenId: String? = nil, qqUnionId: String? = nil, wechatOpenId: String? = nil, wechatUnionId: String? = nil, alipayUserId: String? = nil, description: String? = nil, birthdate: Date? = nil, name: String? = nil, locale: String? = nil, gender: String? = nil, identityVerificationMethod: String? = nil, identityVerified: Bool? = nil, job: String? = nil, nationality: String? = nil, zone: String? = nil, password: String? = nil, customizationAttributes: [MemberMap]? = nil, salt: Salt? = nil, passwordEncryptTypeEnum: String? = nil, indexedAttribute1: String? = nil, indexedAttribute2: String? = nil, indexedAttribute3: String? = nil, indexedAttribute4: String? = nil, indexedAttribute5: String? = nil) {
            self.userName = userName
            self.phoneNumber = phoneNumber
            self.email = email
            self.residentIdentityCard = residentIdentityCard
            self.nickname = nickname
            self.address = address
            self.userGroup = userGroup
            self.qqOpenId = qqOpenId
            self.qqUnionId = qqUnionId
            self.wechatOpenId = wechatOpenId
            self.wechatUnionId = wechatUnionId
            self.alipayUserId = alipayUserId
            self.description = description
            self._birthdate = .init(wrappedValue: birthdate)
            self.name = name
            self.locale = locale
            self.gender = gender
            self.identityVerificationMethod = identityVerificationMethod
            self.identityVerified = identityVerified
            self.job = job
            self.nationality = nationality
            self.zone = zone
            self.password = password
            self.customizationAttributes = customizationAttributes
            self.salt = salt
            self.passwordEncryptTypeEnum = passwordEncryptTypeEnum
            self.indexedAttribute1 = indexedAttribute1
            self.indexedAttribute2 = indexedAttribute2
            self.indexedAttribute3 = indexedAttribute3
            self.indexedAttribute4 = indexedAttribute4
            self.indexedAttribute5 = indexedAttribute5
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case phoneNumber = "PhoneNumber"
            case email = "Email"
            case residentIdentityCard = "ResidentIdentityCard"
            case nickname = "Nickname"
            case address = "Address"
            case userGroup = "UserGroup"
            case qqOpenId = "QqOpenId"
            case qqUnionId = "QqUnionId"
            case wechatOpenId = "WechatOpenId"
            case wechatUnionId = "WechatUnionId"
            case alipayUserId = "AlipayUserId"
            case description = "Description"
            case birthdate = "Birthdate"
            case name = "Name"
            case locale = "Locale"
            case gender = "Gender"
            case identityVerificationMethod = "IdentityVerificationMethod"
            case identityVerified = "IdentityVerified"
            case job = "Job"
            case nationality = "Nationality"
            case zone = "Zone"
            case password = "Password"
            case customizationAttributes = "CustomizationAttributes"
            case salt = "Salt"
            case passwordEncryptTypeEnum = "PasswordEncryptTypeEnum"
            case indexedAttribute1 = "IndexedAttribute1"
            case indexedAttribute2 = "IndexedAttribute2"
            case indexedAttribute3 = "IndexedAttribute3"
            case indexedAttribute4 = "IndexedAttribute4"
            case indexedAttribute5 = "IndexedAttribute5"
        }
    }

    /// 任务详情
    public struct Job: TCOutputModel {
        /// 任务ID
        public let id: String

        /// 任务状态
        ///
        /// <li> **PENDING** </li>  待执行
        /// <li> **PROCESSING** </li>  执行中
        /// <li> **COMPLETED** </li>  完成
        /// <li> **FAILED** </li>  失败
        public let status: String

        /// 任务类型
        ///
        /// <li> **IMPORT_USER** </li>  用户导入
        /// <li> **EXPORT_USER** </li>  用户导出
        public let type: String

        /// 任务创建时间
        public let createdDate: Int64

        /// 任务的数据类型
        ///
        /// <li> **NDJSON** </li>  New-line Delimited JSON
        /// <li> **CSV** </li>  Comma-Separated Values
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let format: String?

        /// 任务结果下载地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let location: String?

        /// 失败详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errorDetails: [ErrorDetails]?

        /// 失败的用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedUsers: [FailedUsers]?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case status = "Status"
            case type = "Type"
            case createdDate = "CreatedDate"
            case format = "Format"
            case location = "Location"
            case errorDetails = "ErrorDetails"
            case failedUsers = "FailedUsers"
        }
    }

    /// 日志详情
    public struct LogMessage: TCOutputModel {
        /// 日志标识
        public let logId: String

        /// 租户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tenantId: String?

        /// 用户池ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userStoreId: String?

        /// 事件编码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventCode: String?

        /// 事件发生时间戳，单位：毫秒
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let eventDate: Int64?

        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 事件参与者
        ///
        /// <li> **TENANT** </li>  租户
        /// <li> **USER** </li>  用户
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let participant: String?

        /// 应用clientId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationClientId: String?

        /// 应用名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationName: String?

        /// 认证源ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authSourceId: String?

        /// 认证源名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authSourceName: String?

        /// 认证源类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authSourceType: String?

        /// 认证源类别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let authSourceCategory: String?

        /// IP地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ip: String?

        /// 用户代理
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userAgent: String?

        /// 用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let detail: String?

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case tenantId = "TenantId"
            case userStoreId = "UserStoreId"
            case eventCode = "EventCode"
            case eventDate = "EventDate"
            case description = "Description"
            case participant = "Participant"
            case applicationClientId = "ApplicationClientId"
            case applicationName = "ApplicationName"
            case authSourceId = "AuthSourceId"
            case authSourceName = "AuthSourceName"
            case authSourceType = "AuthSourceType"
            case authSourceCategory = "AuthSourceCategory"
            case ip = "Ip"
            case userAgent = "UserAgent"
            case userId = "UserId"
            case detail = "Detail"
        }
    }

    /// Map数据类型
    public struct MemberMap: TCInputModel, TCOutputModel {
        /// 健
        public let name: String

        /// 值
        public let value: String

        /// 类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: String?

        public init(name: String, value: String, type: String? = nil) {
            self.name = name
            self.value = value
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
            case type = "Type"
        }
    }

    /// 分页对象
    public struct Pageable: TCInputModel, TCOutputModel {
        /// 每页数量
        public let pageSize: Int64

        /// 当前页码
        public let pageNumber: Int64

        public init(pageSize: Int64, pageNumber: Int64) {
            self.pageSize = pageSize
            self.pageNumber = pageNumber
        }

        enum CodingKeys: String, CodingKey {
            case pageSize = "PageSize"
            case pageNumber = "PageNumber"
        }
    }

    /// 查询用户信息条件
    public struct QueryUserFilter: TCInputModel {
        /// 属性key
        public let propertyKey: String?

        /// 属性value
        public let propertyValue: String?

        /// 逻辑值，等于true，不等于false
        public let logic: Bool?

        /// 操作逻辑符（支持> < = >= <=  != between）
        public let operateLogic: String?

        public init(propertyKey: String? = nil, propertyValue: String? = nil, logic: Bool? = nil, operateLogic: String? = nil) {
            self.propertyKey = propertyKey
            self.propertyValue = propertyValue
            self.logic = logic
            self.operateLogic = operateLogic
        }

        enum CodingKeys: String, CodingKey {
            case propertyKey = "PropertyKey"
            case propertyValue = "PropertyValue"
            case logic = "Logic"
            case operateLogic = "OperateLogic"
        }
    }

    /// 密码盐
    public struct Salt: TCInputModel {
        /// 盐值
        public let saltValue: String?

        /// 盐值位置
        public let saltLocation: SaltLocation?

        public init(saltValue: String? = nil, saltLocation: SaltLocation? = nil) {
            self.saltValue = saltValue
            self.saltLocation = saltLocation
        }

        enum CodingKeys: String, CodingKey {
            case saltValue = "SaltValue"
            case saltLocation = "SaltLocation"
        }
    }

    /// 盐位
    public struct SaltLocation: TCInputModel {
        /// 密码加盐的类型（HEAD，TAIL，OTHER）
        public let saltLocationTypeEnum: String?

        /// 加盐规则
        public let saltLocationRule: SaltLocationRule?

        public init(saltLocationTypeEnum: String? = nil, saltLocationRule: SaltLocationRule? = nil) {
            self.saltLocationTypeEnum = saltLocationTypeEnum
            self.saltLocationRule = saltLocationRule
        }

        enum CodingKeys: String, CodingKey {
            case saltLocationTypeEnum = "SaltLocationTypeEnum"
            case saltLocationRule = "SaltLocationRule"
        }
    }

    /// 盐位规则
    public struct SaltLocationRule: TCInputModel {
        /// 表达式
        public let regex: String?

        public init(regex: String? = nil) {
            self.regex = regex
        }

        enum CodingKeys: String, CodingKey {
            case regex = "Regex"
        }
    }

    /// 查询用户排序
    public struct Sort: TCInputModel {
        /// 排序字段的key，参考自定义属性
        public let propertyKey: String?

        /// 升序或者降序，ASC/DESC
        public let order: String?

        public init(propertyKey: String? = nil, order: String? = nil) {
            self.propertyKey = propertyKey
            self.order = order
        }

        enum CodingKeys: String, CodingKey {
            case propertyKey = "PropertyKey"
            case order = "Order"
        }
    }

    /// 用户信息
    public struct User: TCOutputModel {
        /// 用户ID
        public let userId: String

        /// 用户名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userName: String?

        /// 手机号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phoneNumber: String?

        /// 邮箱
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let email: String?

        /// 上次登录时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastSignOn: Int64?

        /// 创建时间
        public let createdDate: Int64

        /// 状态
        public let status: String

        /// 用户来源
        public let userDataSourceEnum: String

        /// 昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nickname: String?

        /// 地址
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let address: String?

        /// 生日
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let birthdate: Int64?

        /// 用户组ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userGroups: [String]?

        /// 上次修改时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifiedDate: Int64?

        /// 自定义属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let customAttributes: [MemberMap]?

        /// 身份证号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let residentIdentityCard: String?

        /// QQ的OpenId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qqOpenId: String?

        /// QQ的UnionId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qqUnionId: String?

        /// 微信的WechatOpenId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wechatOpenId: String?

        /// 微信的WechatUnionId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wechatUnionId: String?

        /// 支付宝的AlipayUserId
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alipayUserId: String?

        /// 描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let description: String?

        /// 姓名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 坐标
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let locale: String?

        /// 性别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gender: String?

        /// 实名核验方式
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityVerificationMethod: String?

        /// 是否已经实名核验
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let identityVerified: Bool?

        /// 工作
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let job: String?

        /// 国家
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nationality: String?

        /// 是否主账号（进行过账号融合后，主账号为true，从账号为false）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let primary: Bool?

        /// 时区
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zone: String?

        /// 是否已经首次登录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alreadyFirstLogin: Bool?

        /// 租户id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tenantId: String?

        /// 用户目录id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userStoreId: String?

        /// 版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let version: Int64?

        /// 锁定类型（分为管理员锁定，和登录策略锁定）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lockType: String?

        /// 锁定时间点
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lockTime: Int64?

        /// 索引字段1
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexedAttribute1: String?

        /// 索引字段2
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexedAttribute2: String?

        /// 索引字段3
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexedAttribute3: String?

        /// 索引字段4
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexedAttribute4: String?

        /// 索引字段5
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let indexedAttribute5: String?

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case userName = "UserName"
            case phoneNumber = "PhoneNumber"
            case email = "Email"
            case lastSignOn = "LastSignOn"
            case createdDate = "CreatedDate"
            case status = "Status"
            case userDataSourceEnum = "UserDataSourceEnum"
            case nickname = "Nickname"
            case address = "Address"
            case birthdate = "Birthdate"
            case userGroups = "UserGroups"
            case lastModifiedDate = "LastModifiedDate"
            case customAttributes = "CustomAttributes"
            case residentIdentityCard = "ResidentIdentityCard"
            case qqOpenId = "QqOpenId"
            case qqUnionId = "QqUnionId"
            case wechatOpenId = "WechatOpenId"
            case wechatUnionId = "WechatUnionId"
            case alipayUserId = "AlipayUserId"
            case description = "Description"
            case name = "Name"
            case locale = "Locale"
            case gender = "Gender"
            case identityVerificationMethod = "IdentityVerificationMethod"
            case identityVerified = "IdentityVerified"
            case job = "Job"
            case nationality = "Nationality"
            case primary = "Primary"
            case zone = "Zone"
            case alreadyFirstLogin = "AlreadyFirstLogin"
            case tenantId = "TenantId"
            case userStoreId = "UserStoreId"
            case version = "Version"
            case lockType = "LockType"
            case lockTime = "LockTime"
            case indexedAttribute1 = "IndexedAttribute1"
            case indexedAttribute2 = "IndexedAttribute2"
            case indexedAttribute3 = "IndexedAttribute3"
            case indexedAttribute4 = "IndexedAttribute4"
            case indexedAttribute5 = "IndexedAttribute5"
        }
    }
}
