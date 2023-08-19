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

extension Aa {
    /// QueryActivityAntiRush请求参数结构体
    public struct QueryActivityAntiRushRequest: TCRequest {
        /// 账号类型
        public let accountType: String

        /// uid值
        public let uid: String

        /// 用户的真实外网 IP。若填入非外网有效ip，会返回level=0的风控结果，risktype中会有205的风险码返回作为标识
        public let userIp: String

        /// 用户操作时间戳。
        public let postTime: String

        /// accountType 是QQ开放账号时，该参数必填，表示 QQ 开放平台分配给网站或应用的 AppID，用来唯一标识网站或应用。
        public let appIdU: String?

        /// 昵称，UTF-8 编码。
        public let nickName: String?

        /// 手机号
        public let phoneNumber: String?

        /// 用户邮箱地址。
        public let emailAddress: String?

        /// 注册时间戳。
        public let registerTime: String?

        /// 注册来源的外网 IP。
        public let registerIp: String?

        /// 用户 HTTP 请求中的 cookie 进行2次 hash 的值，只要保证相同 cookie 的 hash 值一致即可。
        public let cookieHash: String?

        /// 地址。
        public let address: String?

        /// 登录来源：
        /// 0：其他。
        /// 1：PC 网页。
        /// 2：移动页面。
        /// 3：App。
        /// 4：微信公众号。
        public let loginSource: String?

        /// 登录方式：
        /// 0：其他。
        /// 1：手动账号密码输入。
        /// 2：动态短信密码登录。
        /// 3：二维码扫描登录。
        public let loginType: String?

        /// 登录耗时，单位：秒。
        public let loginSpend: String?

        /// 用户操作的目的 ID，如点赞等，该字段就是被点赞的消息 ID，如果是投票，则为被投号码的 ID。
        public let rootId: String?

        /// 用户 HTTP 请求的 referer 值。
        public let referer: String?

        /// 登录成功后跳转页面。
        public let jumpUrl: String?

        /// 用户 HTTP 请求的 userAgent。
        public let userAgent: String?

        /// 用户 HTTP 请求中的 x_forward_for。
        public let xForwardedFor: String?

        /// 用户操作过程中鼠标单击次数。
        public let mouseClickCount: String?

        /// 用户操作过程中键盘单击次数。
        public let keyboardClickCount: String?

        /// MAC 地址或设备唯一标识。
        public let macAddress: String?

        /// 手机制造商 ID，如果手机注册，请带上此信息。
        public let vendorId: String?

        /// 手机设备号。支持以下格式：
        /// 1.imei明文
        /// 2.idfa明文,
        /// 3.imei小写后MD5值小写
        /// 4.idfa大写后MD5值小写
        public let imei: String?

        /// App 客户端版本。
        public let appVersion: String?

        /// 业务 ID 网站或应用在多个业务中使用此服务，通过此 ID 区分统计数据。
        public let businessId: String?

        /// 1：微信公众号。
        /// 2：微信小程序。
        public let wxSubType: String?

        /// Token 签名随机数，WxSubType为微信小程序时必填，建议16个字符。
        public let randNum: String?

        /// token
        public let wxToken: String?

        /// 是否识别设备异常：
        /// 0：不识别。
        /// 1：识别。
        public let checkDevice: String?

