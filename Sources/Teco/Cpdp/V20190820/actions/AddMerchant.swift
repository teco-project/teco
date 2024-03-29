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

extension Cpdp {
    /// AddMerchant请求参数结构体
    public struct AddMerchantRequest: TCRequest {
        /// 收单系统分配的开放ID
        public let openId: String

        /// 收单系统分配的密钥
        public let openKey: String

        /// 机构商户主键（系统有唯一性校验），建议使用商户表的主键ID，防止重复添加商户
        public let outMerchantId: String

        /// 商户名称，小微商户命名要符合“”商户_名字” （例如：商户_张三）
        public let merchantName: String

        /// 营业执照类型（1三证合一，2非三证合一）
        public let businessLicenseType: String

        /// 营业执照编号（系统有唯一性校验），（小微商户不效验，随意传要有值，公司/个体户必传）
        public let businessLicenseNo: String

        /// 营业执照图片【私密区】（系统返回的图片路径），（小微商户不效验，随意传要有值，公司/个体户必传）
        public let businessLicensePicture: String

        /// 营业执照生效时间（yyyy-mm-dd），（小微商户不效验，随意传要有值，公司/个体户必传）
        public let businessLicenseStartDate: String

        /// 营业执照过期时间（yyyy-mm-dd），（小微商户不效验，随意传要有值，公司/个体户必传）
        public let businessLicenseEndDate: String

        /// 行业分类编号列表（第一个分类编号为主分类，后面的为二级分类）
        public let classificationIds: [String]

        /// 招牌名称
        public let brandName: String

        /// 联系电话
        public let telephone: String

        /// 城市编号
        public let cityId: String

        /// 详细地址，不含省市区县名称，长度需要大于5。
        public let address: String

        /// 营业时间，多个以小写逗号分开(9:00-12:00,13:00-18:00)
        public let openHours: String

        /// 结算账户类型（2对私，1对公）
        public let accountType: String

        /// 清算联行号，开户行行号
        public let bankNo: String

        /// 开户行名称
        public let bankName: String

        /// 银行账号
        public let accountNo: String

        /// 银行户名
        public let accountName: String

        /// 法人证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）
        public let bossIdType: String

        /// 法人证件号码
        public let bossIdNo: String

        /// 法人姓名
        public let bossName: String

        /// 法人性别（1男，2女）
        public let bossSex: String

        /// 法人证件国别/地区（中国CHN，香港HKG，澳门MAC，台湾CTN）
        public let bossIdCountry: String

        /// 法人身份证正面【私密区】（系统返回的图片路径）
        public let bossPositive: String

        /// 法人身份证背面【私密区】（系统返回的图片路径）
        public let bossBack: String

        /// 法人证件生效时间（yyyy-mm-dd）
        public let bossStartDate: String

        /// 法人证件过期时间（yyyy-mm-dd）
        public let bossEndDate: String

        /// 许可证图片【私密区】，（小微商户不效验，随意传要有值，公司/个体户必传）
        public let licencePicture: String

        /// 商户类型：1-个体，2-小微，3-企业。不传默认为2-小微商户。
        public let type: String?

        /// 组织机构代码证号
        public let organizationNo: String?

        /// 组织机构代码证生效时间（yyyy-mm-dd）
        public let organizationStartDate: String?

        /// 组织机构代码证图片【私密区】
        public let organizationPicture: String?

        /// 组织机构代码证过期时间（yyyy-mm-dd）
        public let organizationEndDate: String?

        /// 商户简介
        public let intro: String?

        /// 商户logo【公共区】
        public let logo: String?

        /// 商户标记，自定义参数
        public let tag: String?

        /// 财务联系人电话
        public let financialTelephone: String?

        /// 财务联系人
        public let financialContact: String?

        /// 税务登记证号
        public let taxRegistrationNo: String?

        /// 税务登记证图片【私密区】
        public let taxRegistrationPicture: String?

