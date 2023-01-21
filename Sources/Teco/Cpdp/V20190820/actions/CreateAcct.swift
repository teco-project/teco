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
    /// CreateAcct请求参数结构体
    public struct CreateAcctRequest: TCRequestModel {
        /// 聚鑫平台分配的支付MidasAppId
        public let midasAppId: String

        /// 业务平台的子商户ID，唯一
        public let subMchId: String

        /// 子商户名称
        public let subMchName: String

        /// 子商户地址
        public let address: String

        /// 子商户联系人
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let contact: String

        /// 联系人手机号
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let mobile: String

        /// 邮箱
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let email: String

        /// 聚鑫分配的安全ID
        public let midasSecretId: String

        /// 按照聚鑫安全密钥计算的签名
        public let midasSignature: String

        /// 子商户类型：
        /// 个人: personal
        /// 企业: enterprise
        /// 个体工商户: individual
        /// 缺省: enterprise
        public let subMchType: String?

        /// 不填则默认子商户名称
        public let shortName: String?

        /// 子商户会员类型：
        /// general: 普通子账户
        /// merchant: 商户子账户
        /// 缺省: general
        public let subMerchantMemberType: String?

        /// 子商户密钥
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let subMerchantKey: String?

        /// 子商户私钥
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let subMerchantPrivateKey: String?

        /// 敏感信息加密类型:
        /// RSA: rsa非对称加密，使用RSA-PKCS1-v1_5
        /// AES: aes对称加密，使用AES256-CBC-PCKS7padding
        /// 缺省: RSA
        public let encryptType: String?

        /// 银行生成的子商户账户，已开户的场景需要录入
        public let subAcctNo: String?

        /// 环境名:
        /// release: 现网环境
        /// sandbox: 沙箱环境
        /// development: 开发环境
        /// 缺省: release
        public let midasEnvironment: String?

        /// 店铺名称
        /// 企业、个体工商户必输
        public let subMerchantStoreName: String?

        /// 公司信息
        public let organizationInfo: OrganizationInfo?

        /// 子商户证件类型
        /// 1 - 身份证
        /// 3 - 回乡证
        /// 4 - 中国护照
        /// 5 - 台胞证
        /// 19 - 外国护照
        /// 52 - 组织机构代码证
        /// 68 - 营业执照
        /// 73 - 统一社会信用代码
        public let subMerchantIdType: String?

        /// 子商户证件号码
        /// <敏感信息>加密详见<a href="https://cloud.tencent.com/document/product/1122/48979" target="_blank">《商户端接口敏感信息加密说明》</a>
        public let subMerchantIdCode: String?

        public init(midasAppId: String, subMchId: String, subMchName: String, address: String, contact: String, mobile: String, email: String, midasSecretId: String, midasSignature: String, subMchType: String? = nil, shortName: String? = nil, subMerchantMemberType: String? = nil, subMerchantKey: String? = nil, subMerchantPrivateKey: String? = nil, encryptType: String? = nil, subAcctNo: String? = nil, midasEnvironment: String? = nil, subMerchantStoreName: String? = nil, organizationInfo: OrganizationInfo? = nil, subMerchantIdType: String? = nil, subMerchantIdCode: String? = nil) {
            self.midasAppId = midasAppId
            self.subMchId = subMchId
            self.subMchName = subMchName
            self.address = address
            self.contact = contact
            self.mobile = mobile
            self.email = email
            self.midasSecretId = midasSecretId
            self.midasSignature = midasSignature
            self.subMchType = subMchType
            self.shortName = shortName
            self.subMerchantMemberType = subMerchantMemberType
            self.subMerchantKey = subMerchantKey
            self.subMerchantPrivateKey = subMerchantPrivateKey
            self.encryptType = encryptType
            self.subAcctNo = subAcctNo
            self.midasEnvironment = midasEnvironment
            self.subMerchantStoreName = subMerchantStoreName
            self.organizationInfo = organizationInfo
            self.subMerchantIdType = subMerchantIdType
            self.subMerchantIdCode = subMerchantIdCode
        }

        enum CodingKeys: String, CodingKey {
            case midasAppId = "MidasAppId"
            case subMchId = "SubMchId"
            case subMchName = "SubMchName"
            case address = "Address"
            case contact = "Contact"
            case mobile = "Mobile"
            case email = "Email"
            case midasSecretId = "MidasSecretId"
            case midasSignature = "MidasSignature"
            case subMchType = "SubMchType"
            case shortName = "ShortName"
            case subMerchantMemberType = "SubMerchantMemberType"
            case subMerchantKey = "SubMerchantKey"
            case subMerchantPrivateKey = "SubMerchantPrivateKey"
            case encryptType = "EncryptType"
            case subAcctNo = "SubAcctNo"
            case midasEnvironment = "MidasEnvironment"
            case subMerchantStoreName = "SubMerchantStoreName"
            case organizationInfo = "OrganizationInfo"
            case subMerchantIdType = "SubMerchantIdType"
            case subMerchantIdCode = "SubMerchantIdCode"
        }
    }

    /// CreateAcct返回参数结构体
    public struct CreateAcctResponse: TCResponseModel {
        /// 聚鑫计费SubAppId，代表子商户
        public let subAppId: String

        /// 银行生成的子商户账户
        public let subAcctNo: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case subAcctNo = "SubAcctNo"
            case requestId = "RequestId"
        }
    }

    /// 聚鑫-商户入驻
    ///
    /// 子商户入驻聚鑫平台
    @inlinable
    public func createAcct(_ input: CreateAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAcctResponse> {
        self.client.execute(action: "CreateAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 聚鑫-商户入驻
    ///
    /// 子商户入驻聚鑫平台
    @inlinable
    public func createAcct(_ input: CreateAcctRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAcctResponse {
        try await self.client.execute(action: "CreateAcct", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 聚鑫-商户入驻
    ///
    /// 子商户入驻聚鑫平台
    @inlinable
    public func createAcct(midasAppId: String, subMchId: String, subMchName: String, address: String, contact: String, mobile: String, email: String, midasSecretId: String, midasSignature: String, subMchType: String? = nil, shortName: String? = nil, subMerchantMemberType: String? = nil, subMerchantKey: String? = nil, subMerchantPrivateKey: String? = nil, encryptType: String? = nil, subAcctNo: String? = nil, midasEnvironment: String? = nil, subMerchantStoreName: String? = nil, organizationInfo: OrganizationInfo? = nil, subMerchantIdType: String? = nil, subMerchantIdCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAcctResponse> {
        self.createAcct(CreateAcctRequest(midasAppId: midasAppId, subMchId: subMchId, subMchName: subMchName, address: address, contact: contact, mobile: mobile, email: email, midasSecretId: midasSecretId, midasSignature: midasSignature, subMchType: subMchType, shortName: shortName, subMerchantMemberType: subMerchantMemberType, subMerchantKey: subMerchantKey, subMerchantPrivateKey: subMerchantPrivateKey, encryptType: encryptType, subAcctNo: subAcctNo, midasEnvironment: midasEnvironment, subMerchantStoreName: subMerchantStoreName, organizationInfo: organizationInfo, subMerchantIdType: subMerchantIdType, subMerchantIdCode: subMerchantIdCode), region: region, logger: logger, on: eventLoop)
    }

    /// 聚鑫-商户入驻
    ///
    /// 子商户入驻聚鑫平台
    @inlinable
    public func createAcct(midasAppId: String, subMchId: String, subMchName: String, address: String, contact: String, mobile: String, email: String, midasSecretId: String, midasSignature: String, subMchType: String? = nil, shortName: String? = nil, subMerchantMemberType: String? = nil, subMerchantKey: String? = nil, subMerchantPrivateKey: String? = nil, encryptType: String? = nil, subAcctNo: String? = nil, midasEnvironment: String? = nil, subMerchantStoreName: String? = nil, organizationInfo: OrganizationInfo? = nil, subMerchantIdType: String? = nil, subMerchantIdCode: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAcctResponse {
        try await self.createAcct(CreateAcctRequest(midasAppId: midasAppId, subMchId: subMchId, subMchName: subMchName, address: address, contact: contact, mobile: mobile, email: email, midasSecretId: midasSecretId, midasSignature: midasSignature, subMchType: subMchType, shortName: shortName, subMerchantMemberType: subMerchantMemberType, subMerchantKey: subMerchantKey, subMerchantPrivateKey: subMerchantPrivateKey, encryptType: encryptType, subAcctNo: subAcctNo, midasEnvironment: midasEnvironment, subMerchantStoreName: subMerchantStoreName, organizationInfo: organizationInfo, subMerchantIdType: subMerchantIdType, subMerchantIdCode: subMerchantIdCode), region: region, logger: logger, on: eventLoop)
    }
}
