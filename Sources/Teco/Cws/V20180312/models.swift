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

import struct Foundation.Date
import TecoCore
import TecoDateHelpers

extension Cws {
    /// 描述键值对过滤器，用于条件过滤查询。例如过滤ID、名称、状态等
    ///
    /// 若存在多个Filter时，Filter间的关系为逻辑与（AND）关系。
    /// 若同一个Filter存在多个Values，同一Filter下Values间的关系为逻辑或（OR）关系。
    public struct Filter: TCInputModel {
        /// 过滤键的名称。
        public let name: String

        /// 一个或者多个过滤值。
        public let values: [String]

        public init(name: String, values: [String]) {
            self.name = name
            self.values = values
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }

    /// 站点信息。
    public struct MiniSite: TCOutputModel {
        /// 站点ID。
        public let siteId: UInt64

        /// 站点Url。
        public let url: String

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case url = "Url"
        }
    }

    /// 监控任务基础数据
    public struct Monitor: TCOutputModel {
        /// 监控任务ID。
        public let id: UInt64?

        /// 监控名称。
        public let name: String?

        /// 监测状态：1-监测中；2-暂停监测。
        public let monitorStatus: UInt64?

        /// 监测模式，normal-正常扫描；deep-深度扫描。
        public let scannerType: String?

        /// 扫描周期，单位小时，每X小时执行一次。
        public let crontab: UInt64?

        /// 指定扫描类型，3位数每位依次表示：扫描Web漏洞、扫描系统漏洞、扫描系统端口。
        public let includedVulsTypes: String?

        /// 速率限制，每秒发送X个HTTP请求。
        public let rateLimit: UInt64?

        /// 首次扫描开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var firstScanStartTime: Date?

        /// 扫描状态：0-待扫描（无任何扫描结果）；1-扫描中（正在进行扫描）；2-已扫描（有扫描结果且不正在扫描）；3-扫描完成待同步结果。
        public let scanStatus: UInt64?

        /// 上一次扫描完成时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastScanFinishTime: Date?

        /// 当前扫描开始时间，如扫描完成则为上一次扫描的开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var currentScanStartTime: Date?

        /// CreatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdAt: Date?

        /// UpdatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedAt: Date?

        /// 云用户appid。
        public let appid: UInt64

