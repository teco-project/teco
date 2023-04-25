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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Essbasic {
    /// CreateSubOrganizationAndSeal请求参数结构体
    public struct CreateSubOrganizationAndSealRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 机构名称全称
        public let name: String

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

        /// 实名认证的客户端IP/请求生成企业印章的客户端Ip
        public let verifyClientIp: String

        /// 机构电子邮箱
        public let email: String?

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

        /// 实名认证的服务器IP
        public let verifyServerIp: String?

        /// 企业联系地址
        public let contactAddress: Address?

        /// 电子印章名称
        public let sealName: String?

        /// 印章类型：默认: CONTRACT
        /// 1. OFFICIAL-公章
        /// 2. SPECIAL_FINANCIAL-财务专用章
        /// 3. CONTRACT-合同专用章
        /// 4. LEGAL_REPRESENTATIVE-法定代表人章
        /// 5. SPECIAL_NATIONWIDE_INVOICE-发票专用章
        /// 6. OTHER-其他
        public let sealType: String?

        /// 企业印章横向文字，最多可填8个汉字（可为空，默认为"电子签名专用章"）
        public let sealHorizontalText: String?

        /// 机构在第三方的唯一标识，32位以内标识符
        public let openId: String?

        /// 是否使用OpenId作为数据主键，如果为true，请确保OpenId在当前应用号唯一
        public let useOpenId: Bool?

        public init(caller: Caller, name: String, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, verifyClientIp: String, email: String? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, sealName: String? = nil, sealType: String? = nil, sealHorizontalText: String? = nil, openId: String? = nil, useOpenId: Bool? = nil) {
            self.caller = caller
            self.name = name
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
            self.organizationType = organizationType
            self.legalName = legalName
            self.legalIdCardType = legalIdCardType
            self.legalIdCardNumber = legalIdCardNumber
            self.verifyClientIp = verifyClientIp
            self.email = email
            self.idCardFileType = idCardFileType
            self.bizLicenseFile = bizLicenseFile
            self.bizLicenseFileName = bizLicenseFileName
            self.legalMobile = legalMobile
            self.contactName = contactName
            self.verifyServerIp = verifyServerIp
            self.contactAddress = contactAddress
            self.sealName = sealName
            self.sealType = sealType
            self.sealHorizontalText = sealHorizontalText
            self.openId = openId
            self.useOpenId = useOpenId
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case name = "Name"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case organizationType = "OrganizationType"
            case legalName = "LegalName"
            case legalIdCardType = "LegalIdCardType"
            case legalIdCardNumber = "LegalIdCardNumber"
            case verifyClientIp = "VerifyClientIp"
            case email = "Email"
            case idCardFileType = "IdCardFileType"
            case bizLicenseFile = "BizLicenseFile"
            case bizLicenseFileName = "BizLicenseFileName"
            case legalMobile = "LegalMobile"
            case contactName = "ContactName"
            case verifyServerIp = "VerifyServerIp"
            case contactAddress = "ContactAddress"
            case sealName = "SealName"
            case sealType = "SealType"
            case sealHorizontalText = "SealHorizontalText"
            case openId = "OpenId"
            case useOpenId = "UseOpenId"
        }
    }

    /// CreateSubOrganizationAndSeal返回参数结构体
    public struct CreateSubOrganizationAndSealResponse: TCResponseModel {
        /// 子机构在电子文件签署平台唯一标识
        public let subOrganizationId: String

        /// 电子印章ID
        public let sealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subOrganizationId = "SubOrganizationId"
            case sealId = "SealId"
            case requestId = "RequestId"
        }
    }

    /// 注册实名子机构并生成印章
    ///
    /// 此接口（CreateSubOrganizationAndSeal）用于注册子机构，同时系统将为该子企业自动生成一个默认电子印章图片。
    ///
    /// 注意：
    /// 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的印章图片进行签署。
    /// 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func createSubOrganizationAndSeal(_ input: CreateSubOrganizationAndSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubOrganizationAndSealResponse> {
        self.client.execute(action: "CreateSubOrganizationAndSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册实名子机构并生成印章
    ///
    /// 此接口（CreateSubOrganizationAndSeal）用于注册子机构，同时系统将为该子企业自动生成一个默认电子印章图片。
    ///
    /// 注意：
    /// 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的印章图片进行签署。
    /// 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func createSubOrganizationAndSeal(_ input: CreateSubOrganizationAndSealRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubOrganizationAndSealResponse {
        try await self.client.execute(action: "CreateSubOrganizationAndSeal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册实名子机构并生成印章
    ///
    /// 此接口（CreateSubOrganizationAndSeal）用于注册子机构，同时系统将为该子企业自动生成一个默认电子印章图片。
    ///
    /// 注意：
    /// 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的印章图片进行签署。
    /// 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func createSubOrganizationAndSeal(caller: Caller, name: String, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, verifyClientIp: String, email: String? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, sealName: String? = nil, sealType: String? = nil, sealHorizontalText: String? = nil, openId: String? = nil, useOpenId: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSubOrganizationAndSealResponse> {
        self.createSubOrganizationAndSeal(.init(caller: caller, name: name, idCardType: idCardType, idCardNumber: idCardNumber, organizationType: organizationType, legalName: legalName, legalIdCardType: legalIdCardType, legalIdCardNumber: legalIdCardNumber, verifyClientIp: verifyClientIp, email: email, idCardFileType: idCardFileType, bizLicenseFile: bizLicenseFile, bizLicenseFileName: bizLicenseFileName, legalMobile: legalMobile, contactName: contactName, verifyServerIp: verifyServerIp, contactAddress: contactAddress, sealName: sealName, sealType: sealType, sealHorizontalText: sealHorizontalText, openId: openId, useOpenId: useOpenId), region: region, logger: logger, on: eventLoop)
    }

    /// 注册实名子机构并生成印章
    ///
    /// 此接口（CreateSubOrganizationAndSeal）用于注册子机构，同时系统将为该子企业自动生成一个默认电子印章图片。
    ///
    /// 注意：
    /// 1. 在后续的签署流程中，若未指定签署使用的印章ID，则默认调用自动生成的印章图片进行签署。
    /// 2. 此接口为白名单接口，如您需要使用此能力，请提前与客户经理沟通或邮件至e-contract@tencent.com与我们联系。
    @inlinable
    public func createSubOrganizationAndSeal(caller: Caller, name: String, idCardType: String, idCardNumber: String, organizationType: String, legalName: String, legalIdCardType: String, legalIdCardNumber: String, verifyClientIp: String, email: String? = nil, idCardFileType: String? = nil, bizLicenseFile: String? = nil, bizLicenseFileName: String? = nil, legalMobile: String? = nil, contactName: String? = nil, verifyServerIp: String? = nil, contactAddress: Address? = nil, sealName: String? = nil, sealType: String? = nil, sealHorizontalText: String? = nil, openId: String? = nil, useOpenId: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSubOrganizationAndSealResponse {
        try await self.createSubOrganizationAndSeal(.init(caller: caller, name: name, idCardType: idCardType, idCardNumber: idCardNumber, organizationType: organizationType, legalName: legalName, legalIdCardType: legalIdCardType, legalIdCardNumber: legalIdCardNumber, verifyClientIp: verifyClientIp, email: email, idCardFileType: idCardFileType, bizLicenseFile: bizLicenseFile, bizLicenseFileName: bizLicenseFileName, legalMobile: legalMobile, contactName: contactName, verifyServerIp: verifyServerIp, contactAddress: contactAddress, sealName: sealName, sealType: sealType, sealHorizontalText: sealHorizontalText, openId: openId, useOpenId: useOpenId), region: region, logger: logger, on: eventLoop)
    }
}
