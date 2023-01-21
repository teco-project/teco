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

extension Af {
    /// QueryAntiFraud请求参数结构体
    public struct QueryAntiFraudRequest: TCRequestModel {
        /// 电话号码(五选二)
        public let phoneNumber: String?

        /// Id(五选二)
        public let idNumber: String?

        /// 银行卡号(五选二)
        public let bankCardNumber: String?

        /// 用户请求来源 IP(五选二)
        public let userIp: String?

        /// 国际移动设备识别码(五选二)
        public let imei: String?

        /// ios 系统广告标示符(五选二)
        public let idfa: String?

        /// 业务场景 ID，需要找技术对接
        public let scene: String?

        /// 姓名
        public let name: String?

        /// 用户邮箱地址
        public let emailAddress: String?

        /// 用户住址
        public let address: String?

        /// MAC 地址
        public let mac: String?

        /// 国际移动用户识别码
        public let imsi: String?

        /// 关联的腾讯帐号 QQ：1；
        /// 开放帐号微信： 2；
        public let accountType: String?

        /// 可选的 QQ 或微信 openid
        public let uid: String?

        /// qq 或微信分配给网站或应用的 appid，用来
        /// 唯一标识网站或应用
        public let appIdU: String?

        /// WIFI MAC
        public let wifiMac: String?

        /// WIFI 服务集标识
        public let wifiSSID: String?

        /// WIFI-BSSID
        public let wifiBSSID: String?

        /// 业务 ID，在多个业务中使用此服务，通过此
        /// ID 区分统计数据
        public let businessId: String?

        /// Id加密类型
        /// 0：不加密（默认值）
        /// 1：md5
        /// 2：sha256
        /// 3：SM3
        public let idCryptoType: String?

        /// 手机号加密类型
        /// 0：不加密（默认值）
        /// 1：md5, 2：sha256
        /// 3：SM3
        public let phoneCryptoType: String?

        /// 姓名加密类型
        /// 0：不加密（默认值）
        /// 1：md5
        /// 2：sha256
        /// 3：SM3
        public let nameCryptoType: String?

        public init(phoneNumber: String? = nil, idNumber: String? = nil, bankCardNumber: String? = nil, userIp: String? = nil, imei: String? = nil, idfa: String? = nil, scene: String? = nil, name: String? = nil, emailAddress: String? = nil, address: String? = nil, mac: String? = nil, imsi: String? = nil, accountType: String? = nil, uid: String? = nil, appIdU: String? = nil, wifiMac: String? = nil, wifiSSID: String? = nil, wifiBSSID: String? = nil, businessId: String? = nil, idCryptoType: String? = nil, phoneCryptoType: String? = nil, nameCryptoType: String? = nil) {
            self.phoneNumber = phoneNumber
            self.idNumber = idNumber
            self.bankCardNumber = bankCardNumber
            self.userIp = userIp
            self.imei = imei
            self.idfa = idfa
            self.scene = scene
            self.name = name
            self.emailAddress = emailAddress
            self.address = address
            self.mac = mac
            self.imsi = imsi
            self.accountType = accountType
            self.uid = uid
            self.appIdU = appIdU
            self.wifiMac = wifiMac
            self.wifiSSID = wifiSSID
            self.wifiBSSID = wifiBSSID
            self.businessId = businessId
            self.idCryptoType = idCryptoType
            self.phoneCryptoType = phoneCryptoType
            self.nameCryptoType = nameCryptoType
        }

        enum CodingKeys: String, CodingKey {
            case phoneNumber = "PhoneNumber"
            case idNumber = "IdNumber"
            case bankCardNumber = "BankCardNumber"
            case userIp = "UserIp"
            case imei = "Imei"
            case idfa = "Idfa"
            case scene = "Scene"
            case name = "Name"
            case emailAddress = "EmailAddress"
            case address = "Address"
            case mac = "Mac"
            case imsi = "Imsi"
            case accountType = "AccountType"
            case uid = "Uid"
            case appIdU = "AppIdU"
            case wifiMac = "WifiMac"
            case wifiSSID = "WifiSSID"
            case wifiBSSID = "WifiBSSID"
            case businessId = "BusinessId"
            case idCryptoType = "IdCryptoType"
            case phoneCryptoType = "PhoneCryptoType"
            case nameCryptoType = "NameCryptoType"
        }
    }

    /// QueryAntiFraud返回参数结构体
    public struct QueryAntiFraudResponse: TCResponseModel {
        /// 表示该条记录能否查到：1为能查到，-1为查不到
        public let found: Int64

        /// 表示该条Id能否查到：1为能查到，-1为查不到
        public let idFound: Int64

        /// 0~100;值越高 欺诈可能性越大
        public let riskScore: UInt64

        /// 扩展字段，对风险类型的说明
        public let riskInfo: [RiskDetail]

