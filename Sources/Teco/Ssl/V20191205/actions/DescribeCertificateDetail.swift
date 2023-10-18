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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Ssl {
    /// DescribeCertificateDetail请求参数结构体
    public struct DescribeCertificateDetailRequest: TCRequest {
        /// 证书 ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// DescribeCertificateDetail返回参数结构体
    public struct DescribeCertificateDetailResponse: TCResponse {
        /// 用户 UIN。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let ownerUin: String?

        /// 项目 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?

        /// 证书来源：trustasia = 亚洲诚信，upload = 用户上传。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let from: String?

        /// 证书类型：CA = 客户端证书，SVR = 服务器证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateType: String?

        /// 证书套餐类型：null = 用户上传证书（没有套餐类型），1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书，25 = Wotrus 域名型证书，26 = Wotrus 域名型多域名证书，27 = Wotrus 域名型通配符证书，28 = Wotrus 企业型证书，29 = Wotrus 企业型多域名证书，30 = Wotrus 企业型通配符证书，31 = Wotrus 增强型证书，32 = Wotrus 增强型多域名证书，33 = DNSPod 国密域名型证书，34 = DNSPod 国密域名型多域名证书，35 = DNSPod 国密域名型通配符证书，37 = DNSPod 国密企业型证书，38 = DNSPod 国密企业型多域名证书，39 = DNSPod 国密企业型通配符证书，40 = DNSPod 国密增强型证书，41 = DNSPod 国密增强型多域名证书，42 = TrustAsia 域名型通配符多域名证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageType: String?

        /// 颁发者。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productZhName: String?

        /// 域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 备注名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: String?

        /// 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函，13 = 免费证书待提交资料。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 状态信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusMsg: String?

        /// 验证类型：DNS_AUTO = 自动DNS验证，DNS = 手动DNS验证，FILE = 文件验证，EMAIL = 邮件验证。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let verifyType: String?

        /// 漏洞扫描状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulnerabilityStatus: String?

        /// 证书生效时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$certBeginTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var certBeginTime: Date?

        /// 证书失效时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$certEndTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var certEndTime: Date?

        /// 证书有效期：单位（月）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validityPeriod: String?

        /// 申请时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$insertTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var insertTime: Date?

        /// 订单 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderId: String?

        /// 证书扩展信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateExtra: CertificateExtra?

        /// 证书私钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificatePrivateKey: String?

        /// 证书公钥（即证书内容）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificatePublicKey: String?

        /// DV 认证信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvAuthDetail: DvAuthDetail?

        /// 漏洞扫描评估报告。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vulnerabilityReport: String?

        /// 证书 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateId: String?

        /// 证书类型名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let typeName: String?

        /// 状态描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusName: String?

        /// 证书包含的多个域名（不包含主域名，主域名使用Domain字段）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectAltName: [String]?

        /// 是否为付费证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVip: Bool?

        /// 是否为泛域名证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isWildcard: Bool?

        /// 是否为 DV 版证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isDv: Bool?

        /// 是否启用了漏洞扫描功能。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let isVulnerability: Bool?

        /// 提交的资料信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let submittedData: SubmittedData?

        /// 是否可续费。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewAble: Bool?

        /// 是否可部署。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployable: Bool?

        /// 关联标签列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tags]?

        /// 根证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rootCert: RootCertificates?

        /// 国密加密证书
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptCert: String?

        /// 国密加密私钥
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptPrivateKey: String?

        /// 签名证书 SHA1指纹
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certFingerprint: String?

        /// 加密证书 SHA1指纹 （国密证书特有）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptCertFingerprint: String?

        /// 证书算法
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let encryptAlgorithm: String?

        /// DV证书吊销验证值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dvRevokeAuthDetail: [DvAuths]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case ownerUin = "OwnerUin"
            case projectId = "ProjectId"
            case from = "From"
            case certificateType = "CertificateType"
            case packageType = "PackageType"
            case productZhName = "ProductZhName"
            case domain = "Domain"
            case alias = "Alias"
            case status = "Status"
            case statusMsg = "StatusMsg"
            case verifyType = "VerifyType"
            case vulnerabilityStatus = "VulnerabilityStatus"
            case certBeginTime = "CertBeginTime"
            case certEndTime = "CertEndTime"
            case validityPeriod = "ValidityPeriod"
            case insertTime = "InsertTime"
            case orderId = "OrderId"
            case certificateExtra = "CertificateExtra"
            case certificatePrivateKey = "CertificatePrivateKey"
            case certificatePublicKey = "CertificatePublicKey"
            case dvAuthDetail = "DvAuthDetail"
            case vulnerabilityReport = "VulnerabilityReport"
            case certificateId = "CertificateId"
            case typeName = "TypeName"
            case statusName = "StatusName"
            case subjectAltName = "SubjectAltName"
            case isVip = "IsVip"
            case isWildcard = "IsWildcard"
            case isDv = "IsDv"
            case isVulnerability = "IsVulnerability"
            case submittedData = "SubmittedData"
            case renewAble = "RenewAble"
            case deployable = "Deployable"
            case tags = "Tags"
            case rootCert = "RootCert"
            case encryptCert = "EncryptCert"
            case encryptPrivateKey = "EncryptPrivateKey"
            case certFingerprint = "CertFingerprint"
            case encryptCertFingerprint = "EncryptCertFingerprint"
            case encryptAlgorithm = "EncryptAlgorithm"
            case dvRevokeAuthDetail = "DvRevokeAuthDetail"
            case requestId = "RequestId"
        }
    }

    /// 获取证书详情
    ///
    /// 获取证书详情。
    @inlinable
    public func describeCertificateDetail(_ input: DescribeCertificateDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateDetailResponse> {
        self.client.execute(action: "DescribeCertificateDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书详情
    ///
    /// 获取证书详情。
    @inlinable
    public func describeCertificateDetail(_ input: DescribeCertificateDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateDetailResponse {
        try await self.client.execute(action: "DescribeCertificateDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书详情
    ///
    /// 获取证书详情。
    @inlinable
    public func describeCertificateDetail(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateDetailResponse> {
        self.describeCertificateDetail(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书详情
    ///
    /// 获取证书详情。
    @inlinable
    public func describeCertificateDetail(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateDetailResponse {
        try await self.describeCertificateDetail(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }
}
