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

extension Rp {
    /// QueryRegisterProtection请求参数结构体
    public struct QueryRegisterProtectionRequest: TCRequestModel {
        /// 注册来源的外网 IP。
        public let registerIp: String

        /// 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        public let uid: String

        /// 注册时间戳，单位：秒。
        public let registerTime: String

        /// 用户账号类型（QQ 开放帐号、微信开放账号需要 提交工单 由腾讯云进行资格审核）：
        /// 1：QQ 开放帐号。
        /// 2：微信开放账号。
        /// 4：手机号。
        /// 0：其他。
        /// 10004：手机号 MD5。
        public let accountType: String

        /// accountType 是 QQ 或微信开放账号时，该参数必填，表示 QQ 或微信分配给网站或应用的 AppID，用来唯一标识网站或应用。
        public let appIdU: String?

        /// accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        public let associateAccount: String?

        /// 昵称，UTF-8 编码。
        public let nickName: String?

        /// 手机号：国家代码-手机号， 如0086-15912345687（0086前不需要+号）。
        public let phoneNumber: String?

        /// 用户邮箱地址（非系统自动生成）。
        public let emailAddress: String?

        /// 地址。
        public let address: String?

        /// 用户 HTTP 请求中的 cookie 进行2次 hash 的值，只要保证相同 cookie 的 hash 值一致即可。
        public let cookieHash: String?

        /// 注册来源：
        /// 0：其他。
        /// 1：PC 网页。
        /// 2：移动页面。
        /// 3：App。
        /// 4：微信公众号。
        public let registerSource: String?

        /// 用户 HTTP 请求的 referer 值。
        public let referer: String?

        /// 注册成功后跳转页面。
        public let jumpUrl: String?

        /// 用户 HTTP 请求的 userAgent。
        public let userAgent: String?

        /// 用户 HTTP 请求中的 x_forward_for。
        public let xForwardedFor: String?

        /// 用户操作过程中鼠标单击次数。
        public let mouseClickCount: String?

        /// 用户操作过程中键盘单击次数。
        public let keyboardClickCount: String?

        /// 注册结果：
        /// 0：失败。
        /// 1：成功。
        public let result: String?

        /// 失败原因：
        /// 0：其他。
        /// 1：参数错误。
        /// 2：帐号冲突。
        /// 3：验证错误。
        public let reason: String?

        /// 登录耗时，单位：秒。
        public let registerSpend: String?

        /// MAC 地址或设备唯一标识。
        public let macAddress: String?

        /// 手机制造商 ID，如果手机注册，请带上此信息。
        public let vendorId: String?

        /// App 客户端版本。
        public let appVersion: String?

        /// 手机设备号。
        public let imei: String?

        /// 业务 ID 网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据。
        public let businessId: String?

        /// 1：微信公众号。
        /// 2：微信小程序。
        public let wxSubType: String?

        /// Token 签名随机数，微信小程序必填，建议16个字符。
        public let randNum: String?

        /// 如果是微信小程序，该字段为以 ssesion_key 为 key 去签名随机数 radnNum 得到的值（hmac_sha256签名算法）。
        /// 如果是微信公众号或第三方登录，则为授权的 access_token（注意：不是普通 access_token，具体看 微信官方文档）。
        public let wxToken: String?

        public init(registerIp: String, uid: String, registerTime: String, accountType: String, appIdU: String? = nil, associateAccount: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, address: String? = nil, cookieHash: String? = nil, registerSource: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, result: String? = nil, reason: String? = nil, registerSpend: String? = nil, macAddress: String? = nil, vendorId: String? = nil, appVersion: String? = nil, imei: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil) {
            self.registerIp = registerIp
            self.uid = uid
            self.registerTime = registerTime
            self.accountType = accountType
            self.appIdU = appIdU
            self.associateAccount = associateAccount
            self.nickName = nickName
            self.phoneNumber = phoneNumber
            self.emailAddress = emailAddress
            self.address = address
            self.cookieHash = cookieHash
            self.registerSource = registerSource
            self.referer = referer
            self.jumpUrl = jumpUrl
            self.userAgent = userAgent
            self.xForwardedFor = xForwardedFor
            self.mouseClickCount = mouseClickCount
            self.keyboardClickCount = keyboardClickCount
            self.result = result
            self.reason = reason
            self.registerSpend = registerSpend
            self.macAddress = macAddress
            self.vendorId = vendorId
            self.appVersion = appVersion
            self.imei = imei
            self.businessId = businessId
            self.wxSubType = wxSubType
            self.randNum = randNum
            self.wxToken = wxToken
        }

        enum CodingKeys: String, CodingKey {
            case registerIp = "RegisterIp"
            case uid = "Uid"
            case registerTime = "RegisterTime"
            case accountType = "AccountType"
            case appIdU = "AppIdU"
            case associateAccount = "AssociateAccount"
            case nickName = "NickName"
            case phoneNumber = "PhoneNumber"
            case emailAddress = "EmailAddress"
            case address = "Address"
            case cookieHash = "CookieHash"
            case registerSource = "RegisterSource"
            case referer = "Referer"
            case jumpUrl = "JumpUrl"
            case userAgent = "UserAgent"
            case xForwardedFor = "XForwardedFor"
            case mouseClickCount = "MouseClickCount"
            case keyboardClickCount = "KeyboardClickCount"
            case result = "Result"
            case reason = "Reason"
            case registerSpend = "RegisterSpend"
            case macAddress = "MacAddress"
            case vendorId = "VendorId"
            case appVersion = "AppVersion"
            case imei = "Imei"
            case businessId = "BusinessId"
            case wxSubType = "WxSubType"
            case randNum = "RandNum"
            case wxToken = "WxToken"
        }
    }