        /// 税务登记证生效时间（yyyy-mm-dd）
        public let taxRegistrationStartDate: String?

        /// 税务登记证过期时间（yyyy-mm-dd）
        public let taxRegistrationEndDate: String?

        /// 结算账户人身份（1法人，2法人亲属），结算帐户为对私时必填
        public let accountBoss: String?

        /// 客户经理姓名，必须为系统后台的管理员真实姓名
        public let accountManagerName: String?

        /// 法人电话
        public let bossTelephone: String?

        /// 法人职业
        public let bossJob: String?

        /// 法人邮箱
        public let bossEmail: String?

        /// 法人住址
        public let bossAddress: String?

        /// 法人亲属证件类型（1居民身份证,2临时居民身份证,3居民户口簿,4护照,5港澳居民来往内地通行证,6回乡证,7军人证,8武警身份证,9其他法定文件）结算账户人身份为法人亲属时必填
        public let accountIdType: String?

        /// 法人亲属证件号码
        public let accountIdNo: String?

        /// 授权文件【私密区】
        public let licencePictureTwo: String?

        /// 其他资料1
        public let otherPictureOne: String?

        /// 其他资料2
        public let otherPictureTwo: String?

        /// 其他资料3
        public let otherPictureThree: String?

        /// 其他资料4
        public let otherPictureFour: String?

        /// 沙箱环境填sandbox，正式环境不填
        public let profile: String?

        public init(openId: String, openKey: String, outMerchantId: String, merchantName: String, businessLicenseType: String, businessLicenseNo: String, businessLicensePicture: String, businessLicenseStartDate: String, businessLicenseEndDate: String, classificationIds: [String], brandName: String, telephone: String, cityId: String, address: String, openHours: String, accountType: String, bankNo: String, bankName: String, accountNo: String, accountName: String, bossIdType: String, bossIdNo: String, bossName: String, bossSex: String, bossIdCountry: String, bossPositive: String, bossBack: String, bossStartDate: String, bossEndDate: String, licencePicture: String, type: String? = nil, organizationNo: String? = nil, organizationStartDate: String? = nil, organizationPicture: String? = nil, organizationEndDate: String? = nil, intro: String? = nil, logo: String? = nil, tag: String? = nil, financialTelephone: String? = nil, financialContact: String? = nil, taxRegistrationNo: String? = nil, taxRegistrationPicture: String? = nil, taxRegistrationStartDate: String? = nil, taxRegistrationEndDate: String? = nil, accountBoss: String? = nil, accountManagerName: String? = nil, bossTelephone: String? = nil, bossJob: String? = nil, bossEmail: String? = nil, bossAddress: String? = nil, accountIdType: String? = nil, accountIdNo: String? = nil, licencePictureTwo: String? = nil, otherPictureOne: String? = nil, otherPictureTwo: String? = nil, otherPictureThree: String? = nil, otherPictureFour: String? = nil, profile: String? = nil) {
            self.openId = openId
            self.openKey = openKey
            self.outMerchantId = outMerchantId
            self.merchantName = merchantName
            self.businessLicenseType = businessLicenseType
            self.businessLicenseNo = businessLicenseNo
            self.businessLicensePicture = businessLicensePicture
            self.businessLicenseStartDate = businessLicenseStartDate
            self.businessLicenseEndDate = businessLicenseEndDate
            self.classificationIds = classificationIds
            self.brandName = brandName
            self.telephone = telephone
            self.cityId = cityId
            self.address = address
            self.openHours = openHours
            self.accountType = accountType
            self.bankNo = bankNo
            self.bankName = bankName
            self.accountNo = accountNo
            self.accountName = accountName
            self.bossIdType = bossIdType
            self.bossIdNo = bossIdNo
            self.bossName = bossName
            self.bossSex = bossSex
            self.bossIdCountry = bossIdCountry
            self.bossPositive = bossPositive
            self.bossBack = bossBack
            self.bossStartDate = bossStartDate
            self.bossEndDate = bossEndDate
            self.licencePicture = licencePicture
            self.type = type
            self.organizationNo = organizationNo
            self.organizationStartDate = organizationStartDate
            self.organizationPicture = organizationPicture
            self.organizationEndDate = organizationEndDate
            self.intro = intro
            self.logo = logo
            self.tag = tag
            self.financialTelephone = financialTelephone
            self.financialContact = financialContact
            self.taxRegistrationNo = taxRegistrationNo
            self.taxRegistrationPicture = taxRegistrationPicture
            self.taxRegistrationStartDate = taxRegistrationStartDate
            self.taxRegistrationEndDate = taxRegistrationEndDate
            self.accountBoss = accountBoss
            self.accountManagerName = accountManagerName
            self.bossTelephone = bossTelephone
            self.bossJob = bossJob
            self.bossEmail = bossEmail
            self.bossAddress = bossAddress
            self.accountIdType = accountIdType
            self.accountIdNo = accountIdNo
            self.licencePictureTwo = licencePictureTwo
            self.otherPictureOne = otherPictureOne
            self.otherPictureTwo = otherPictureTwo
            self.otherPictureThree = otherPictureThree
            self.otherPictureFour = otherPictureFour
            self.profile = profile
        }

