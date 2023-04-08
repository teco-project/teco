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

extension Essbasic {
    /// CreateSubOrganization请求参数结构体
    public struct CreateSubOrganizationRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 机构证件号码类型可选值：
        /// 1. USCC - 统一社会信用代码
        /// 2. BIZREGISTNO - 营业执照注册号
        public let idCardType: String

        /// 机构证件号码
        public let idCardNumber: String

        /// 机构类型可选值：
        /// 1. ENTERPRISE - 企业
        /// 2. INDIVIDUALBIZ - 个体工商户
        /// 3. PUBLICINSTITUTION - 政府/事业单位
        /// 4. OTHERS - 其他组织
        public let organizationType: String

        /// 机构法人/经营者姓名
        public let legalName: String

        /// 机构法人/经营者证件类型可选值：
        /// 1. ID_CARD - 居民身份证
        /// 2. PASSPORT - 护照
        /// 3. MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证
        /// 4. MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证
        /// 5. HOUSEHOLD_REGISTER - 户口本
        /// 6. TEMP_ID_CARD - 临时居民身份证
        public let legalIdCardType: String

        /// 机构法人/经营者证件号码；
        /// OrganizationType 为 ENTERPRISE时，INDIVIDUALBIZ 时必填，其他情况选填
        public let legalIdCardNumber: String

        /// 机构名称全称
        public let name: String

        /// 机构在第三方的唯一标识，32位以内标识符
        public let openId: String?

        /// 是否使用OpenId作为数据主键，如果为true，请确保OpenId在当前应用号唯一
        public let useOpenId: Bool?

        /// 机构证件文件类型可选值：
        /// 1. USCCFILE - 统一社会信用代码证书
        /// 2. LICENSEFILE - 营业执照
        public let idCardFileType: String?

        /// 机构证件照片文件，base64编码，支持jpg、jpeg、png格式
        public let bizLicenseFile: String?

        /// 机构证件照片文件名
        public let bizLicenseFileName: String?

        /// 机构法人/经营者/联系人手机号码
        public let legalMobile: String?

        /// 组织联系人姓名
        public let contactName: String?

        /// 实名认证的客户端IP
        public let verifyClientIp: String?

        /// 实名认证的服务器IP
        public let verifyServerIp: String?

        /// 企业联系地址
        public let contactAddress: Address?

        /// 机构电子邮箱
        public let email: String?

        public init(caller: Caller, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, name: String, openId: String? = nil, useOpenId: Bool? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyClientIp: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, email: String? = nil) {
            self.caller = caller
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
            self.organizationType = organizationType
            self.legalName = legalName
            self.legalIdCardType = legalIdCardType
            self.legalIdCardNumber = legalIdCardNumber
            self.name = name
            self.openId = openId
            self.useOpenId = useOpenId
            self.idCardFileType = idCardFileType
            self.bizLicenseFile = bizLicenseFile
            self.bizLicenseFileName = bizLicenseFileName
            self.legalMobile = legalMobile
            self.contactName = contactName
            self.verifyClientIp = verifyClientIp
            self.verifyServerIp = verifyServerIp
            self.contactAddress = contactAddress
            self.email = email
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case organizationType = "OrganizationType"
            case legalName = "LegalName"
            case legalIdCardType = "LegalIdCardType"
            case legalIdCardNumber = "LegalIdCardNumber"
            case name = "Name"
            case openId = "OpenId"
            case useOpenId = "UseOpenId"
            case idCardFileType = "IdCardFileType"
            case bizLicenseFile = "BizLicenseFile"
            case bizLicenseFileName = "BizLicenseFileName"
            case legalMobile = "LegalMobile"
            case contactName = "ContactName"
            case verifyClientIp = "VerifyClientIp"
            case verifyServerIp = "VerifyServerIp"
            case contactAddress = "ContactAddress"
            case email = "Email"
        }
    }

    /// CreateSubOrganization返回参数结构体
    public struct CreateSubOrganizationResponse: TCResponseModel {
        /// 子机构ID
        public let subOrganizationId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subOrganizationId = "SubOrganizationId"
            case requestId = "RequestId"
        }
    }

    /// 注册子机构
    ///
    /// 此接口（CreateSubOrganization）用于在腾讯电子签内注册子机构。
    @inlinable
    public func createSubOrganization(_ input: CreateSubOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubOrganizationResponse> {
        self.client.execute(action: "CreateSubOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册子机构
    ///
    /// 此接口（CreateSubOrganization）用于在腾讯电子签内注册子机构。
    @inlinable
    public func createSubOrganization(_ input: CreateSubOrganizationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubOrganizationResponse {
        try await self.client.execute(action: "CreateSubOrganization", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册子机构
    ///
    /// 此接口（CreateSubOrganization）用于在腾讯电子签内注册子机构。
    @inlinable
    public func createSubOrganization(caller: Caller, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, name: String, openId: String? = nil, useOpenId: Bool? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyClientIp: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, email: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubOrganizationResponse> {
        self.createSubOrganization(.init(caller: caller, idCardType: idCardType, idCardNumber: idCardNumber, organizationType: organizationType, legalName: legalName, legalIdCardType: legalIdCardType, legalIdCardNumber: legalIdCardNumber, name: name, openId: openId, useOpenId: useOpenId, idCardFileType: idCardFileType, bizLicenseFile: bizLicenseFile, bizLicenseFileName: bizLicenseFileName, legalMobile: legalMobile, contactName: contactName, verifyClientIp: verifyClientIp, verifyServerIp: verifyServerIp, contactAddress: contactAddress, email: email), region: region, logger: logger, on: eventLoop)
    }

    /// 注册子机构
    ///
    /// 此接口（CreateSubOrganization）用于在腾讯电子签内注册子机构。
    @inlinable
    public func createSubOrganization(caller: Caller, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, name: String, openId: String? = nil, useOpenId: Bool? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyClientIp: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, email: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubOrganizationResponse {
        try await self.createSubOrganization(.init(caller: caller, idCardType: idCardType, idCardNumber: idCardNumber, organizationType: organizationType, legalName: legalName, legalIdCardType: legalIdCardType, legalIdCardNumber: legalIdCardNumber, name: name, openId: openId, useOpenId: useOpenId, idCardFileType: idCardFileType, bizLicenseFile: bizLicenseFile, bizLicenseFileName: bizLicenseFileName, legalMobile: legalMobile, contactName: contactName, verifyClientIp: verifyClientIp, verifyServerIp: verifyServerIp, contactAddress: contactAddress, email: email), region: region, logger: logger, on: eventLoop)
    }
}