        /// 扫描状态：0-待检测；1-检测完成
        public let contentScanStatus: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case name = "Name"
            case monitorStatus = "MonitorStatus"
            case scannerType = "ScannerType"
            case crontab = "Crontab"
            case includedVulsTypes = "IncludedVulsTypes"
            case rateLimit = "RateLimit"
            case firstScanStartTime = "FirstScanStartTime"
            case scanStatus = "ScanStatus"
            case lastScanFinishTime = "LastScanFinishTime"
            case currentScanStartTime = "CurrentScanStartTime"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case appid = "Appid"
            case contentScanStatus = "ContentScanStatus"
        }
    }

    /// 监控任务中的站点信息。
    public struct MonitorMiniSite: TCOutputModel {
        /// 站点ID。
        public let siteId: UInt64?

        /// 站点Url。
        public let url: String?

        enum CodingKeys: String, CodingKey {
            case siteId = "SiteId"
            case url = "Url"
        }
    }

    /// 监控任务详细数据
    public struct MonitorsDetail: TCOutputModel {
        /// 监控任务基础信息。
        public let basic: Monitor?

        /// 监控任务包含的站点列表。
        public let sites: [MonitorMiniSite]?

        /// 监控任务包含的站点列表数量。
        public let siteNumber: UInt64?

        /// 监控任务包含的受漏洞威胁的站点列表。
        public let impactSites: [MonitorMiniSite]?

        /// 监控任务包含的受漏洞威胁的站点列表数量。
        public let impactSiteNumber: UInt64?

        /// 高风险漏洞数量。
        public let vulsHighNumber: UInt64?

        /// 中风险漏洞数量。
        public let vulsMiddleNumber: UInt64?

        /// 低风险漏洞数量。
        public let vulsLowNumber: UInt64?

        /// 提示数量。
        public let vulsNoticeNumber: UInt64?

        /// 监控任务包含的站点列表的平均扫描进度。
        public let progress: UInt64

        /// 扫描页面总数。
        public let pageCount: UInt64

        /// 内容检测数量。
        public let contentNumber: UInt64

        enum CodingKeys: String, CodingKey {
            case basic = "Basic"
            case sites = "Sites"
            case siteNumber = "SiteNumber"
            case impactSites = "ImpactSites"
            case impactSiteNumber = "ImpactSiteNumber"
            case vulsHighNumber = "VulsHighNumber"
            case vulsMiddleNumber = "VulsMiddleNumber"
            case vulsLowNumber = "VulsLowNumber"
            case vulsNoticeNumber = "VulsNoticeNumber"
            case progress = "Progress"
            case pageCount = "PageCount"
            case contentNumber = "ContentNumber"
        }
    }

    /// 站点数据
    public struct Site: TCOutputModel {
        /// 站点ID。
        public let id: UInt64?

        /// 监控任务ID，为0时表示未加入监控任务。
        public let monitorId: UInt64?

        /// 站点url。
        public let url: String?

        /// 站点名称。
        public let name: String?

        /// 验证状态：0-未验证；1-已验证；2-验证失效，待重新验证。
        public let verifyStatus: UInt64?

        /// 监测状态：0-未监测；1-监测中；2-暂停监测。
        public let monitorStatus: UInt64?

        /// 扫描状态：0-待扫描（无任何扫描结果）；1-扫描中（正在进行扫描）；2-已扫描（有扫描结果且不正在扫描）；3-扫描完成待同步结果。
        public let scanStatus: UInt64?

        /// 最近一次的AIScanner的扫描任务id，注意取消的情况。
        public let lastScanTaskId: UInt64?

        /// 最近一次扫描开始时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastScanStartTime: Date?

        /// 最近一次扫描完成时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastScanFinishTime: Date?

        /// 最近一次取消时间，取消即使用上一次扫描结果。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var lastScanCancelTime: Date?

        /// 最近一次扫描扫描的页面数。
        public let lastScanPageCount: UInt64?

        /// normal-正常扫描；deep-深度扫描。
        public let lastScanScannerType: String?

        /// 最近一次扫描高风险漏洞数量。
        public let lastScanVulsHighNum: UInt64?

        /// 最近一次扫描中风险漏洞数量。
        public let lastScanVulsMiddleNum: UInt64?

        /// 最近一次扫描低风险漏洞数量。
        public let lastScanVulsLowNum: UInt64?

        /// 最近一次扫描提示信息数量。
        public let lastScanVulsNoticeNum: UInt64?

        /// 记录添加时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdAt: Date?

        /// 记录最近修改时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedAt: Date?

        /// 速率限制，每秒发送X个HTTP请求。
        public let lastScanRateLimit: UInt64?

        /// 最近一次扫描漏洞总数量。
        public let lastScanVulsNum: UInt64?

        /// 最近一次扫描提示总数量
        public let lastScanNoticeNum: UInt64?

        /// 扫描进度，百分比整数
        public let progress: UInt64

        /// 云用户appid。
        public let appid: UInt64

        /// 云用户标识。
        public let uin: String

        /// 网站是否需要登录扫描：0-未知；-1-不需要；1-需要。
        public let needLogin: Int64

        /// 登录后的cookie。
        public let loginCookie: String

        /// 登录后的cookie是否有效：0-无效；1-有效。
        public let loginCookieValid: UInt64

        /// 用于测试cookie是否有效的URL。
        public let loginCheckUrl: String

        /// 用于测试cookie是否有效的关键字。
        public let loginCheckKw: String

        /// 禁止扫描器扫描的目录关键字。
        public let scanDisallow: String

        /// 访问网站的客户端标识。
        public let userAgent: String

        /// 内容检测状态：0-未检测；1-已检测；
        public let contentStatus: UInt64

        /// 最近一次扫描内容检测数量
        public let lastScanContentNum: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case monitorId = "MonitorId"
            case url = "Url"
            case name = "Name"
            case verifyStatus = "VerifyStatus"
            case monitorStatus = "MonitorStatus"
            case scanStatus = "ScanStatus"
            case lastScanTaskId = "LastScanTaskId"
            case lastScanStartTime = "LastScanStartTime"
            case lastScanFinishTime = "LastScanFinishTime"
            case lastScanCancelTime = "LastScanCancelTime"
            case lastScanPageCount = "LastScanPageCount"
            case lastScanScannerType = "LastScanScannerType"
            case lastScanVulsHighNum = "LastScanVulsHighNum"
            case lastScanVulsMiddleNum = "LastScanVulsMiddleNum"
            case lastScanVulsLowNum = "LastScanVulsLowNum"
            case lastScanVulsNoticeNum = "LastScanVulsNoticeNum"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case lastScanRateLimit = "LastScanRateLimit"
            case lastScanVulsNum = "LastScanVulsNum"
            case lastScanNoticeNum = "LastScanNoticeNum"
            case progress = "Progress"
            case appid = "Appid"
            case uin = "Uin"
            case needLogin = "NeedLogin"
            case loginCookie = "LoginCookie"
            case loginCookieValid = "LoginCookieValid"
            case loginCheckUrl = "LoginCheckUrl"
            case loginCheckKw = "LoginCheckKw"
            case scanDisallow = "ScanDisallow"
            case userAgent = "UserAgent"
            case contentStatus = "ContentStatus"
            case lastScanContentNum = "LastScanContentNum"
        }
    }

    /// 站点验证数据
    public struct SitesVerification: TCOutputModel {
        /// 根域名。
        public let domain: String?

        /// txt解析域名验证的name。
        public let txtName: String?

        /// txt解析域名验证的text。
        public let txtText: String?

        /// 验证有效期，在此之前有效。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validTo: Date?

        /// 验证状态：0-未验证；1-已验证；2-验证失效，待重新验证。
        public let verifyStatus: UInt64?

        /// CreatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdAt: Date?

        /// UpdatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedAt: Date?

        /// ID。
        public let id: UInt64

        /// 云用户appid
        public let appid: UInt64

        /// 用于验证站点的url，即访问该url获取验证数据。
        public let verifyUrl: String

        /// 获取验证验证文件的url。
        public let verifyFileUrl: String

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case txtName = "TxtName"
            case txtText = "TxtText"
            case validTo = "ValidTo"
            case verifyStatus = "VerifyStatus"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case id = "Id"
            case appid = "Appid"
            case verifyUrl = "VerifyUrl"
            case verifyFileUrl = "VerifyFileUrl"
        }
    }

    /// 漏洞数据
    public struct Vul: TCOutputModel {
        /// 漏洞ID。
        public let id: UInt64?

        /// 站点ID。
        public let siteId: UInt64?

        /// 扫描引擎的扫描任务ID。
        public let taskId: UInt64?

        /// 漏洞级别：high、middle、low、notice。
        public let level: String?

        /// 漏洞名称。
        public let name: String?

        /// 出现漏洞的url。
        public let url: String?

        /// 网址/细节。
        public let html: String?

        /// 漏洞类型。
        public let nickname: String?

        /// 危害说明。
        public let harm: String?

        /// 漏洞描述。
        public let describe: String?

        /// 解决方案。
        public let solution: String?

        /// 漏洞参考。
        public let from: String?

        /// 漏洞通过该参数攻击。
        public let parameter: String?

        /// CreatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdAt: Date?

        /// UpdatedAt。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedAt: Date?

        /// 是否已经添加误报，0-否，1-是。
        public let isReported: UInt64

        /// 云用户appid。
        public let appid: UInt64

        /// 云用户标识。
        public let uin: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case siteId = "SiteId"
            case taskId = "TaskId"
            case level = "Level"
            case name = "Name"
            case url = "Url"
            case html = "Html"
            case nickname = "Nickname"
            case harm = "Harm"
            case describe = "Describe"
            case solution = "Solution"
            case from = "From"
            case parameter = "Parameter"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
            case isReported = "IsReported"
            case appid = "Appid"
            case uin = "Uin"
        }
    }

    /// 用户漏洞数随时间变化统计数据
    public struct VulsTimeline: TCOutputModel {
        /// ID。
        public let id: UInt64

        /// 云用户appid。
        public let appid: UInt64

        /// 日期。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var date: Date

        /// 扫描页面总数量。
        public let pageCount: UInt64

        /// 已验证网站总数量。
        public let siteNum: UInt64

        /// 受影响的网站总数量。
        public let impactSiteNum: UInt64

        /// 高危漏洞总数量。
        public let vulsHighNum: UInt64

        /// 中危漏洞总数量。
        public let vulsMiddleNum: UInt64

        /// 低危漏洞总数量。
        public let vulsLowNum: UInt64

        /// 风险提示总数量
        public let vulsNoticeNum: UInt64

        /// 记录添加时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var createdAt: Date

        /// 记录最近修改时间。
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var updatedAt: Date

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case appid = "Appid"
            case date = "Date"
            case pageCount = "PageCount"
            case siteNum = "SiteNum"
            case impactSiteNum = "ImpactSiteNum"
            case vulsHighNum = "VulsHighNum"
            case vulsMiddleNum = "VulsMiddleNum"
            case vulsLowNum = "VulsLowNum"
            case vulsNoticeNum = "VulsNoticeNum"
            case createdAt = "CreatedAt"
            case updatedAt = "UpdatedAt"
        }
    }
}