        enum CodingKeys: String, CodingKey {
            case openId = "OpenId"
            case openKey = "OpenKey"
            case outMerchantId = "OutMerchantId"
            case merchantName = "MerchantName"
            case businessLicenseType = "BusinessLicenseType"
            case businessLicenseNo = "BusinessLicenseNo"
            case businessLicensePicture = "BusinessLicensePicture"
            case businessLicenseStartDate = "BusinessLicenseStartDate"
            case businessLicenseEndDate = "BusinessLicenseEndDate"
            case classificationIds = "ClassificationIds"
            case brandName = "BrandName"
            case telephone = "Telephone"
            case cityId = "CityId"
            case address = "Address"
            case openHours = "OpenHours"
            case accountType = "AccountType"
            case bankNo = "BankNo"
            case bankName = "BankName"
            case accountNo = "AccountNo"
            case accountName = "AccountName"
            case bossIdType = "BossIdType"
            case bossIdNo = "BossIdNo"
            case bossName = "BossName"
            case bossSex = "BossSex"
            case bossIdCountry = "BossIdCountry"
            case bossPositive = "BossPositive"
            case bossBack = "BossBack"
            case bossStartDate = "BossStartDate"
            case bossEndDate = "BossEndDate"
            case licencePicture = "LicencePicture"
            case type = "Type"
            case organizationNo = "OrganizationNo"
            case organizationStartDate = "OrganizationStartDate"
            case organizationPicture = "OrganizationPicture"
            case organizationEndDate = "OrganizationEndDate"
            case intro = "Intro"
            case logo = "Logo"
            case tag = "Tag"
            case financialTelephone = "FinancialTelephone"
            case financialContact = "FinancialContact"
            case taxRegistrationNo = "TaxRegistrationNo"
            case taxRegistrationPicture = "TaxRegistrationPicture"
            case taxRegistrationStartDate = "TaxRegistrationStartDate"
            case taxRegistrationEndDate = "TaxRegistrationEndDate"
            case accountBoss = "AccountBoss"
            case accountManagerName = "AccountManagerName"
            case bossTelephone = "BossTelephone"
            case bossJob = "BossJob"
            case bossEmail = "BossEmail"
            case bossAddress = "BossAddress"
            case accountIdType = "AccountIdType"
            case accountIdNo = "AccountIdNo"
            case licencePictureTwo = "LicencePictureTwo"
            case otherPictureOne = "OtherPictureOne"
            case otherPictureTwo = "OtherPictureTwo"
            case otherPictureThree = "OtherPictureThree"
            case otherPictureFour = "OtherPictureFour"
            case profile = "Profile"
        }
    }