    /// QueryRegisterProtection返回参数结构体
    public struct QueryRegisterProtectionResponse: TCResponseModel {
        /// 业务侧错误码，成功时返回 Success，错误时返回具体业务错误原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeDesc: String?

        /// accountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let associateAccount: String?

        /// 注册时间戳，单位：秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerTime: String?

        /// 用户 ID 不同的 accountType 对应不同的用户 ID。如果是 QQ，则填入对应的 openid，微信用户则填入对应的 openid/unionid，手机号则填入对应真实用户手机号（如13123456789）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uid: String?

        /// 注册来源的外网 IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let registerIp: String?

        /// 0：表示无恶意。
        /// 1 - 4：恶意等级由低到高。
        public let level: Int64

        /// 风险类型。
        public let riskType: [Int64]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case codeDesc = "CodeDesc"
            case associateAccount = "AssociateAccount"
            case registerTime = "RegisterTime"
            case uid = "Uid"
            case registerIp = "RegisterIp"
            case level = "Level"
            case riskType = "RiskType"
            case requestId = "RequestId"
        }
    }

    /// 注册保护
    ///
    /// 注册保护服务（RegisterProtection，RP）针对网站、APP 的线上注册场景，遇到 “恶意注册” 、“小号注册” 、“注册器注册” 等恶意行为，提供基于天御 DNA 算法的恶意防护引擎，从账号、设备、行为三个维度有效识别 “恶意注册”，从“源头”上防范业务风险。
    @inlinable
    public func queryRegisterProtection(_ input: QueryRegisterProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRegisterProtectionResponse> {
        self.client.execute(action: "QueryRegisterProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册保护
    ///
    /// 注册保护服务（RegisterProtection，RP）针对网站、APP 的线上注册场景，遇到 “恶意注册” 、“小号注册” 、“注册器注册” 等恶意行为，提供基于天御 DNA 算法的恶意防护引擎，从账号、设备、行为三个维度有效识别 “恶意注册”，从“源头”上防范业务风险。
    @inlinable
    public func queryRegisterProtection(_ input: QueryRegisterProtectionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRegisterProtectionResponse {
        try await self.client.execute(action: "QueryRegisterProtection", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册保护
    ///
    /// 注册保护服务（RegisterProtection，RP）针对网站、APP 的线上注册场景，遇到 “恶意注册” 、“小号注册” 、“注册器注册” 等恶意行为，提供基于天御 DNA 算法的恶意防护引擎，从账号、设备、行为三个维度有效识别 “恶意注册”，从“源头”上防范业务风险。
    @inlinable
    public func queryRegisterProtection(registerIp: String, uid: String, registerTime: String, accountType: String, appIdU: String? = nil, associateAccount: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, address: String? = nil, cookieHash: String? = nil, registerSource: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, result: String? = nil, reason: String? = nil, registerSpend: String? = nil, macAddress: String? = nil, vendorId: String? = nil, appVersion: String? = nil, imei: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryRegisterProtectionResponse> {
        self.queryRegisterProtection(.init(registerIp: registerIp, uid: uid, registerTime: registerTime, accountType: accountType, appIdU: appIdU, associateAccount: associateAccount, nickName: nickName, phoneNumber: phoneNumber, emailAddress: emailAddress, address: address, cookieHash: cookieHash, registerSource: registerSource, referer: referer, jumpUrl: jumpUrl, userAgent: userAgent, xForwardedFor: xForwardedFor, mouseClickCount: mouseClickCount, keyboardClickCount: keyboardClickCount, result: result, reason: reason, registerSpend: registerSpend, macAddress: macAddress, vendorId: vendorId, appVersion: appVersion, imei: imei, businessId: businessId, wxSubType: wxSubType, randNum: randNum, wxToken: wxToken), region: region, logger: logger, on: eventLoop)
    }

    /// 注册保护
    ///
    /// 注册保护服务（RegisterProtection，RP）针对网站、APP 的线上注册场景，遇到 “恶意注册” 、“小号注册” 、“注册器注册” 等恶意行为，提供基于天御 DNA 算法的恶意防护引擎，从账号、设备、行为三个维度有效识别 “恶意注册”，从“源头”上防范业务风险。
    @inlinable
    public func queryRegisterProtection(registerIp: String, uid: String, registerTime: String, accountType: String, appIdU: String? = nil, associateAccount: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, address: String? = nil, cookieHash: String? = nil, registerSource: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, result: String? = nil, reason: String? = nil, registerSpend: String? = nil, macAddress: String? = nil, vendorId: String? = nil, appVersion: String? = nil, imei: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryRegisterProtectionResponse {
        try await self.queryRegisterProtection(.init(registerIp: registerIp, uid: uid, registerTime: registerTime, accountType: accountType, appIdU: appIdU, associateAccount: associateAccount, nickName: nickName, phoneNumber: phoneNumber, emailAddress: emailAddress, address: address, cookieHash: cookieHash, registerSource: registerSource, referer: referer, jumpUrl: jumpUrl, userAgent: userAgent, xForwardedFor: xForwardedFor, mouseClickCount: mouseClickCount, keyboardClickCount: keyboardClickCount, result: result, reason: reason, registerSpend: registerSpend, macAddress: macAddress, vendorId: vendorId, appVersion: appVersion, imei: imei, businessId: businessId, wxSubType: wxSubType, randNum: randNum, wxToken: wxToken), region: region, logger: logger, on: eventLoop)
    }
}
