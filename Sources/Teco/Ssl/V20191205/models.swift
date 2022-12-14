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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Ssl {
    /// 云资源配置详情
    public struct CertHostingInfo: TCOutputModel {
        /// 证书ID
        public let certId: String

        /// 已替换的新证书ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewCertId: String?

        /// 云资源托管 ，CDN或CLB：部分开启，CDN,CLB：已开启，null：未开启托管
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceType: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        enum CodingKeys: String, CodingKey {
            case certId = "CertId"
            case renewCertId = "RenewCertId"
            case resourceType = "ResourceType"
            case createTime = "CreateTime"
        }
    }

    /// 获取证书列表（DescribeCertificates）返回参数键为 Certificates 数组下，key为CertificateExtra 的内容。
    public struct CertificateExtra: TCOutputModel {
        /// 证书可配置域名数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainNumber: String?

        /// 原始证书 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let originCertificateId: String?

        /// 重颁发证书原始 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replacedBy: String?

        /// 重颁发证书新 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let replacedFor: String?

        /// 新订单证书 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewOrder: String?

        enum CodingKeys: String, CodingKey {
            case domainNumber = "DomainNumber"
            case originCertificateId = "OriginCertificateId"
            case replacedBy = "ReplacedBy"
            case replacedFor = "ReplacedFor"
            case renewOrder = "RenewOrder"
        }
    }

    /// 获取证书列表（DescribeCertificates）返回参数键为 Certificates 的内容。
    public struct Certificates: TCOutputModel {
        /// 用户 UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: String?

        /// 项目 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?

        /// 证书来源。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let from: String?

        /// 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageType: String?

        /// 证书类型：CA = 客户端证书，SVR = 服务器证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateType: String?

        /// 颁发者。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productZhName: String?

        /// 主域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 备注名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: String?

        /// 状态。0：审核中，1：已通过，2：审核失败，3：已过期，4：验证方式为 DNS_AUTO 类型的证书， 已添加DNS记录，5：企业证书，待提交，6：订单取消中，7：已取消，8：已提交资料， 待上传确认函，9：证书吊销中，10：已吊销，11：重颁发中，12：待上传吊销确认函，13：免费证书待提交资料状态，14：已退款，
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 证书扩展信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateExtra: CertificateExtra?

        /// 漏洞扫描状态：INACTIVE = 未开启，ACTIVE = 已开启
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulnerabilityStatus: String?

        /// 状态信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusMsg: String?

        /// 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyType: String?

        /// 证书生效时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certBeginTime: String?

        /// 证书过期时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certEndTime: String?

        /// 证书有效期，单位（月）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validityPeriod: String?

        /// 创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: String?

        /// 证书 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateId: String?

        /// 证书包含的多个域名（包含主域名）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectAltName: [String]?

        /// 证书类型名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageTypeName: String?

        /// 状态名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusName: String?

        /// 是否为 VIP 客户。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVip: Bool?

        /// 是否为 DV 版证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDv: Bool?

        /// 是否为泛域名证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isWildcard: Bool?

        /// 是否启用了漏洞扫描功能。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVulnerability: Bool?

        /// 是否可重颁发证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewAble: Bool?

        /// 项目信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectInfo: ProjectInfo?

        /// 关联的云资源，暂不可用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let boundResource: [String]?

        /// 是否可部署。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployable: Bool?

        /// 标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tags]?

        /// 是否已忽略到期通知
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isIgnore: Bool?

        /// 是否国密证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isSM: Bool?

        /// 证书算法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptAlgorithm: String?

        enum CodingKeys: String, CodingKey {
            case ownerUin = "OwnerUin"
            case projectId = "ProjectId"
            case from = "From"
            case packageType = "PackageType"
            case certificateType = "CertificateType"
            case productZhName = "ProductZhName"
            case domain = "Domain"
            case alias = "Alias"
            case status = "Status"
            case certificateExtra = "CertificateExtra"
            case vulnerabilityStatus = "VulnerabilityStatus"
            case statusMsg = "StatusMsg"
            case verifyType = "VerifyType"
            case certBeginTime = "CertBeginTime"
            case certEndTime = "CertEndTime"
            case validityPeriod = "ValidityPeriod"
            case insertTime = "InsertTime"
            case certificateId = "CertificateId"
            case subjectAltName = "SubjectAltName"
            case packageTypeName = "PackageTypeName"
            case statusName = "StatusName"
            case isVip = "IsVip"
            case isDv = "IsDv"
            case isWildcard = "IsWildcard"
            case isVulnerability = "IsVulnerability"
            case renewAble = "RenewAble"
            case projectInfo = "ProjectInfo"
            case boundResource = "BoundResource"
            case deployable = "Deployable"
            case tags = "Tags"
            case isIgnore = "IsIgnore"
            case isSM = "IsSM"
            case encryptAlgorithm = "EncryptAlgorithm"
        }
    }

    /// 公司信息
    public struct CompanyInfo: TCOutputModel {
        /// 公司名称
        public let companyName: String

        /// 公司ID
        public let companyId: Int64

        /// 公司所在国家
        public let companyCountry: String

        /// 公司所在省份
        public let companyProvince: String

        /// 公司所在城市
        public let companyCity: String

        /// 公司所在详细地址
        public let companyAddress: String

        /// 公司电话
        public let companyPhone: String

        enum CodingKeys: String, CodingKey {
            case companyName = "CompanyName"
            case companyId = "CompanyId"
            case companyCountry = "CompanyCountry"
            case companyProvince = "CompanyProvince"
            case companyCity = "CompanyCity"
            case companyAddress = "CompanyAddress"
            case companyPhone = "CompanyPhone"
        }
    }

    /// 资源详情
    public struct DeployedResources: TCOutputModel {
        /// 证书ID
        public let certificateId: String

        /// 数量
        public let count: Int64

        /// 资源标识:clb,cdn,live,waf,antiddos
        public let type: String

        /// 不建议使用。字段返回和Resources相同。本字段后续只返回null
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceIds: [String]?

        /// 关联资源ID或关联域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resources: [String]?

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case count = "Count"
            case type = "Type"
            case resourceIds = "ResourceIds"
            case resources = "Resources"
        }
    }

    /// 获取证书列表（DescribeCertificate）返回参数键为 DvAuthDetail 的内容。
    public struct DvAuthDetail: TCOutputModel {
        /// DV 认证密钥。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthKey: String?

        /// DV 认证值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthValue: String?

        /// DV 认证值域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthDomain: String?

        /// DV 认证值路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthPath: String?

        /// DV 认证子域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthKeySubDomain: String?

        /// DV 认证信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuths: [DvAuths]?

        enum CodingKeys: String, CodingKey {
            case dvAuthKey = "DvAuthKey"
            case dvAuthValue = "DvAuthValue"
            case dvAuthDomain = "DvAuthDomain"
            case dvAuthPath = "DvAuthPath"
            case dvAuthKeySubDomain = "DvAuthKeySubDomain"
            case dvAuths = "DvAuths"
        }
    }

    /// 返回参数键为 DvAuths 的内容。
    public struct DvAuths: TCOutputModel {
        /// DV 认证密钥。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthKey: String?

        /// DV 认证值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthValue: String?

        /// DV 认证值域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthDomain: String?

        /// DV 认证值路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthPath: String?

        /// DV 认证子域名，
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthSubDomain: String?

        /// DV 认证类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthVerifyType: String?

        enum CodingKeys: String, CodingKey {
            case dvAuthKey = "DvAuthKey"
            case dvAuthValue = "DvAuthValue"
            case dvAuthDomain = "DvAuthDomain"
            case dvAuthPath = "DvAuthPath"
            case dvAuthSubDomain = "DvAuthSubDomain"
            case dvAuthVerifyType = "DvAuthVerifyType"
        }
    }

    /// 管理人信息
    public struct ManagerInfo: TCOutputModel {
        /// 状态: audit: 审核中 ok: 审核通过 invalid: 失效 expiring: 即将过期 expired: 已过期
        public let status: String

        /// 管理人姓名
        public let managerFirstName: String

        /// 管理人姓名
        public let managerLastName: String

        /// 管理人职位
        public let managerPosition: String

        /// 管理人电话
        public let managerPhone: String

        /// 管理人邮箱
        public let managerMail: String

        /// 管理人所属部门
        public let managerDepartment: String

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 管理人域名数量
        public let domainCount: Int64

        /// 管理人证书数量
        public let certCount: Int64

        /// 管理人ID
        public let managerId: Int64

        /// 审核有效到期时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: String?

        /// 最近一次提交审核时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let submitAuditTime: String?

        /// 审核通过时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyTime: String?

        /// 具体审核状态信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusInfo: [ManagerStatusInfo]?

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case managerFirstName = "ManagerFirstName"
            case managerLastName = "ManagerLastName"
            case managerPosition = "ManagerPosition"
            case managerPhone = "ManagerPhone"
            case managerMail = "ManagerMail"
            case managerDepartment = "ManagerDepartment"
            case createTime = "CreateTime"
            case domainCount = "DomainCount"
            case certCount = "CertCount"
            case managerId = "ManagerId"
            case expireTime = "ExpireTime"
            case submitAuditTime = "SubmitAuditTime"
            case verifyTime = "VerifyTime"
            case statusInfo = "StatusInfo"
        }
    }

    /// 管理人的四种审核状态
    public struct ManagerStatusInfo: TCOutputModel {
    }

    /// 证书操作日志。
    public struct OperationLog: TCOutputModel {
        /// 操作证书动作。
        public let action: String

        /// 操作时间。
        ///
        /// **Important:** This has to be a `var` due to a property wrapper restriction, which is about to be removed in the future.
        /// For discussions, see [Allow Property Wrappers on Let Declarations](https://forums.swift.org/t/pitch-allow-property-wrappers-on-let-declarations/61750).
        ///
        /// Although mutating this property is possible for now, it may become a `let` variable at any time. Please don't rely on such behavior.
        @TCTimestampEncoding public var createdOn: Date

        enum CodingKeys: String, CodingKey {
            case action = "Action"
            case createdOn = "CreatedOn"
        }
    }

    /// 权益包基本信息
    public struct PackageInfo: TCOutputModel {
        /// 权益包ID。
        public let packageId: String

        /// 权益包内权益点总量。
        public let total: UInt64

        /// 权益包内权益点余量。
        public let balance: UInt64

        /// 权益包名称。
        public let type: String

        /// 权益点是转入时，来源信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceUin: UInt64?

        /// 权益点状态。
        public let status: String

        /// 过期时间。
        public let expireTime: String

        /// 更新时间。
        public let updateTime: String

        /// 生成时间。
        public let createTime: String

        /// 来源类型。
        public let sourceType: String

        /// 转移信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transferOutInfos: [PackageTransferOutInfo]?

        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
            case total = "Total"
            case balance = "Balance"
            case type = "Type"
            case sourceUin = "SourceUin"
            case status = "Status"
            case expireTime = "ExpireTime"
            case updateTime = "UpdateTime"
            case createTime = "CreateTime"
            case sourceType = "SourceType"
            case transferOutInfos = "TransferOutInfos"
        }
    }

    /// 权益包转出详情
    public struct PackageTransferOutInfo: TCOutputModel {
        /// 权益包ID。
        public let packageId: String

        /// 转移码。
        public let transferCode: String

        /// 本次转移点数。
        public let transferCount: UInt64

        /// 转入的PackageID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let receivePackageId: String?

        /// 本次转移过期时间。
        public let expireTime: String

        /// 本次转移生成时间。
        public let createTime: String

        /// 本次转移更新时间。
        public let updateTime: String

        /// 转移状态。
        public let transferStatus: String

        /// 接收者uin。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let receiverUin: UInt64?

        /// 接收时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let receiveTime: String?

        enum CodingKeys: String, CodingKey {
            case packageId = "PackageId"
            case transferCode = "TransferCode"
            case transferCount = "TransferCount"
            case receivePackageId = "ReceivePackageId"
            case expireTime = "ExpireTime"
            case createTime = "CreateTime"
            case updateTime = "UpdateTime"
            case transferStatus = "TransferStatus"
            case receiverUin = "ReceiverUin"
            case receiveTime = "ReceiveTime"
        }
    }

    /// 获取证书列表（DescribeCertificates）返回参数键为 Certificates 下，key为 ProjectInfo 的内容。
    public struct ProjectInfo: TCOutputModel {
        /// 项目名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectName: String?

        /// 项目创建用户 UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectCreatorUin: UInt64?

        /// 项目创建时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectCreateTime: String?

        /// 项目信息简述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectResume: String?

        /// 用户 UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: UInt64?

        /// 项目 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?

        enum CodingKeys: String, CodingKey {
            case projectName = "ProjectName"
            case projectCreatorUin = "ProjectCreatorUin"
            case projectCreateTime = "ProjectCreateTime"
            case projectResume = "ProjectResume"
            case ownerUin = "OwnerUin"
            case projectId = "ProjectId"
        }
    }

    /// 返回参数键为 RevokeDomainValidateAuths 的内容。
    public struct RevokeDomainValidateAuths: TCOutputModel {
        /// DV 认证值路径。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainValidateAuthPath: String?

        /// DV 认证 KEY。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainValidateAuthKey: String?

        /// DV 认证值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainValidateAuthValue: String?

        /// DV 认证域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainValidateAuthDomain: String?

        enum CodingKeys: String, CodingKey {
            case domainValidateAuthPath = "DomainValidateAuthPath"
            case domainValidateAuthKey = "DomainValidateAuthKey"
            case domainValidateAuthValue = "DomainValidateAuthValue"
            case domainValidateAuthDomain = "DomainValidateAuthDomain"
        }
    }

    /// 根证书
    public struct RootCertificates: TCOutputModel {
        /// 国密签名证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sign: String?

        /// 国密加密证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encrypt: String?

        /// 标准证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let standard: String?

        enum CodingKeys: String, CodingKey {
            case sign = "Sign"
            case encrypt = "Encrypt"
            case standard = "Standard"
        }
    }

    /// 获取证书列表（DescribeCertificate）返回参数键为 SubmittedData 的内容。
    public struct SubmittedData: TCInputModel, TCOutputModel {
        /// CSR 类型，（online = 在线生成CSR，parse = 粘贴 CSR）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let csrType: String?

        /// CSR 内容。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let csrContent: String?

        /// 域名信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateDomain: String?

        /// DNS 信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainList: [String]?

        /// 私钥密码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let keyPassword: String?

        /// 企业或单位名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationName: String?

        /// 部门。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationDivision: String?

        /// 地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationAddress: String?

        /// 国家。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationCountry: String?

        /// 市。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationCity: String?

        /// 省。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let organizationRegion: String?

        /// 邮政编码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postalCode: String?

        /// 座机区号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phoneAreaCode: String?

        /// 座机号码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phoneNumber: String?

        /// 管理员名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminFirstName: String?

        /// 管理员姓。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminLastName: String?

        /// 管理员电话号码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminPhoneNum: String?

        /// 管理员邮箱地址。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminEmail: String?

        /// 管理员职位。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let adminPosition: String?

        /// 联系人名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactFirstName: String?

        /// 联系人姓。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactLastName: String?

        /// 联系人电话号码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactNumber: String?

        /// 联系人邮箱地址，
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactEmail: String?

        /// 联系人职位。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let contactPosition: String?

        /// 验证类型。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyType: String?

        public init(csrType: String? = nil, csrContent: String? = nil, certificateDomain: String? = nil, domainList: [String]? = nil, keyPassword: String? = nil, organizationName: String? = nil, organizationDivision: String? = nil, organizationAddress: String? = nil, organizationCountry: String? = nil, organizationCity: String? = nil, organizationRegion: String? = nil, postalCode: String? = nil, phoneAreaCode: String? = nil, phoneNumber: String? = nil, adminFirstName: String? = nil, adminLastName: String? = nil, adminPhoneNum: String? = nil, adminEmail: String? = nil, adminPosition: String? = nil, contactFirstName: String? = nil, contactLastName: String? = nil, contactNumber: String? = nil, contactEmail: String? = nil, contactPosition: String? = nil, verifyType: String? = nil) {
            self.csrType = csrType
            self.csrContent = csrContent
            self.certificateDomain = certificateDomain
            self.domainList = domainList
            self.keyPassword = keyPassword
            self.organizationName = organizationName
            self.organizationDivision = organizationDivision
            self.organizationAddress = organizationAddress
            self.organizationCountry = organizationCountry
            self.organizationCity = organizationCity
            self.organizationRegion = organizationRegion
            self.postalCode = postalCode
            self.phoneAreaCode = phoneAreaCode
            self.phoneNumber = phoneNumber
            self.adminFirstName = adminFirstName
            self.adminLastName = adminLastName
            self.adminPhoneNum = adminPhoneNum
            self.adminEmail = adminEmail
            self.adminPosition = adminPosition
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.contactNumber = contactNumber
            self.contactEmail = contactEmail
            self.contactPosition = contactPosition
            self.verifyType = verifyType
        }

        enum CodingKeys: String, CodingKey {
            case csrType = "CsrType"
            case csrContent = "CsrContent"
            case certificateDomain = "CertificateDomain"
            case domainList = "DomainList"
            case keyPassword = "KeyPassword"
            case organizationName = "OrganizationName"
            case organizationDivision = "OrganizationDivision"
            case organizationAddress = "OrganizationAddress"
            case organizationCountry = "OrganizationCountry"
            case organizationCity = "OrganizationCity"
            case organizationRegion = "OrganizationRegion"
            case postalCode = "PostalCode"
            case phoneAreaCode = "PhoneAreaCode"
            case phoneNumber = "PhoneNumber"
            case adminFirstName = "AdminFirstName"
            case adminLastName = "AdminLastName"
            case adminPhoneNum = "AdminPhoneNum"
            case adminEmail = "AdminEmail"
            case adminPosition = "AdminPosition"
            case contactFirstName = "ContactFirstName"
            case contactLastName = "ContactLastName"
            case contactNumber = "ContactNumber"
            case contactEmail = "ContactEmail"
            case contactPosition = "ContactPosition"
            case verifyType = "VerifyType"
        }
    }

    /// 标签
    public struct Tags: TCInputModel, TCOutputModel {
        /// 标签键
        public let tagKey: String

        /// 标签值
        public let tagValue: String

        public init(tagKey: String, tagValue: String) {
            self.tagKey = tagKey
            self.tagValue = tagValue
        }

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }
}
