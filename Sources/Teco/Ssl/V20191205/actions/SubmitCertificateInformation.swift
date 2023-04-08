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

import Logging
import NIOCore
import TecoCore

extension Ssl {
    /// SubmitCertificateInformation请求参数结构体
    public struct SubmitCertificateInformationRequest: TCRequestModel {
        /// 证书 ID。
        public let certificateId: String

        /// CSR 生成方式：online = 在线生成, parse = 手动上传。
        public let csrType: String?

        /// 上传的 CSR 内容。
        public let csrContent: String?

        /// 绑定证书的域名。
        public let certificateDomain: String?

        /// 上传的域名数组（多域名证书可以上传）。
        public let domainList: [String]?

        /// 私钥密码（非必填）。
        public let keyPassword: String?

        /// 公司名称。
        public let organizationName: String?

        /// 部门名称。
        public let organizationDivision: String?

        /// 公司详细地址。
        public let organizationAddress: String?

        /// 国家名称，如中国：CN 。
        public let organizationCountry: String?

        /// 公司所在城市。
        public let organizationCity: String?

        /// 公司所在省份。
        public let organizationRegion: String?

        /// 公司邮编。
        public let postalCode: String?

        /// 公司座机区号。
        public let phoneAreaCode: String?

        /// 公司座机号码。
        public let phoneNumber: String?

        /// 证书验证方式。验证类型：DNS_AUTO = 自动DNS验证（仅支持在腾讯云解析且解析状态正常的域名使用该验证类型），DNS = 手动DNS验证，FILE = 文件验证。
        public let verifyType: String?

        /// 管理人名。
        public let adminFirstName: String?

        /// 管理人姓。
        public let adminLastName: String?

        /// 管理人手机号码。
        public let adminPhoneNum: String?

        /// 管理人邮箱地址。
        public let adminEmail: String?

        /// 管理人职位。
        public let adminPosition: String?

        /// 联系人名。
        public let contactFirstName: String?

        /// 联系人姓。
        public let contactLastName: String?

        /// 联系人邮箱地址。
        public let contactEmail: String?

        /// 联系人手机号码。
        public let contactNumber: String?

        /// 联系人职位。
        public let contactPosition: String?