        public init(accountType: String, uid: String, userIp: String, postTime: String, appIdU: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, registerTime: String? = nil, registerIp: String? = nil, cookieHash: String? = nil, address: String? = nil, loginSource: String? = nil, loginType: String? = nil, loginSpend: String? = nil, rootId: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, macAddress: String? = nil, vendorId: String? = nil, imei: String? = nil, appVersion: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil, checkDevice: String? = nil) {
            self.accountType = accountType
            self.uid = uid
            self.userIp = userIp
            self.postTime = postTime
            self.appIdU = appIdU
            self.nickName = nickName
            self.phoneNumber = phoneNumber
            self.emailAddress = emailAddress
            self.registerTime = registerTime
            self.registerIp = registerIp
            self.cookieHash = cookieHash
            self.address = address
            self.loginSource = loginSource
            self.loginType = loginType
            self.loginSpend = loginSpend
            self.rootId = rootId
            self.referer = referer
            self.jumpUrl = jumpUrl
            self.userAgent = userAgent
            self.xForwardedFor = xForwardedFor
            self.mouseClickCount = mouseClickCount
            self.keyboardClickCount = keyboardClickCount
            self.macAddress = macAddress
            self.vendorId = vendorId
            self.imei = imei
            self.appVersion = appVersion
            self.businessId = businessId
            self.wxSubType = wxSubType
            self.randNum = randNum
            self.wxToken = wxToken
            self.checkDevice = checkDevice
        }

        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case uid = "Uid"
            case userIp = "UserIp"
            case postTime = "PostTime"
            case appIdU = "AppIdU"
            case nickName = "NickName"
            case phoneNumber = "PhoneNumber"
            case emailAddress = "EmailAddress"
            case registerTime = "RegisterTime"
            case registerIp = "RegisterIp"
            case cookieHash = "CookieHash"
            case address = "Address"
            case loginSource = "LoginSource"
            case loginType = "LoginType"
            case loginSpend = "LoginSpend"
            case rootId = "RootId"
            case referer = "Referer"
            case jumpUrl = "JumpUrl"
            case userAgent = "UserAgent"
            case xForwardedFor = "XForwardedFor"
            case mouseClickCount = "MouseClickCount"
            case keyboardClickCount = "KeyboardClickCount"
            case macAddress = "MacAddress"
            case vendorId = "VendorId"
            case imei = "Imei"
            case appVersion = "AppVersion"
            case businessId = "BusinessId"
            case wxSubType = "WxSubType"
            case randNum = "RandNum"
            case wxToken = "WxToken"
            case checkDevice = "CheckDevice"
        }
    }

    /// QueryActivityAntiRush返回参数结构体
    public struct QueryActivityAntiRushResponse: TCResponse {
        /// 操作时间戳，单位：秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postTime: String?

        /// 用户操作的真实外网 IP。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userIp: String?

        /// 0：表示无恶意。
        /// 1 - 4：恶意等级由低到高。
        public let level: Int64

        /// 风险类型。
        ///
        /// 账号风险：
        ///
        /// 1，账号信用低，账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素；
        /// 2，垃圾账号，疑似批量注册小号，近期存在严重违规或大量举报；
        /// 3，无效账号，送检账号参数无法成功解析，请检查微信openid是否有误 ，QQopenid是否与appidU对应，手机号是否有误。
        /// 4，黑名单，该账号在业务侧有过拉黑记录
        /// 5，白名单，该账号在业务侧有过加白名单记录
        ///
        /// 行为风险：
        /// 101，批量操作，存在ip/设备/环境等因素的聚集性异常；
        /// 102，自动机，疑似自动机批量请求；
        /// 104，微信登录态无效，检查wxToken参数，是否已经失效；
        ///
        /// 环境风险：
        /// 201，环境异常，操作ip/设备/环境存在异常。当前ip为非常用ip或恶意ip段；
        /// 205，非公网有效ip，传进来的IP地址为内网ip地址或者ip保留地址；
        /// 206，设备异常，该设备存在异常的使用行为
        public let riskType: [Int64]

        /// accountType是QQ或微信开放账号时，用于标识QQ或微信用户登录后关联业务自身的账号ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let associateAccount: String?

        /// uid值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uid: String?

        /// 用户操作的目的ID
        /// 比如：点赞，该字段就是被点 赞的消息 id，如果是投票，就是被投号码的 ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rootId: String?

        /// 业务侧错误码。成功时返回Success，错误时返回具体业务错误原因。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let codeDesc: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case postTime = "PostTime"
            case userIp = "UserIp"
            case level = "Level"
            case riskType = "RiskType"
            case associateAccount = "AssociateAccount"
            case uid = "Uid"
            case rootId = "RootId"
            case codeDesc = "CodeDesc"
            case requestId = "RequestId"
        }
    }

    /// 活动防刷
    ///
    /// 腾讯云活动防刷（ActivityAntiRush，AA）是针对电商、O2O、P2P、游戏、支付等行业在促销活动中遇到“羊毛党”恶意刷取优惠福利的行为时，通过防刷引擎，精准识别出“薅羊毛”恶意行为的活动防刷服务，避免了企业被刷带来的巨大经济损失。
    @inlinable
    public func queryActivityAntiRush(_ input: QueryActivityAntiRushRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityAntiRushResponse> {
        self.client.execute(action: "QueryActivityAntiRush", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 活动防刷
    ///
    /// 腾讯云活动防刷（ActivityAntiRush，AA）是针对电商、O2O、P2P、游戏、支付等行业在促销活动中遇到“羊毛党”恶意刷取优惠福利的行为时，通过防刷引擎，精准识别出“薅羊毛”恶意行为的活动防刷服务，避免了企业被刷带来的巨大经济损失。
    @inlinable
    public func queryActivityAntiRush(_ input: QueryActivityAntiRushRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityAntiRushResponse {
        try await self.client.execute(action: "QueryActivityAntiRush", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 活动防刷
    ///
    /// 腾讯云活动防刷（ActivityAntiRush，AA）是针对电商、O2O、P2P、游戏、支付等行业在促销活动中遇到“羊毛党”恶意刷取优惠福利的行为时，通过防刷引擎，精准识别出“薅羊毛”恶意行为的活动防刷服务，避免了企业被刷带来的巨大经济损失。
    @inlinable
    public func queryActivityAntiRush(accountType: String, uid: String, userIp: String, postTime: String, appIdU: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, registerTime: String? = nil, registerIp: String? = nil, cookieHash: String? = nil, address: String? = nil, loginSource: String? = nil, loginType: String? = nil, loginSpend: String? = nil, rootId: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, macAddress: String? = nil, vendorId: String? = nil, imei: String? = nil, appVersion: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil, checkDevice: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryActivityAntiRushResponse> {
        self.queryActivityAntiRush(.init(accountType: accountType, uid: uid, userIp: userIp, postTime: postTime, appIdU: appIdU, nickName: nickName, phoneNumber: phoneNumber, emailAddress: emailAddress, registerTime: registerTime, registerIp: registerIp, cookieHash: cookieHash, address: address, loginSource: loginSource, loginType: loginType, loginSpend: loginSpend, rootId: rootId, referer: referer, jumpUrl: jumpUrl, userAgent: userAgent, xForwardedFor: xForwardedFor, mouseClickCount: mouseClickCount, keyboardClickCount: keyboardClickCount, macAddress: macAddress, vendorId: vendorId, imei: imei, appVersion: appVersion, businessId: businessId, wxSubType: wxSubType, randNum: randNum, wxToken: wxToken, checkDevice: checkDevice), region: region, logger: logger, on: eventLoop)
    }

    /// 活动防刷
    ///
    /// 腾讯云活动防刷（ActivityAntiRush，AA）是针对电商、O2O、P2P、游戏、支付等行业在促销活动中遇到“羊毛党”恶意刷取优惠福利的行为时，通过防刷引擎，精准识别出“薅羊毛”恶意行为的活动防刷服务，避免了企业被刷带来的巨大经济损失。
    @inlinable
    public func queryActivityAntiRush(accountType: String, uid: String, userIp: String, postTime: String, appIdU: String? = nil, nickName: String? = nil, phoneNumber: String? = nil, emailAddress: String? = nil, registerTime: String? = nil, registerIp: String? = nil, cookieHash: String? = nil, address: String? = nil, loginSource: String? = nil, loginType: String? = nil, loginSpend: String? = nil, rootId: String? = nil, referer: String? = nil, jumpUrl: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, mouseClickCount: String? = nil, keyboardClickCount: String? = nil, macAddress: String? = nil, vendorId: String? = nil, imei: String? = nil, appVersion: String? = nil, businessId: String? = nil, wxSubType: String? = nil, randNum: String? = nil, wxToken: String? = nil, checkDevice: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryActivityAntiRushResponse {
        try await self.queryActivityAntiRush(.init(accountType: accountType, uid: uid, userIp: userIp, postTime: postTime, appIdU: appIdU, nickName: nickName, phoneNumber: phoneNumber, emailAddress: emailAddress, registerTime: registerTime, registerIp: registerIp, cookieHash: cookieHash, address: address, loginSource: loginSource, loginType: loginType, loginSpend: loginSpend, rootId: rootId, referer: referer, jumpUrl: jumpUrl, userAgent: userAgent, xForwardedFor: xForwardedFor, mouseClickCount: mouseClickCount, keyboardClickCount: keyboardClickCount, macAddress: macAddress, vendorId: vendorId, imei: imei, appVersion: appVersion, businessId: businessId, wxSubType: wxSubType, randNum: randNum, wxToken: wxToken, checkDevice: checkDevice), region: region, logger: logger, on: eventLoop)
    }
}
