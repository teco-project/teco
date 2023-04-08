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

extension Rce {
    /// 账号信息。
    public struct AccountInfo: TCInputModel {
        /// 账号类型
        public let accountType: UInt64

        /// QQ账号信息，AccountType是1时，该字段必填。
        public let qqAccount: QQAccountInfo?

        /// 微信账号信息，AccountType是2时，该字段必填。
        public let weChatAccount: WeChatAccountInfo?

        /// 其它账号信息，AccountType是0、4、8或10004时，该字段必填。
        public let otherAccount: OtherAccountInfo?

        public init(accountType: UInt64, qqAccount: QQAccountInfo? = nil, weChatAccount: WeChatAccountInfo? = nil, otherAccount: OtherAccountInfo? = nil) {
            self.accountType = accountType
            self.qqAccount = qqAccount
            self.weChatAccount = weChatAccount
            self.otherAccount = otherAccount
        }

        enum CodingKeys: String, CodingKey {
            case accountType = "AccountType"
            case qqAccount = "QQAccount"
            case weChatAccount = "WeChatAccount"
            case otherAccount = "OtherAccount"
        }
    }

    /// 全栈式风控引擎入参
    public struct InputCryptoManageMarketingRisk: TCInputModel {
        /// 是否授权
        public let isAuthorized: String?

        /// 加密类型
        public let cryptoType: String?

        /// 加密内容
        public let cryptoContent: String?

        public init(isAuthorized: String? = nil, cryptoType: String? = nil, cryptoContent: String? = nil) {
            self.isAuthorized = isAuthorized
            self.cryptoType = cryptoType
            self.cryptoContent = cryptoContent
        }

        enum CodingKeys: String, CodingKey {
            case isAuthorized = "IsAuthorized"
            case cryptoType = "CryptoType"
            case cryptoContent = "CryptoContent"
        }
    }

    /// 入参的详细参数信息
    public struct InputDetails: TCInputModel {
        /// 字段名称
        public let fieldName: String

        /// 字段值
        public let fieldValue: String

        public init(fieldName: String, fieldValue: String) {
            self.fieldName = fieldName
            self.fieldValue = fieldValue
        }

        enum CodingKeys: String, CodingKey {
            case fieldName = "FieldName"
            case fieldValue = "FieldValue"
        }
    }

    /// 风险趋势统计--入参
    public struct InputFrontRisk: TCInputModel {
        /// 事件ID
        public let eventId: Int64

        /// 开始时间
        public let startTime: String?

        /// 结束时间
        public let endTime: String?

        /// 趋势类型
        public let type: Int64?

        /// 当前开始时间
        public let currentStartTime: String?

        /// 当前结束时间
        public let currentEndTime: String?