        public init(certificateId: String, csrType: String? = nil, csrContent: String? = nil, certificateDomain: String? = nil, domainList: [String]? = nil, keyPassword: String? = nil, organizationName: String? = nil, organizationDivision: String? = nil, organizationAddress: String? = nil, organizationCountry: String? = nil, organizationCity: String? = nil, organizationRegion: String? = nil, postalCode: String? = nil, phoneAreaCode: String? = nil, phoneNumber: String? = nil, verifyType: String? = nil, adminFirstName: String? = nil, adminLastName: String? = nil, adminPhoneNum: String? = nil, adminEmail: String? = nil, adminPosition: String? = nil, contactFirstName: String? = nil, contactLastName: String? = nil, contactEmail: String? = nil, contactNumber: String? = nil, contactPosition: String? = nil) {
            self.certificateId = certificateId
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
            self.verifyType = verifyType
            self.adminFirstName = adminFirstName
            self.adminLastName = adminLastName
            self.adminPhoneNum = adminPhoneNum
            self.adminEmail = adminEmail
            self.adminPosition = adminPosition
            self.contactFirstName = contactFirstName
            self.contactLastName = contactLastName
            self.contactEmail = contactEmail
            self.contactNumber = contactNumber
            self.contactPosition = contactPosition
        }

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
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
            case verifyType = "VerifyType"
            case adminFirstName = "AdminFirstName"
            case adminLastName = "AdminLastName"
            case adminPhoneNum = "AdminPhoneNum"
            case adminEmail = "AdminEmail"
            case adminPosition = "AdminPosition"
            case contactFirstName = "ContactFirstName"
            case contactLastName = "ContactLastName"
            case contactEmail = "ContactEmail"
            case contactNumber = "ContactNumber"
            case contactPosition = "ContactPosition"
        }
    }

    /// SubmitCertificateInformation返回参数结构体
    public struct SubmitCertificateInformationResponse: TCResponseModel {
        /// 证书 ID。
        public let certificateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case certificateId = "CertificateId"
            case requestId = "RequestId"
        }
    }

    /// 提交证书资料
    ///
    /// 提交证书资料。输入参数信息可以分多次提交，但提交的证书资料应最低限度保持完整。
    @inlinable
    public func submitCertificateInformation(_ input: SubmitCertificateInformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCertificateInformationResponse> {
        self.client.execute(action: "SubmitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 提交证书资料
    ///
    /// 提交证书资料。输入参数信息可以分多次提交，但提交的证书资料应最低限度保持完整。
    @inlinable
    public func submitCertificateInformation(_ input: SubmitCertificateInformationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCertificateInformationResponse {
        try await self.client.execute(action: "SubmitCertificateInformation", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 提交证书资料
    ///
    /// 提交证书资料。输入参数信息可以分多次提交，但提交的证书资料应最低限度保持完整。
    @inlinable
    public func submitCertificateInformation(certificateId: String, csrType: String? = nil, csrContent: String? = nil, certificateDomain: String? = nil, domainList: [String]? = nil, keyPassword: String? = nil, organizationName: String? = nil, organizationDivision: String? = nil, organizationAddress: String? = nil, organizationCountry: String? = nil, organizationCity: String? = nil, organizationRegion: String? = nil, postalCode: String? = nil, phoneAreaCode: String? = nil, phoneNumber: String? = nil, verifyType: String? = nil, adminFirstName: String? = nil, adminLastName: String? = nil, adminPhoneNum: String? = nil, adminEmail: String? = nil, adminPosition: String? = nil, contactFirstName: String? = nil, contactLastName: String? = nil, contactEmail: String? = nil, contactNumber: String? = nil, contactPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitCertificateInformationResponse> {
        self.submitCertificateInformation(.init(certificateId: certificateId, csrType: csrType, csrContent: csrContent, certificateDomain: certificateDomain, domainList: domainList, keyPassword: keyPassword, organizationName: organizationName, organizationDivision: organizationDivision, organizationAddress: organizationAddress, organizationCountry: organizationCountry, organizationCity: organizationCity, organizationRegion: organizationRegion, postalCode: postalCode, phoneAreaCode: phoneAreaCode, phoneNumber: phoneNumber, verifyType: verifyType, adminFirstName: adminFirstName, adminLastName: adminLastName, adminPhoneNum: adminPhoneNum, adminEmail: adminEmail, adminPosition: adminPosition, contactFirstName: contactFirstName, contactLastName: contactLastName, contactEmail: contactEmail, contactNumber: contactNumber, contactPosition: contactPosition), region: region, logger: logger, on: eventLoop)
    }

    /// 提交证书资料
    ///
    /// 提交证书资料。输入参数信息可以分多次提交，但提交的证书资料应最低限度保持完整。
    @inlinable
    public func submitCertificateInformation(certificateId: String, csrType: String? = nil, csrContent: String? = nil, certificateDomain: String? = nil, domainList: [String]? = nil, keyPassword: String? = nil, organizationName: String? = nil, organizationDivision: String? = nil, organizationAddress: String? = nil, organizationCountry: String? = nil, organizationCity: String? = nil, organizationRegion: String? = nil, postalCode: String? = nil, phoneAreaCode: String? = nil, phoneNumber: String? = nil, verifyType: String? = nil, adminFirstName: String? = nil, adminLastName: String? = nil, adminPhoneNum: String? = nil, adminEmail: String? = nil, adminPosition: String? = nil, contactFirstName: String? = nil, contactLastName: String? = nil, contactEmail: String? = nil, contactNumber: String? = nil, contactPosition: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitCertificateInformationResponse {
        try await self.submitCertificateInformation(.init(certificateId: certificateId, csrType: csrType, csrContent: csrContent, certificateDomain: certificateDomain, domainList: domainList, keyPassword: keyPassword, organizationName: organizationName, organizationDivision: organizationDivision, organizationAddress: organizationAddress, organizationCountry: organizationCountry, organizationCity: organizationCity, organizationRegion: organizationRegion, postalCode: postalCode, phoneAreaCode: phoneAreaCode, phoneNumber: phoneNumber, verifyType: verifyType, adminFirstName: adminFirstName, adminLastName: adminLastName, adminPhoneNum: adminPhoneNum, adminEmail: adminEmail, adminPosition: adminPosition, contactFirstName: contactFirstName, contactLastName: contactLastName, contactEmail: contactEmail, contactNumber: contactNumber, contactPosition: contactPosition), region: region, logger: logger, on: eventLoop)
    }
}
