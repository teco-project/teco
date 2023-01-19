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

extension Domain {
    /// 批量任务状态
    public struct BatchStatus: TCOutputModel {
        /// 批量任务id
        public let logId: UInt64

        /// 批量任务状态  doing：进行中  success：成功  failed：失败  partial_success：部分成功
        public let status: String

        /// 批量任务类型
        public let batchAction: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case status = "Status"
            case batchAction = "BatchAction"
        }
    }

    /// 认证资料信息
    public struct CertificateInfo: TCInputModel, TCOutputModel {
        /// 证件号码。
        public let certificateCode: String

        /// 证件类型。
        /// SFZ: 身份证。
        /// HZ: 护照。
        /// TXZ: 中国港澳居民来往内地通行证。
        /// TWSFZ: 中国台湾居民来往大陆通行证。
        /// GWSFZ: 外国人永久居留身份证。
        /// ORG: 组织机构代码证
        /// YYZZ: 工商营业执照。
        /// TYDMZ: 统一社会信用代码证书。
        /// BDDH: 部队代号
        /// JDXKZ: 军队单位对外有偿服务许可证。
        /// SYZS: 事业单位法定代表人证书。
        /// GWCZDJZ: 外国企业常驻代表机构登记证。
        /// STDJZ: 社会团体法定代表人登记证书。
        /// ZJDJZ: 宗教活动场所登记证。
        /// MBDJZ: 民办非企业单位登记证书。
        /// JJDJZ: 基金会法定代表人登记证书。
        /// LSXKZ: 律师事务所执业许可证。
        /// GWZHDJZ: 外国在华文化中心登记证。
        /// GWLYDJZ: 外国政府旅游部门常驻代表机构批准登记证。
        /// SFXKZ: 司法鉴定许可证
        /// GWJGZJ: 外国机构证件。
        /// SHFWJGZ: 社会服务机构登记证书。
        /// MBXXXKZ: 民办学校办学许可证。
        /// YLJGXKZ: 医疗机构执业许可证。
        /// GAJZZ: 中国港澳居住证。
        /// TWJZZ: 中国台湾居住证。
        /// QTTYDM: 其他-统一社会信用代码证书。
        /// GZJGZY: 公证机构执业证。
        public let certificateType: String

        /// 证件照片地址。
        public let imgUrl: String

        public init(certificateCode: String, certificateType: String, imgUrl: String) {
            self.certificateCode = certificateCode
            self.certificateType = certificateType
            self.imgUrl = imgUrl
        }

        enum CodingKeys: String, CodingKey {
            case certificateCode = "CertificateCode"
            case certificateType = "CertificateType"
            case imgUrl = "ImgUrl"
        }
    }

    /// 域名联系人信息
    public struct ContactInfo: TCInputModel, TCOutputModel {
        /// 注册人（中文）
        public let organizationNameCN: String

        /// 注册人（英文）
        public let organizationName: String

        /// 联系人（中文）
        public let registrantNameCN: String

        /// 联系人（英文）
        public let registrantName: String

        /// 省份（中文）
        public let provinceCN: String

        /// 城市（中文）
        public let cityCN: String

        /// 街道（中文）
        public let streetCN: String

        /// 街道（英文）
        public let street: String

        /// 国家（中文）
        public let countryCN: String

        /// 联系人手机号
        public let telephone: String

        /// 联系人邮箱
        public let email: String

        /// 邮编
        public let zipCode: String

        /// 用户类型 E:组织， I:个人
        public let registrantType: String

        /// 省份（英文）。作为入参时可以不填
        public let province: String?

        /// 城市（英文）。作为入参时可以不填
        public let city: String?

        /// 国家（英文）。作为入参时可以不填
        public let country: String?

        public init(organizationNameCN: String, organizationName: String, registrantNameCN: String, registrantName: String, provinceCN: String, cityCN: String, streetCN: String, street: String, countryCN: String, telephone: String, email: String, zipCode: String, registrantType: String, province: String? = nil, city: String? = nil, country: String? = nil) {
            self.organizationNameCN = organizationNameCN
            self.organizationName = organizationName
            self.registrantNameCN = registrantNameCN
            self.registrantName = registrantName
            self.provinceCN = provinceCN
            self.cityCN = cityCN
            self.streetCN = streetCN
            self.street = street
            self.countryCN = countryCN
            self.telephone = telephone
            self.email = email
            self.zipCode = zipCode
            self.registrantType = registrantType
            self.province = province
            self.city = city
            self.country = country
        }

        enum CodingKeys: String, CodingKey {
            case organizationNameCN = "OrganizationNameCN"
            case organizationName = "OrganizationName"
            case registrantNameCN = "RegistrantNameCN"
            case registrantName = "RegistrantName"
            case provinceCN = "ProvinceCN"
            case cityCN = "CityCN"
            case streetCN = "StreetCN"
            case street = "Street"
            case countryCN = "CountryCN"
            case telephone = "Telephone"
            case email = "Email"
            case zipCode = "ZipCode"
            case registrantType = "RegistrantType"
            case province = "Province"
            case city = "City"
            case country = "Country"
        }
    }

    /// 获取域名基础信息
    public struct DomainBaseInfo: TCOutputModel {
        /// 域名资源ID。
        public let domainId: String

        /// 域名名称。
        public let domainName: String

        /// 域名实名认证状态。
        /// NotUpload：未实名认证
        /// InAudit：实名审核中
        /// Approved：实名审核通过
        /// Reject：实名审核失败
        /// NoAudit: 无需实名认证
        public let realNameAuditStatus: String

        /// 域名实名认证不通过原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realNameAuditUnpassReason: String?

        /// 域名命名审核状态。
        /// NotAudit：命名审核未上传
        /// Pending：命名审核待上传
        /// Auditing：域名命名审核中
        /// Approved：域名命名审核通过
        /// Rejected：域名命名审核拒绝
        public let domainNameAuditStatus: String

        /// 域名命名审核不通过原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainNameAuditUnpassReason: String?

        /// 注册时间。
        public let creationDate: String

        /// 到期时间
        public let expirationDate: String

        /// 域名状态。
        /// ok：正常
        /// serverHold：注册局暂停解析
        /// clientHold：注册商暂停解析
        /// pendingTransfer：转移中
        /// renewingPeriod：续费期
        /// redemptionPeriod：偿还期
        /// pendingDelete：删除期
        /// serverTransferProhibited：注册局禁止转移
        /// serverUpdateProhibited：注册局禁止更新
        /// serverDeleteProhibited：注册局禁止删除
        /// clientTransferProhibited：注册商禁止转移
        /// clientUpdateProhibited：注册商禁止更新
        /// clientDeleteProhibited：注册商禁止删除
        public let domainStatus: [String]

        /// 域名购买状态。
        /// ok：正常
        /// RegisterPending：待注册
        /// RegisterDoing：注册中
        /// RegisterFailed：注册失败
        /// AboutToExpire: 即将过期
        /// RenewPending：已进入续费期，需要进行续费
        /// RenewDoing：续费中
        /// RedemptionPending：已进入赎回期，需要进行续费
        /// RedemptionDoing：赎回中
        /// TransferPending：待转入中
        /// TransferTransing：转入中
        /// TransferFailed：转入失败
        public let buyStatus: String

        /// 注册商类型
        /// epp: DNSPod, Inc.（烟台帝思普网络科技有限公司）
        /// qcloud: Tencent Cloud Computing (Beijing) Limited Liability Company（腾讯云计算（北京）有限责任公司）
        /// yunxun: Guangzhou Yunxun Information Technology Co., Ltd.（广州云讯信息科技有限公司）
        /// xinnet: Xin Net Technology Corporation（北京新网数码信息技术有限公司）
        public let registrarType: String

        /// 域名绑定的ns
        public let nameServer: [String]

        /// true：开启锁定
        /// false：关闭锁定
        public let lockTransfer: Bool

        /// 锁定结束时间
        public let lockEndTime: String

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case domainName = "DomainName"
            case realNameAuditStatus = "RealNameAuditStatus"
            case realNameAuditUnpassReason = "RealNameAuditUnpassReason"
            case domainNameAuditStatus = "DomainNameAuditStatus"
            case domainNameAuditUnpassReason = "DomainNameAuditUnpassReason"
            case creationDate = "CreationDate"
            case expirationDate = "ExpirationDate"
            case domainStatus = "DomainStatus"
            case buyStatus = "BuyStatus"
            case registrarType = "RegistrarType"
            case nameServer = "NameServer"
            case lockTransfer = "LockTransfer"
            case lockEndTime = "LockEndTime"
        }
    }

    /// 批量操作日志详情
    public struct DomainBatchDetailSet: TCOutputModel {
        /// 详情ID
        public let id: Int64

        /// 域名
        public let domain: String

        /// 执行状态：
        /// doing 执行中。
        /// failed 操作失败。
        /// success  操作成功。
        public let status: String

        /// 失败原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reason: String?

        /// 创建时间
        public let createdOn: String

        /// 更新时间
        public let updatedOn: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case domain = "Domain"
            case status = "Status"
            case reason = "Reason"
            case createdOn = "CreatedOn"
            case updatedOn = "UpdatedOn"
        }
    }

    /// 批量操作记录
    public struct DomainBatchLogSet: TCOutputModel {
        /// 日志ID
        public let logId: Int64

        /// 数量
        public let number: Int64

        /// 执行状态：
        /// doing 执行中。
        /// done 执行完成。
        public let status: String

        /// 提交时间
        public let createdOn: String

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case number = "Number"
            case status = "Status"
            case createdOn = "CreatedOn"
        }
    }

    /// 域名列表
    public struct DomainList: TCOutputModel {
        /// 是否是溢价域名：
        /// ture 是
        /// false 不是
        public let isPremium: Bool

        /// 域名资源ID。
        public let domainId: String

        /// 域名名称。
        public let domainName: String

        /// 是否已设置自动续费 。
        /// 0：未设置
        /// 1：已设置
        public let autoRenew: UInt64

        /// 注册时间。
        public let creationDate: String

        /// 到期时间。
        public let expirationDate: String

        /// 域名后缀
        public let tld: String

        /// 编码后的后缀（中文会进行编码）
        public let codeTld: String

        /// 域名购买状态。
        /// ok：正常
        /// AboutToExpire: 即将到期
        /// RegisterPending：注册中
        /// RegisterDoing：注册中
        /// RegisterFailed：注册失败
        /// RenewPending：续费期
        /// RenewDoing：续费中
        /// RedemptionPending：赎回期
        /// RedemptionDoing：赎回中
        /// TransferPending：转入中
        /// TransferTransing：转入中
        /// TransferFailed：转入失败
        public let buyStatus: String

        enum CodingKeys: String, CodingKey {
            case isPremium = "IsPremium"
            case domainId = "DomainId"
            case domainName = "DomainName"
            case autoRenew = "AutoRenew"
            case creationDate = "CreationDate"
            case expirationDate = "ExpirationDate"
            case tld = "Tld"
            case codeTld = "CodeTld"
            case buyStatus = "BuyStatus"
        }
    }

    /// 获取域名基础模板信息
    public struct DomainSimpleInfo: TCOutputModel {
        /// 域名资源ID。
        public let domainId: String

        /// 域名名称。
        public let domainName: String

        /// 域名实名认证状态。
        /// NotUpload：未实名认证
        /// InAudit：实名审核中
        /// Approved：实名审核通过
        /// Reject：实名审核失败
        /// NoAudit: 无需实名认证
        public let realNameAuditStatus: String

        /// 域名实名认证不通过原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let realNameAuditUnpassReason: String?

        /// 域名命名审核状态。
        /// NotAudit：命名审核未上传
        /// Pending：命名审核待上传
        /// Auditing：域名命名审核中
        /// Approved：域名命名审核通过
        /// Rejected：域名命名审核拒绝
        public let domainNameAuditStatus: String

        /// 域名命名审核不通过原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainNameAuditUnpassReason: String?

        /// 注册时间。
        public let creationDate: String

        /// 到期时间
        public let expirationDate: String

        /// 域名状态。
        /// ok：正常
        /// serverHold：注册局暂停解析
        /// clientHold：注册商暂停解析
        /// pendingTransfer：转移中
        /// renewingPeriod：续费期
        /// redemptionPeriod：偿还期
        /// pendingDelete：删除期
        /// serverTransferProhibited：注册局禁止转移
        /// serverUpdateProhibited：注册局禁止更新
        /// serverDeleteProhibited：注册局禁止删除
        /// clientTransferProhibited：注册商禁止转移
        /// clientUpdateProhibited：注册商禁止更新
        /// clientDeleteProhibited：注册商禁止删除
        public let domainStatus: [String]

        /// 域名购买状态。
        /// ok：正常
        /// RegisterPending：待注册
        /// RegisterDoing：注册中
        /// RegisterFailed：注册失败
        /// AboutToExpire: 即将过期
        /// RenewPending：已进入续费期，需要进行续费
        /// RenewDoing：续费中
        /// RedemptionPending：已进入赎回期，需要进行续费
        /// RedemptionDoing：赎回中
        /// TransferPending：待转入中
        /// TransferTransing：转入中
        /// TransferFailed：转入失败
        public let buyStatus: String

        /// 注册商类型
        /// epp: DNSPod, Inc.（烟台帝思普网络科技有限公司）
        /// qcloud: Tencent Cloud Computing (Beijing) Limited Liability Company（腾讯云计算（北京）有限责任公司）
        /// yunxun: Guangzhou Yunxun Information Technology Co., Ltd.（广州云讯信息科技有限公司）
        /// xinnet: Xin Net Technology Corporation（北京新网数码信息技术有限公司）
        public let registrarType: String

        /// 域名绑定的ns
        public let nameServer: [String]

        /// true：开启锁定
        /// false：关闭锁定
        public let lockTransfer: Bool

        /// 锁定结束时间
        public let lockEndTime: String

        /// 认证类型：I=个人，E=企业
        public let registrantType: String

        /// 域名所有者，中文
        public let organizationNameCN: String

        /// 域名所有者，英文
        public let organizationName: String

        /// 域名联系人，中文
        public let registrantNameCN: String

        /// 域名联系人，英文
        public let registrantName: String

        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case domainName = "DomainName"
            case realNameAuditStatus = "RealNameAuditStatus"
            case realNameAuditUnpassReason = "RealNameAuditUnpassReason"
            case domainNameAuditStatus = "DomainNameAuditStatus"
            case domainNameAuditUnpassReason = "DomainNameAuditUnpassReason"
            case creationDate = "CreationDate"
            case expirationDate = "ExpirationDate"
            case domainStatus = "DomainStatus"
            case buyStatus = "BuyStatus"
            case registrarType = "RegistrarType"
            case nameServer = "NameServer"
            case lockTransfer = "LockTransfer"
            case lockEndTime = "LockEndTime"
            case registrantType = "RegistrantType"
            case organizationNameCN = "OrganizationNameCN"
            case organizationName = "OrganizationName"
            case registrantNameCN = "RegistrantNameCN"
            case registrantName = "RegistrantName"
        }
    }

    /// 手机号邮箱列表
    public struct PhoneEmailData: TCOutputModel {
        /// 手机号或者邮箱
        public let code: String

        /// 1：手机  2：邮箱
        public let type: UInt64

        /// 创建时间
        public let createdOn: String

        /// 1=控制台校验，2=第三方校验
        public let checkStatus: Int64

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case type = "Type"
            case createdOn = "CreatedOn"
            case checkStatus = "CheckStatus"
        }
    }

    /// 域名价格信息
    public struct PriceInfo: TCOutputModel {
        /// 域名后缀，例如.com
        public let tld: String

        /// 购买年限，范围[1-10]
        public let year: UInt64

        /// 域名原价
        public let price: UInt64

        /// 域名现价
        public let realPrice: UInt64

        /// 商品的购买类型，新购，续费，赎回，转入，续费并转入
        public let operation: String

        enum CodingKeys: String, CodingKey {
            case tld = "Tld"
            case year = "Year"
            case price = "Price"
            case realPrice = "RealPrice"
            case operation = "Operation"
        }
    }

    /// Template数据
    public struct TemplateInfo: TCOutputModel {
        /// 模板ID
        public let templateId: String

        /// 认证状态：未实名认证:NotUpload, 实名审核中:InAudit，已实名认证:Approved，实名审核失败:Reject
        public let auditStatus: String

        /// 创建时间
        public let createdOn: String

        /// 更新时间
        public let updatedOn: String

        /// 用户UIN
        public let userUin: String

        /// 是否是默认模板: 是:yes，否:no
        public let isDefault: String

        /// 认证失败原因
        public let auditReason: String

        /// 认证信息
        public let certificateInfo: CertificateInfo

        /// 联系人信息
        public let contactInfo: ContactInfo

        /// 模板是否符合规范， 1是 0 否
        public let isValidTemplate: Int64

        /// 不符合规范原因
        public let invalidReason: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case auditStatus = "AuditStatus"
            case createdOn = "CreatedOn"
            case updatedOn = "UpdatedOn"
            case userUin = "UserUin"
            case isDefault = "IsDefault"
            case auditReason = "AuditReason"
            case certificateInfo = "CertificateInfo"
            case contactInfo = "ContactInfo"
            case isValidTemplate = "IsValidTemplate"
            case invalidReason = "InvalidReason"
        }
    }
}
