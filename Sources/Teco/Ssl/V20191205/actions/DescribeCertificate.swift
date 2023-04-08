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

import TecoCore

extension Ssl {
    /// DescribeCertificate请求参数结构体
    public struct DescribeCertificateRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        public init(certificateId: String) {
            self.certificateId = certificateId
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
        }
    }

    /// DescribeCertificate返回参数结构体
    public struct DescribeCertificateResponse: TCResponseModel {
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

        /// 证书套餐类型：1 = GeoTrust DV SSL CA - G3， 2 = TrustAsia TLS RSA CA， 3 = SecureSite 增强型企业版（EV Pro）， 4 = SecureSite 增强型（EV）， 5 = SecureSite 企业型专业版（OV Pro）， 6 = SecureSite 企业型（OV）， 7 = SecureSite 企业型（OV）通配符， 8 = Geotrust 增强型（EV）， 9 = Geotrust 企业型（OV）， 10 = Geotrust 企业型（OV）通配符， 11 = TrustAsia 域名型多域名 SSL 证书， 12 = TrustAsia 域名型（DV）通配符， 13 = TrustAsia 企业型通配符（OV）SSL 证书（D3）， 14 = TrustAsia 企业型（OV）SSL 证书（D3）， 15 = TrustAsia 企业型多域名 （OV）SSL 证书（D3）， 16 = TrustAsia 增强型 （EV）SSL 证书（D3）， 17 = TrustAsia 增强型多域名（EV）SSL 证书（D3）， 18 = GlobalSign 企业型（OV）SSL 证书， 19 = GlobalSign 企业型通配符 （OV）SSL 证书， 20 = GlobalSign 增强型 （EV）SSL 证书， 21 = TrustAsia 企业型通配符多域名（OV）SSL 证书（D3）， 22 = GlobalSign 企业型多域名（OV）SSL 证书， 23 = GlobalSign 企业型通配符多域名（OV）SSL 证书， 24 = GlobalSign 增强型多域名（EV）SSL 证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let packageType: String?

        /// 证书颁发者名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let productZhName: String?

        /// 域名。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domain: String?

        /// 备注名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: String?

        /// 证书状态：0 = 审核中，1 = 已通过，2 = 审核失败，3 = 已过期，4 = 已添加DNS记录，5 = 企业证书，待提交，6 = 订单取消中，7 = 已取消，8 = 已提交资料， 待上传确认函，9 = 证书吊销中，10 = 已吊销，11 = 重颁发中，12 = 待上传吊销确认函。
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
        public let certBeginTime: String?

        /// 证书失效时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certEndTime: String?

        /// 证书有效期：单位(月)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let validityPeriod: String?

        /// 申请时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let insertTime: String?

        /// 订单 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let orderId: String?

        /// 证书扩展信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let certificateExtra: CertificateExtra?

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
        public let packageTypeName: String?

        /// 状态描述。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let statusName: String?

        /// 证书包含的多个域名（包含主域名）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subjectAltName: [String]?

        /// 是否为 VIP 客户。
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

        /// 是否可重颁发证书。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let renewAble: Bool?

        /// 提交的资料信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let submittedData: SubmittedData?

        /// 是否可部署。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deployable: Bool?

        /// 标签列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tags]?

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
            case dvAuthDetail = "DvAuthDetail"
            case vulnerabilityReport = "VulnerabilityReport"
            case certificateId = "CertificateId"
            case packageTypeName = "PackageTypeName"
            case statusName = "StatusName"
            case subjectAltName = "SubjectAltName"
            case isVip = "IsVip"
            case isWildcard = "IsWildcard"
            case isDv = "IsDv"
            case isVulnerability = "IsVulnerability"
            case renewAble = "RenewAble"
            case submittedData = "SubmittedData"
            case deployable = "Deployable"
            case tags = "Tags"
            case requestId = "RequestId"
        }
    }

    /// 获取证书信息
    ///
    /// 本接口（DescribeCertificate）用于获取证书信息。
    @inlinable
    public func describeCertificate(_ input: DescribeCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateResponse> {
        self.client.execute(action: "DescribeCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取证书信息
    ///
    /// 本接口（DescribeCertificate）用于获取证书信息。
    @inlinable
    public func describeCertificate(_ input: DescribeCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateResponse {
        try await self.client.execute(action: "DescribeCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取证书信息
    ///
    /// 本接口（DescribeCertificate）用于获取证书信息。
    @inlinable
    public func describeCertificate(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCertificateResponse> {
        self.describeCertificate(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取证书信息
    ///
    /// 本接口（DescribeCertificate）用于获取证书信息。
    @inlinable
    public func describeCertificate(certificateId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCertificateResponse {
        try await self.describeCertificate(.init(certificateId: certificateId), region: region, logger: logger, on: eventLoop)
    }
}