        public init(eventId: Int64, startTime: String? = nil, endTime: String? = nil, type: Int64? = nil, currentStartTime: String? = nil, currentEndTime: String? = nil) {
            self.eventId = eventId
            self.startTime = startTime
            self.endTime = endTime
            self.type = type
            self.currentStartTime = currentStartTime
            self.currentEndTime = currentEndTime
        }

        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case type = "Type"
            case currentStartTime = "CurrentStartTime"
            case currentEndTime = "CurrentEndTime"
        }
    }

    /// 全栈式风控引擎入参
    public struct InputManageMarketingRisk: TCInputModel {
        /// 账号信息。
        public let account: AccountInfo

        /// 场景类型：场景SceneCode, 控制台上新建对应的场景并获取对应的值；
        /// 例如：e_register_protection_1521184361
        /// 控制台链接：https://console.cloud.tencent.com/rce/risk/sceneroot；
        public let sceneCode: String

        /// 登录来源的外网IP
        public let userIp: String

        /// 时间戳
        public let postTime: UInt64

        /// 用户唯一标识。
        public let userId: String?

        /// 设备指纹token。
        public let deviceToken: String?

        /// 设备指纹BusinessId
        public let deviceBusinessId: Int64?

        /// 业务ID。网站或应用在多个业务中使用此服务，通过此ID区分统计数据。
        public let businessId: UInt64?

        /// 昵称，UTF-8 编码。
        public let nickname: String?

        /// 用户邮箱地址（非系统自动生成）。
        public let emailAddress: String?

        /// 是否识别设备异常：
        /// 0：不识别。
        /// 1：识别。
        public let checkDevice: Int64?

        /// 用户HTTP请求中的Cookie进行2次hash的值，只要保证相同Cookie的hash值一致即可。
        public let cookieHash: String?

        /// 用户HTTP请求的Referer值。
        public let referer: String?

        /// 用户HTTP请求的User-Agent值。
        public let userAgent: String?

        /// 用户HTTP请求的X-Forwarded-For值。
        public let xForwardedFor: String?

        /// MAC地址或设备唯一标识。
        public let macAddress: String?

        /// 手机制造商ID，如果手机注册，请带上此信息。
        public let vendorId: String?

        /// 设备类型：
        /// 1：Android
        /// 2：IOS
        public let deviceType: Int64?

        /// 详细信息
        public let details: [InputDetails]?

        /// 可选填写。详情请跳转至SponsorInfo查看。
        public let sponsor: SponsorInfo?

        /// 可选填写。详情请跳转至OnlineScamInfo查看。
        public let onlineScam: OnlineScamInfo?

        /// 平台: 1android
        public let platform: String?

        public init(account: AccountInfo, sceneCode: String, userIp: String, postTime: UInt64, userId: String? = nil, deviceToken: String? = nil, deviceBusinessId: Int64? = nil, businessId: UInt64? = nil, nickname: String? = nil, emailAddress: String? = nil, checkDevice: Int64? = nil, cookieHash: String? = nil, referer: String? = nil, userAgent: String? = nil, xForwardedFor: String? = nil, macAddress: String? = nil, vendorId: String? = nil, deviceType: Int64? = nil, details: [InputDetails]? = nil, sponsor: SponsorInfo? = nil, onlineScam: OnlineScamInfo? = nil, platform: String? = nil) {
            self.account = account
            self.sceneCode = sceneCode
            self.userIp = userIp
            self.postTime = postTime
            self.userId = userId
            self.deviceToken = deviceToken
            self.deviceBusinessId = deviceBusinessId
            self.businessId = businessId
            self.nickname = nickname
            self.emailAddress = emailAddress
            self.checkDevice = checkDevice
            self.cookieHash = cookieHash
            self.referer = referer
            self.userAgent = userAgent
            self.xForwardedFor = xForwardedFor
            self.macAddress = macAddress
            self.vendorId = vendorId
            self.deviceType = deviceType
            self.details = details
            self.sponsor = sponsor
            self.onlineScam = onlineScam
            self.platform = platform
        }

        enum CodingKeys: String, CodingKey {
            case account = "Account"
            case sceneCode = "SceneCode"
            case userIp = "UserIp"
            case postTime = "PostTime"
            case userId = "UserId"
            case deviceToken = "DeviceToken"
            case deviceBusinessId = "DeviceBusinessId"
            case businessId = "BusinessId"
            case nickname = "Nickname"
            case emailAddress = "EmailAddress"
            case checkDevice = "CheckDevice"
            case cookieHash = "CookieHash"
            case referer = "Referer"
            case userAgent = "UserAgent"
            case xForwardedFor = "XForwardedFor"
            case macAddress = "MacAddress"
            case vendorId = "VendorId"
            case deviceType = "DeviceType"
            case details = "Details"
            case sponsor = "Sponsor"
            case onlineScam = "OnlineScam"
            case platform = "Platform"
        }
    }

    /// 诈骗信息。
    public struct OnlineScamInfo: TCInputModel {
        /// 内容标签。
        public let contentLabel: String?

        /// 内容风险等级：
        /// 0：正常。
        /// 1：可疑。
        public let contentRiskLevel: Int64?

        /// 内容产生形式：
        /// 0：对话。
        /// 1：广播。
        public let contentType: Int64?

        /// 类型
        public let fraudType: Int64?

        /// 账号
        public let fraudAccount: String?

        public init(contentLabel: String? = nil, contentRiskLevel: Int64? = nil, contentType: Int64? = nil, fraudType: Int64? = nil, fraudAccount: String? = nil) {
            self.contentLabel = contentLabel
            self.contentRiskLevel = contentRiskLevel
            self.contentType = contentType
            self.fraudType = fraudType
            self.fraudAccount = fraudAccount
        }

        enum CodingKeys: String, CodingKey {
            case contentLabel = "ContentLabel"
            case contentRiskLevel = "ContentRiskLevel"
            case contentType = "ContentType"
            case fraudType = "FraudType"
            case fraudAccount = "FraudAccount"
        }
    }

    /// 其它账号信息。
    public struct OtherAccountInfo: TCInputModel {
        /// id
        public let accountId: String

        /// 手机号
        public let mobilePhone: String?

        /// id
        public let deviceId: String?

        public init(accountId: String, mobilePhone: String? = nil, deviceId: String? = nil) {
            self.accountId = accountId
            self.mobilePhone = mobilePhone
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case accountId = "AccountId"
            case mobilePhone = "MobilePhone"
            case deviceId = "DeviceId"
        }
    }

    /// 风险趋势统计出参，需要为数组
    public struct OutputFrontRisk: TCOutputModel {
        /// 名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?

        /// 参数值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: [OutputFrontRiskValue]?

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    /// 风险趋势统计--出参
    public struct OutputFrontRiskData: TCOutputModel {
        /// 返回码[0：成功；非0：标识失败错误码]。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: Int64?

        /// 出错消息[UTF-8编码]。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 返回结果。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: [OutputFrontRisk]?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
            case value = "Value"
        }
    }

    /// 风险趋势统计--值
    public struct OutputFrontRiskValue: TCOutputModel {
        /// 请求次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let requests: Int64?

        /// 日期标签
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let index: String?

        enum CodingKeys: String, CodingKey {
            case requests = "Requests"
            case index = "Index"
        }
    }

    /// 全栈式风控引擎出参
    public struct OutputManageMarketingRisk: TCOutputModel {
        /// 返回码。0表示成功，非0标识失败错误码。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: Int64?

        /// UTF-8编码，出错消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 业务详情。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let value: OutputManageMarketingRiskValue?

        /// 控制台显示的req_id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uUid: String?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
            case value = "Value"
            case uUid = "UUid"
        }
    }

    /// 全栈式风控引擎出参值
    public struct OutputManageMarketingRiskValue: TCOutputModel {
        /// 账号ID。对应输入参数：
        /// AccountType是1时，对应QQ的OpenID。
        /// AccountType是2时，对应微信的OpenID/UnionID。
        /// AccountType是4时，对应手机号。
        /// AccountType是8时，对应imei、idfa、imeiMD5或者idfaMD5。
        /// AccountType是0时，对应账号信息。
        /// AccountType是10004时，对应手机号的MD5。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 操作时间戳，单位秒（对应输入参数）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let postTime: UInt64?

        /// 对应输入参数，AccountType 是 QQ 或微信开放账号时，用于标识 QQ 或微信用户登录后关联业务自身的账号ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let associateAccount: String?

        /// 操作来源的外网IP（对应输入参数）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userIp: String?

        /// 风险值
        /// pass : 无恶意
        /// review：需要人工审核
        /// reject：拒绝，高风险恶意
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskLevel: String?

        /// 风险类型，请参考官网风险类型
        /// 账号风险
        /// 1 账号信用低,账号近期存在因恶意被处罚历史，网络低活跃，被举报等因素
        /// 11 疑似 低活跃账号,账号活跃度与正常用户有差异
        /// 2 垃圾账号 疑似批量注册小号，近期存在严重违规或大量举报
        /// 21 疑似小号 账号有疑似线上养号，小号等行为
        /// 22 疑似违规账号 账号曾有违规行为、曾被举报过、曾因违规被处罚过等
        /// 3 无效账号 送检账号参数无法成功解析，请检查微信 openid 是否有误/appid与QQopenid无法关联/微信openid权限是否有开通/手机号是否为中国大陆手机号；
        /// 4 黑名单 该账号在业务侧有过拉黑记录
        /// 5 白名单 业务自行有添加过白名单记录
        /// 行为风险
        /// 101 批量操作 存在 ip/设备/环境等因素的聚集性异常
        /// 1011 疑似 IP 属性聚集，出现 IP 聚集
        /// 1012 疑似 设备属性聚集 出现设备聚集
        /// 102 自动机 疑似自动机批量请求
        /// 103 恶意行为-网赚 疑似网赚
        /// 104 微信登录态无效 检查 WeChatAccessToken 参数，是否已经失效；
        /// 201 环境风险 环境异常 操作 ip/设备/环境存在异常。当前 ip 为非常用 ip 或恶意 ip 段
        /// 2011 疑似 非常用IP 请求 当前请求 IP 非该账号常用 IP
        /// 2012 疑似 IP 异常 使用 idc 机房 ip 或 使用代理 ip 或 使用恶意 ip 等
        /// 205 非公网有效ip 传进来的 IP 地址为内网 ip 地址或者 ip 保留地址；
        /// 设备风险
        /// 206  设备异常 该设备存在异常的使用行为
        /// 2061 疑似 非常用设备 当前请求的设备非该账号常用设备
        /// 2062 疑似 虚拟设备 请求设备为模拟器、脚本、云设备等虚拟设备
        /// 2063 疑似 群控设备 请求设备为猫池、手机墙等群控设备
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let riskType: [Int64]?

        /// 唯一ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let constId: String?

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case postTime = "PostTime"
            case associateAccount = "AssociateAccount"
            case userIp = "UserIp"
            case riskLevel = "RiskLevel"
            case riskType = "RiskType"
            case constId = "ConstId"
        }
    }

    /// QQ账号信息。
    public struct QQAccountInfo: TCInputModel {
        /// QQ的OpenID。
        public let qqOpenId: String

        /// QQ分配给网站或应用的AppId，用来唯一标识网站或应用。
        public let appIdUser: String

        /// 用于标识QQ用户登录后所关联业务自身的账号ID。
        public let associateAccount: String?

        /// 账号绑定的手机号。
        public let mobilePhone: String?

        /// 用户设备号。
        public let deviceId: String?

        public init(qqOpenId: String, appIdUser: String, associateAccount: String? = nil, mobilePhone: String? = nil, deviceId: String? = nil) {
            self.qqOpenId = qqOpenId
            self.appIdUser = appIdUser
            self.associateAccount = associateAccount
            self.mobilePhone = mobilePhone
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case qqOpenId = "QQOpenId"
            case appIdUser = "AppIdUser"
            case associateAccount = "AssociateAccount"
            case mobilePhone = "MobilePhone"
            case deviceId = "DeviceId"
        }
    }

    /// 网赚防刷相关参数
    public struct SponsorInfo: TCInputModel {
        /// OpenID
        public let sponsorOpenId: String?

        /// 设备号
        public let sponsorDeviceNumber: String?

        /// 手机号
        public let sponsorPhone: String?

        /// IP
        public let sponsorIp: String?

        /// 链接
        public let campaignUrl: String?

        public init(sponsorOpenId: String? = nil, sponsorDeviceNumber: String? = nil, sponsorPhone: String? = nil, sponsorIp: String? = nil, campaignUrl: String? = nil) {
            self.sponsorOpenId = sponsorOpenId
            self.sponsorDeviceNumber = sponsorDeviceNumber
            self.sponsorPhone = sponsorPhone
            self.sponsorIp = sponsorIp
            self.campaignUrl = campaignUrl
        }

        enum CodingKeys: String, CodingKey {
            case sponsorOpenId = "SponsorOpenId"
            case sponsorDeviceNumber = "SponsorDeviceNumber"
            case sponsorPhone = "SponsorPhone"
            case sponsorIp = "SponsorIp"
            case campaignUrl = "CampaignUrl"
        }
    }

    /// 微信账号信息。
    public struct WeChatAccountInfo: TCInputModel {
        /// 微信的OpenID/UnionID 。
        public let weChatOpenId: String

        /// 微信开放账号类型：
        /// 1：微信公众号/微信第三方登录。
        /// 2：微信小程序。
        public let weChatSubType: UInt64?

        /// 随机串。如果WeChatSubType是2，该字段必填。Token签名随机数，建议16个字符。
        public let randStr: String?

        /// token
        public let weChatAccessToken: String?

        /// 用于标识微信用户登录后所关联业务自身的账号ID。
        public let associateAccount: String?

        /// 账号绑定的手机号。
        public let mobilePhone: String?

        /// 用户设备号。
        public let deviceId: String?

        public init(weChatOpenId: String, weChatSubType: UInt64? = nil, randStr: String? = nil, weChatAccessToken: String? = nil, associateAccount: String? = nil, mobilePhone: String? = nil, deviceId: String? = nil) {
            self.weChatOpenId = weChatOpenId
            self.weChatSubType = weChatSubType
            self.randStr = randStr
            self.weChatAccessToken = weChatAccessToken
            self.associateAccount = associateAccount
            self.mobilePhone = mobilePhone
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case weChatOpenId = "WeChatOpenId"
            case weChatSubType = "WeChatSubType"
            case randStr = "RandStr"
            case weChatAccessToken = "WeChatAccessToken"
            case associateAccount = "AssociateAccount"
            case mobilePhone = "MobilePhone"
            case deviceId = "DeviceId"
        }
    }
}