        /// 业务侧错误码。成功时返回Success，错误时返回具体业务错误原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeDesc: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case found = "Found"
            case idFound = "IdFound"
            case riskScore = "RiskScore"
            case riskInfo = "RiskInfo"
            case codeDesc = "CodeDesc"
            case requestId = "RequestId"
        }
    }

    /// 借贷反欺诈
    ///
    /// 天御反欺诈服务，主要应用于银行、证券、保险、消费金融等金融行业客户，通过腾讯的大数据风控能力，
    /// 可以准确识别恶意用户信息，解决客户在支付、活动、理财，风控等业务环节遇到的欺诈威胁，降低企业
    /// 的损失。
    @inlinable
    public func queryAntiFraud(_ input: QueryAntiFraudRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAntiFraudResponse> {
        self.client.execute(action: "QueryAntiFraud", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 借贷反欺诈
    ///
    /// 天御反欺诈服务，主要应用于银行、证券、保险、消费金融等金融行业客户，通过腾讯的大数据风控能力，
    /// 可以准确识别恶意用户信息，解决客户在支付、活动、理财，风控等业务环节遇到的欺诈威胁，降低企业
    /// 的损失。
    @inlinable
    public func queryAntiFraud(_ input: QueryAntiFraudRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAntiFraudResponse {
        try await self.client.execute(action: "QueryAntiFraud", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 借贷反欺诈
    ///
    /// 天御反欺诈服务，主要应用于银行、证券、保险、消费金融等金融行业客户，通过腾讯的大数据风控能力，
    /// 可以准确识别恶意用户信息，解决客户在支付、活动、理财，风控等业务环节遇到的欺诈威胁，降低企业
    /// 的损失。
    @inlinable
    public func queryAntiFraud(phoneNumber: String? = nil, idNumber: String? = nil, bankCardNumber: String? = nil, userIp: String? = nil, imei: String? = nil, idfa: String? = nil, scene: String? = nil, name: String? = nil, emailAddress: String? = nil, address: String? = nil, mac: String? = nil, imsi: String? = nil, accountType: String? = nil, uid: String? = nil, appIdU: String? = nil, wifiMac: String? = nil, wifiSSID: String? = nil, wifiBSSID: String? = nil, businessId: String? = nil, idCryptoType: String? = nil, phoneCryptoType: String? = nil, nameCryptoType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryAntiFraudResponse> {
        self.queryAntiFraud(QueryAntiFraudRequest(phoneNumber: phoneNumber, idNumber: idNumber, bankCardNumber: bankCardNumber, userIp: userIp, imei: imei, idfa: idfa, scene: scene, name: name, emailAddress: emailAddress, address: address, mac: mac, imsi: imsi, accountType: accountType, uid: uid, appIdU: appIdU, wifiMac: wifiMac, wifiSSID: wifiSSID, wifiBSSID: wifiBSSID, businessId: businessId, idCryptoType: idCryptoType, phoneCryptoType: phoneCryptoType, nameCryptoType: nameCryptoType), region: region, logger: logger, on: eventLoop)
    }

    /// 借贷反欺诈
    ///
    /// 天御反欺诈服务，主要应用于银行、证券、保险、消费金融等金融行业客户，通过腾讯的大数据风控能力，
    /// 可以准确识别恶意用户信息，解决客户在支付、活动、理财，风控等业务环节遇到的欺诈威胁，降低企业
    /// 的损失。
    @inlinable
    public func queryAntiFraud(phoneNumber: String? = nil, idNumber: String? = nil, bankCardNumber: String? = nil, userIp: String? = nil, imei: String? = nil, idfa: String? = nil, scene: String? = nil, name: String? = nil, emailAddress: String? = nil, address: String? = nil, mac: String? = nil, imsi: String? = nil, accountType: String? = nil, uid: String? = nil, appIdU: String? = nil, wifiMac: String? = nil, wifiSSID: String? = nil, wifiBSSID: String? = nil, businessId: String? = nil, idCryptoType: String? = nil, phoneCryptoType: String? = nil, nameCryptoType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryAntiFraudResponse {
        try await self.queryAntiFraud(QueryAntiFraudRequest(phoneNumber: phoneNumber, idNumber: idNumber, bankCardNumber: bankCardNumber, userIp: userIp, imei: imei, idfa: idfa, scene: scene, name: name, emailAddress: emailAddress, address: address, mac: mac, imsi: imsi, accountType: accountType, uid: uid, appIdU: appIdU, wifiMac: wifiMac, wifiSSID: wifiSSID, wifiBSSID: wifiBSSID, businessId: businessId, idCryptoType: idCryptoType, phoneCryptoType: phoneCryptoType, nameCryptoType: nameCryptoType), region: region, logger: logger, on: eventLoop)
    }
}
