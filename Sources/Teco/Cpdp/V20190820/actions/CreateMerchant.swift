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

extension Cpdp {
    /// CreateMerchant请求参数结构体
    public struct CreateMerchantRequest: TCRequestModel {
        /// 开票平台ID
        public let invoicePlatformId: Int64

        /// 企业名称
        public let taxpayerName: String

        /// 销方纳税人识别号
        public let taxpayerNum: String

        /// 注册企业法定代表人名称
        public let legalPersonName: String

        /// 联系人
        public let contactsName: String

        /// 联系人手机号
        public let phone: String

        /// 不包含省市名称的地址
        public let address: String

        /// 地区编码
        public let regionCode: Int64

        /// 市（地区）名称
        public let cityName: String

        /// 开票人
        public let drawer: String

        /// 税务登记证图片（Base64）字符串，需小于 3M
        public let taxRegistrationCertificate: String

        /// 联系人邮箱地址
        public let email: String?

        /// 企业电话
        public let businessMobile: String?

        /// 银行名称
        public let bankName: String?

        /// 银行账号
        public let bankAccount: String?

        /// 复核人
        public let reviewer: String?

        /// 收款人
        public let payee: String?

        /// 注册邀请码
        public let registerCode: String?

        /// 不填默认为1，有效状态
        /// 0：表示无效；
        /// 1:表示有效；
        /// 2:表示禁止开蓝票；
        /// 3:表示禁止冲红。
        public let state: String?

        /// 接收推送的消息地址
        public let callbackUrl: String?

        /// 接入环境。沙箱环境填 sandbox。
        public let profile: String?

        public init(invoicePlatformId: Int64, taxpayerName: String, taxpayerNum: String, legalPersonName: String, contactsName: String, phone: String, address: String, regionCode: Int64, cityName: String, drawer: String, taxRegistrationCertificate: String, email: String? = nil, businessMobile: String? = nil, bankName: String? = nil, bankAccount: String? = nil, reviewer: String? = nil, payee: String? = nil, registerCode: String? = nil, state: String? = nil, callbackUrl: String? = nil, profile: String? = nil) {
            self.invoicePlatformId = invoicePlatformId
            self.taxpayerName = taxpayerName
            self.taxpayerNum = taxpayerNum
            self.legalPersonName = legalPersonName
            self.contactsName = contactsName
            self.phone = phone
            self.address = address
            self.regionCode = regionCode
            self.cityName = cityName
            self.drawer = drawer
            self.taxRegistrationCertificate = taxRegistrationCertificate
            self.email = email
            self.businessMobile = businessMobile
            self.bankName = bankName
            self.bankAccount = bankAccount
            self.reviewer = reviewer
            self.payee = payee
            self.registerCode = registerCode
            self.state = state
            self.callbackUrl = callbackUrl
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case invoicePlatformId = "InvoicePlatformId"
            case taxpayerName = "TaxpayerName"
            case taxpayerNum = "TaxpayerNum"
            case legalPersonName = "LegalPersonName"
            case contactsName = "ContactsName"
            case phone = "Phone"
            case address = "Address"
            case regionCode = "RegionCode"
            case cityName = "CityName"
            case drawer = "Drawer"
            case taxRegistrationCertificate = "TaxRegistrationCertificate"
            case email = "Email"
            case businessMobile = "BusinessMobile"
            case bankName = "BankName"
            case bankAccount = "BankAccount"
            case reviewer = "Reviewer"
            case payee = "Payee"
            case registerCode = "RegisterCode"
            case state = "State"
            case callbackUrl = "CallbackUrl"
            case profile = "Profile"
        }
    }

    /// CreateMerchant返回参数结构体
    public struct CreateMerchantResponse: TCResponseModel {
        /// 商户注册结果
        public let result: CreateMerchantResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 智慧零售-商户注册
    @inlinable
    public func createMerchant(_ input: CreateMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMerchantResponse> {
        self.client.execute(action: "CreateMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智慧零售-商户注册
    @inlinable
    public func createMerchant(_ input: CreateMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMerchantResponse {
        try await self.client.execute(action: "CreateMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智慧零售-商户注册
    @inlinable
    public func createMerchant(invoicePlatformId: Int64, taxpayerName: String, taxpayerNum: String, legalPersonName: String, contactsName: String, phone: String, address: String, regionCode: Int64, cityName: String, drawer: String, taxRegistrationCertificate: String, email: String? = nil, businessMobile: String? = nil, bankName: String? = nil, bankAccount: String? = nil, reviewer: String? = nil, payee: String? = nil, registerCode: String? = nil, state: String? = nil, callbackUrl: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMerchantResponse> {
        self.createMerchant(CreateMerchantRequest(invoicePlatformId: invoicePlatformId, taxpayerName: taxpayerName, taxpayerNum: taxpayerNum, legalPersonName: legalPersonName, contactsName: contactsName, phone: phone, address: address, regionCode: regionCode, cityName: cityName, drawer: drawer, taxRegistrationCertificate: taxRegistrationCertificate, email: email, businessMobile: businessMobile, bankName: bankName, bankAccount: bankAccount, reviewer: reviewer, payee: payee, registerCode: registerCode, state: state, callbackUrl: callbackUrl, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 智慧零售-商户注册
    @inlinable
    public func createMerchant(invoicePlatformId: Int64, taxpayerName: String, taxpayerNum: String, legalPersonName: String, contactsName: String, phone: String, address: String, regionCode: Int64, cityName: String, drawer: String, taxRegistrationCertificate: String, email: String? = nil, businessMobile: String? = nil, bankName: String? = nil, bankAccount: String? = nil, reviewer: String? = nil, payee: String? = nil, registerCode: String? = nil, state: String? = nil, callbackUrl: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMerchantResponse {
        try await self.createMerchant(CreateMerchantRequest(invoicePlatformId: invoicePlatformId, taxpayerName: taxpayerName, taxpayerNum: taxpayerNum, legalPersonName: legalPersonName, contactsName: contactsName, phone: phone, address: address, regionCode: regionCode, cityName: cityName, drawer: drawer, taxRegistrationCertificate: taxRegistrationCertificate, email: email, businessMobile: businessMobile, bankName: bankName, bankAccount: bankAccount, reviewer: reviewer, payee: payee, registerCode: registerCode, state: state, callbackUrl: callbackUrl, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