    /// AddMerchant返回参数结构体
    public struct AddMerchantResponse: TCResponse {
        /// 业务系统返回消息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let errMessage: String?

        /// 业务系统返回码，0表示成功，其他表示失败。
        public let errCode: String

        /// 添加商户响应对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: AddMerchantResult?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errMessage = "ErrMessage"
            case errCode = "ErrCode"
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 云支付-添加商户接口
    @inlinable
    public func addMerchant(_ input: AddMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddMerchantResponse> {
        self.client.execute(action: "AddMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 云支付-添加商户接口
    @inlinable
    public func addMerchant(_ input: AddMerchantRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddMerchantResponse {
        try await self.client.execute(action: "AddMerchant", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 云支付-添加商户接口
    @inlinable
    public func addMerchant(openId: String, openKey: String, outMerchantId: String, merchantName: String, businessLicenseType: String, businessLicenseNo: String, businessLicensePicture: String, businessLicenseStartDate: String, businessLicenseEndDate: String, classificationIds: [String], brandName: String, telephone: String, cityId: String, address: String, openHours: String, accountType: String, bankNo: String, bankName: String, accountNo: String, accountName: String, bossIdType: String, bossIdNo: String, bossName: String, bossSex: String, bossIdCountry: String, bossPositive: String, bossBack: String, bossStartDate: String, bossEndDate: String, licencePicture: String, type: String? = nil, organizationNo: String? = nil, organizationStartDate: String? = nil, organizationPicture: String? = nil, organizationEndDate: String? = nil, intro: String? = nil, logo: String? = nil, tag: String? = nil, financialTelephone: String? = nil, financialContact: String? = nil, taxRegistrationNo: String? = nil, taxRegistrationPicture: String? = nil, taxRegistrationStartDate: String? = nil, taxRegistrationEndDate: String? = nil, accountBoss: String? = nil, accountManagerName: String? = nil, bossTelephone: String? = nil, bossJob: String? = nil, bossEmail: String? = nil, bossAddress: String? = nil, accountIdType: String? = nil, accountIdNo: String? = nil, licencePictureTwo: String? = nil, otherPictureOne: String? = nil, otherPictureTwo: String? = nil, otherPictureThree: String? = nil, otherPictureFour: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddMerchantResponse> {
        self.addMerchant(.init(openId: openId, openKey: openKey, outMerchantId: outMerchantId, merchantName: merchantName, businessLicenseType: businessLicenseType, businessLicenseNo: businessLicenseNo, businessLicensePicture: businessLicensePicture, businessLicenseStartDate: businessLicenseStartDate, businessLicenseEndDate: businessLicenseEndDate, classificationIds: classificationIds, brandName: brandName, telephone: telephone, cityId: cityId, address: address, openHours: openHours, accountType: accountType, bankNo: bankNo, bankName: bankName, accountNo: accountNo, accountName: accountName, bossIdType: bossIdType, bossIdNo: bossIdNo, bossName: bossName, bossSex: bossSex, bossIdCountry: bossIdCountry, bossPositive: bossPositive, bossBack: bossBack, bossStartDate: bossStartDate, bossEndDate: bossEndDate, licencePicture: licencePicture, type: type, organizationNo: organizationNo, organizationStartDate: organizationStartDate, organizationPicture: organizationPicture, organizationEndDate: organizationEndDate, intro: intro, logo: logo, tag: tag, financialTelephone: financialTelephone, financialContact: financialContact, taxRegistrationNo: taxRegistrationNo, taxRegistrationPicture: taxRegistrationPicture, taxRegistrationStartDate: taxRegistrationStartDate, taxRegistrationEndDate: taxRegistrationEndDate, accountBoss: accountBoss, accountManagerName: accountManagerName, bossTelephone: bossTelephone, bossJob: bossJob, bossEmail: bossEmail, bossAddress: bossAddress, accountIdType: accountIdType, accountIdNo: accountIdNo, licencePictureTwo: licencePictureTwo, otherPictureOne: otherPictureOne, otherPictureTwo: otherPictureTwo, otherPictureThree: otherPictureThree, otherPictureFour: otherPictureFour, profile: profile), region: region, logger: logger, on: eventLoop)
    }

    /// 云支付-添加商户接口
    @inlinable
    public func addMerchant(openId: String, openKey: String, outMerchantId: String, merchantName: String, businessLicenseType: String, businessLicenseNo: String, businessLicensePicture: String, businessLicenseStartDate: String, businessLicenseEndDate: String, classificationIds: [String], brandName: String, telephone: String, cityId: String, address: String, openHours: String, accountType: String, bankNo: String, bankName: String, accountNo: String, accountName: String, bossIdType: String, bossIdNo: String, bossName: String, bossSex: String, bossIdCountry: String, bossPositive: String, bossBack: String, bossStartDate: String, bossEndDate: String, licencePicture: String, type: String? = nil, organizationNo: String? = nil, organizationStartDate: String? = nil, organizationPicture: String? = nil, organizationEndDate: String? = nil, intro: String? = nil, logo: String? = nil, tag: String? = nil, financialTelephone: String? = nil, financialContact: String? = nil, taxRegistrationNo: String? = nil, taxRegistrationPicture: String? = nil, taxRegistrationStartDate: String? = nil, taxRegistrationEndDate: String? = nil, accountBoss: String? = nil, accountManagerName: String? = nil, bossTelephone: String? = nil, bossJob: String? = nil, bossEmail: String? = nil, bossAddress: String? = nil, accountIdType: String? = nil, accountIdNo: String? = nil, licencePictureTwo: String? = nil, otherPictureOne: String? = nil, otherPictureTwo: String? = nil, otherPictureThree: String? = nil, otherPictureFour: String? = nil, profile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddMerchantResponse {
        try await self.addMerchant(.init(openId: openId, openKey: openKey, outMerchantId: outMerchantId, merchantName: merchantName, businessLicenseType: businessLicenseType, businessLicenseNo: businessLicenseNo, businessLicensePicture: businessLicensePicture, businessLicenseStartDate: businessLicenseStartDate, businessLicenseEndDate: businessLicenseEndDate, classificationIds: classificationIds, brandName: brandName, telephone: telephone, cityId: cityId, address: address, openHours: openHours, accountType: accountType, bankNo: bankNo, bankName: bankName, accountNo: accountNo, accountName: accountName, bossIdType: bossIdType, bossIdNo: bossIdNo, bossName: bossName, bossSex: bossSex, bossIdCountry: bossIdCountry, bossPositive: bossPositive, bossBack: bossBack, bossStartDate: bossStartDate, bossEndDate: bossEndDate, licencePicture: licencePicture, type: type, organizationNo: organizationNo, organizationStartDate: organizationStartDate, organizationPicture: organizationPicture, organizationEndDate: organizationEndDate, intro: intro, logo: logo, tag: tag, financialTelephone: financialTelephone, financialContact: financialContact, taxRegistrationNo: taxRegistrationNo, taxRegistrationPicture: taxRegistrationPicture, taxRegistrationStartDate: taxRegistrationStartDate, taxRegistrationEndDate: taxRegistrationEndDate, accountBoss: accountBoss, accountManagerName: accountManagerName, bossTelephone: bossTelephone, bossJob: bossJob, bossEmail: bossEmail, bossAddress: bossAddress, accountIdType: accountIdType, accountIdNo: accountIdNo, licencePictureTwo: licencePictureTwo, otherPictureOne: otherPictureOne, otherPictureTwo: otherPictureTwo, otherPictureThree: otherPictureThree, otherPictureFour: otherPictureFour, profile: profile), region: region, logger: logger, on: eventLoop)
    }
}
