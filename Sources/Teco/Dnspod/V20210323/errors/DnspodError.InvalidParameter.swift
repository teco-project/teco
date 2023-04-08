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

extension TCDnspodError {
    public struct InvalidParameter: TCDnspodErrorType {
        enum Code: String {
            case accountIsBanned = "InvalidParameter.AccountIsBanned"
            case actionInvalid = "InvalidParameter.ActionInvalid"
            case actionSuccess = "InvalidParameter.ActionSuccess"
            case activity = "InvalidParameter.Activity"
            case batchDomainCreateActionError = "InvalidParameter.BatchDomainCreateActionError"
            case batchRecordCreateActionError = "InvalidParameter.BatchRecordCreateActionError"
            case batchRecordModifyActionError = "InvalidParameter.BatchRecordModifyActionError"
            case batchRecordModifyActionInvalidValue = "InvalidParameter.BatchRecordModifyActionInvalidValue"
            case batchRecordRemoveActionError = "InvalidParameter.BatchRecordRemoveActionError"
            case batchRecordReplaceActionError = "InvalidParameter.BatchRecordReplaceActionError"
            case batchTaskCountLimit = "InvalidParameter.BatchTaskCountLimit"
            case batchTaskNotExist = "InvalidParameter.BatchTaskNotExist"
            case billNumberInvalid = "InvalidParameter.BillNumberInvalid"
            case browserNull = "InvalidParameter.BrowserNull"
            case common = "InvalidParameter.Common"
            case customMessage = "InvalidParameter.CustomMessage"
            case dataExpired = "InvalidParameter.DataExpired"
            case dataInvalid = "InvalidParameter.DataInvalid"
            case dealTypeInvalid = "InvalidParameter.DealTypeInvalid"
            case dnsDealDomainUpgraded = "InvalidParameter.DnsDealDomainUpgraded"
            case dnsDealLocked = "InvalidParameter.DnsDealLocked"
            case dnsInvalidDeal = "InvalidParameter.DnsInvalidDeal"
            case dnssecAddCnameError = "InvalidParameter.DnssecAddCnameError"
            case domainAliasExists = "InvalidParameter.DomainAliasExists"
            case domainAliasIdInvalid = "InvalidParameter.DomainAliasIdInvalid"
            case domainIdInvalid = "InvalidParameter.DomainIdInvalid"
            case domainInEffectOrInvalidated = "InvalidParameter.DomainInEffectOrInvalidated"
            case domainInvalid = "InvalidParameter.DomainInvalid"
            case domainIsAliaser = "InvalidParameter.DomainIsAliaser"
            case domainIsModifyingDns = "InvalidParameter.DomainIsModifyingDns"
            case domainIsNotlocked = "InvalidParameter.DomainIsNotlocked"
            case domainNotAllowedLock = "InvalidParameter.DomainNotAllowedLock"
            case domainNotAllowedModifyRecords = "InvalidParameter.DomainNotAllowedModifyRecords"
            case domainNotBeian = "InvalidParameter.DomainNotBeian"
            case domainNotReged = "InvalidParameter.DomainNotReged"
            case domainNotVip = "InvalidParameter.DomainNotVip"
            case domainRecordExist = "InvalidParameter.DomainRecordExist"
            case domainSelfNoCopy = "InvalidParameter.DomainSelfNoCopy"
            case domainTooLong = "InvalidParameter.DomainTooLong"
            case domainTypeInvalid = "InvalidParameter.DomainTypeInvalid"
            case domainsEmpty = "InvalidParameter.DomainsEmpty"
            case emailInvalid = "InvalidParameter.EmailInvalid"
            case emailNotVerified = "InvalidParameter.EmailNotVerified"
            case emailOrQqInvalid = "InvalidParameter.EmailOrQqInvalid"
            case emailSame = "InvalidParameter.EmailSame"
            case goodsChildTypeInvalid = "InvalidParameter.GoodsChildTypeInvalid"
            case goodsNumInvalid = "InvalidParameter.GoodsNumInvalid"
            case goodsTypeInvalid = "InvalidParameter.GoodsTypeInvalid"
            case gradeNotCopy = "InvalidParameter.GradeNotCopy"
            case groupIdInvalid = "InvalidParameter.GroupIdInvalid"
            case groupNameExists = "InvalidParameter.GroupNameExists"
            case groupNameInvalid = "InvalidParameter.GroupNameInvalid"
            case hasPendingApply = "InvalidParameter.HasPendingApply"
            case illegalNewDeal = "InvalidParameter.IllegalNewDeal"
            case invalidCoupon = "InvalidParameter.InvalidCoupon"
            case invalidDealName = "InvalidParameter.InvalidDealName"
            case invalidSecretId = "InvalidParameter.InvalidSecretId"
            case invalidSignature = "InvalidParameter.InvalidSignature"
            case invalidTime = "InvalidParameter.InvalidTime"
            case invalidWeight = "InvalidParameter.InvalidWeight"
            case ipsExceedLimit = "InvalidParameter.IpsExceedLimit"
            case jobGreaterThanLimit = "InvalidParameter.JobGreaterThanLimit"
            case lockDaysInvalid = "InvalidParameter.LockDaysInvalid"
            case loginTokenIdError = "InvalidParameter.LoginTokenIdError"
            case loginTokenNotExists = "InvalidParameter.LoginTokenNotExists"
            case loginTokenValidateFailed = "InvalidParameter.LoginTokenValidateFailed"
            case mobileNotVerified = "InvalidParameter.MobileNotVerified"
            case mxInvalid = "InvalidParameter.MxInvalid"
            case newPackageTypeInvalid = "InvalidParameter.NewPackageTypeInvalid"
            case offsetInvalid = "InvalidParameter.OffsetInvalid"
            case openidInvalid = "InvalidParameter.OpenidInvalid"
            case operateFailed = "InvalidParameter.OperateFailed"
            case operationIsTooFrequent = "InvalidParameter.OperationIsTooFrequent"
            case optypeNotSupported = "InvalidParameter.OptypeNotSupported"
            case otherAccountUnrealName = "InvalidParameter.OtherAccountUnrealName"
            case paramInvalid = "InvalidParameter.ParamInvalid"
            case paramsIllegal = "InvalidParameter.ParamsIllegal"
            case paramsMissing = "InvalidParameter.ParamsMissing"
            case permissionDenied = "InvalidParameter.PermissionDenied"
            case qcloudUinInvalid = "InvalidParameter.QcloudUinInvalid"
            case quhuiTxtRecordWait = "InvalidParameter.QuhuiTxtRecordWait"
            case realNameUser = "InvalidParameter.RealNameUser"
            case recordIdInvalid = "InvalidParameter.RecordIdInvalid"
            case recordLineInvalid = "InvalidParameter.RecordLineInvalid"
            case recordTypeInvalid = "InvalidParameter.RecordTypeInvalid"
            case recordValueInvalid = "InvalidParameter.RecordValueInvalid"
            case recordValueLengthInvalid = "InvalidParameter.RecordValueLengthInvalid"
            case recordsEmpty = "InvalidParameter.RecordsEmpty"
            case remarkLengthExceeded = "InvalidParameter.RemarkLengthExceeded"
            case remarkTooLong = "InvalidParameter.RemarkTooLong"
            case requestIpLimited = "InvalidParameter.RequestIpLimited"
            case resultMoreThan500 = "InvalidParameter.ResultMoreThan500"
            case sharedUsersUnrealName = "InvalidParameter.SharedUsersUnrealName"
            case statusCodeInvalid = "InvalidParameter.StatusCodeInvalid"
            case subdomainInvalid = "InvalidParameter.SubdomainInvalid"
            case taskNotCompleted = "InvalidParameter.TaskNotCompleted"
            case timeSpanInvalid = "InvalidParameter.TimeSpanInvalid"
            case timestampExpired = "InvalidParameter.TimestampExpired"
            case tooManyInvalidDomains = "InvalidParameter.TooManyInvalidDomains"
            case toolsDomainInvalid = "InvalidParameter.ToolsDomainInvalid"
            case unLockCodeExpired = "InvalidParameter.UnLockCodeExpired"
            case unLockCodeInvalid = "InvalidParameter.UnLockCodeInvalid"
            case unrealNameUser = "InvalidParameter.UnrealNameUser"
            case urlValueIllegal = "InvalidParameter.UrlValueIllegal"
            case userAlreadyLocked = "InvalidParameter.UserAlreadyLocked"
            case userAreaInvalid = "InvalidParameter.UserAreaInvalid"
            case userNotExists = "InvalidParameter.UserNotExists"
            case uuidInvalid = "InvalidParameter.UuidInvalid"
            case other = "InvalidParameter"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 您的账号已被系统封禁，如果您有任何疑问请与我们联系。
        public static var accountIsBanned: InvalidParameter {
            InvalidParameter(.accountIsBanned)
        }

        /// 无效的操作。
        public static var actionInvalid: InvalidParameter {
            InvalidParameter(.actionInvalid)
        }

        /// 操作已经成功完成。
        public static var actionSuccess: InvalidParameter {
            InvalidParameter(.actionSuccess)
        }

        /// 用户未实名。
        public static var activity: InvalidParameter {
            InvalidParameter(.activity)
        }

        /// 创建批量域名任务失败，原因：内部错误。
        public static var batchDomainCreateActionError: InvalidParameter {
            InvalidParameter(.batchDomainCreateActionError)
        }

        /// 创建批量记录任务失败，原因：内部错误。
        public static var batchRecordCreateActionError: InvalidParameter {
            InvalidParameter(.batchRecordCreateActionError)
        }

        /// 批量修改记录任务失败，原因：内部错误。
        public static var batchRecordModifyActionError: InvalidParameter {
            InvalidParameter(.batchRecordModifyActionError)
        }

        /// 记录值无效。
        public static var batchRecordModifyActionInvalidValue: InvalidParameter {
            InvalidParameter(.batchRecordModifyActionInvalidValue)
        }

        /// 批量删除记录任务失败，原因：内部错误。
        public static var batchRecordRemoveActionError: InvalidParameter {
            InvalidParameter(.batchRecordRemoveActionError)
        }

        /// 批量替换记录任务失败，原因：内部错误。
        public static var batchRecordReplaceActionError: InvalidParameter {
            InvalidParameter(.batchRecordReplaceActionError)
        }

        /// 超过批量任务数上限。
        public static var batchTaskCountLimit: InvalidParameter {
            InvalidParameter(.batchTaskCountLimit)
        }

        /// 任务不存在，无法获取任务详情。
        public static var batchTaskNotExist: InvalidParameter {
            InvalidParameter(.batchTaskNotExist)
        }

        /// 订单号码不正确。
        public static var billNumberInvalid: InvalidParameter {
            InvalidParameter(.billNumberInvalid)
        }

        /// 浏览器字段为空。
        public static var browserNull: InvalidParameter {
            InvalidParameter(.browserNull)
        }

        /// 您操作过于频繁，请稍后重试。
        public static var common: InvalidParameter {
            InvalidParameter(.common)
        }

        /// 自定义错误信息。
        public static var customMessage: InvalidParameter {
            InvalidParameter(.customMessage)
        }

        /// 数据过期,请重新提交。
        public static var dataExpired: InvalidParameter {
            InvalidParameter(.dataExpired)
        }

        /// data 无效。
        public static var dataInvalid: InvalidParameter {
            InvalidParameter(.dataInvalid)
        }

        /// 订单类型无效。
        public static var dealTypeInvalid: InvalidParameter {
            InvalidParameter(.dealTypeInvalid)
        }

        /// 域名已升级至付费套餐，无法完成下单。
        public static var dnsDealDomainUpgraded: InvalidParameter {
            InvalidParameter(.dnsDealDomainUpgraded)
        }

        /// 相关服务已有其他未完成的订单，请先将原订单支付或取消后，才可提交新的订单。
        public static var dnsDealLocked: InvalidParameter {
            InvalidParameter(.dnsDealLocked)
        }

        /// 订单数据非法。
        public static var dnsInvalidDeal: InvalidParameter {
            InvalidParameter(.dnsInvalidDeal)
        }

        /// 该域名开启了 DNSSEC，不允许添加 @ 子域名 CNAME、显性 URL 或者隐性 URL 记录。
        public static var dnssecAddCnameError: InvalidParameter {
            InvalidParameter(.dnssecAddCnameError)
        }

        /// 别名已经存在。
        public static var domainAliasExists: InvalidParameter {
            InvalidParameter(.domainAliasExists)
        }

        /// 别名编号错误。
        public static var domainAliasIdInvalid: InvalidParameter {
            InvalidParameter(.domainAliasIdInvalid)
        }

        /// 域名编号不正确。
        public static var domainIdInvalid: InvalidParameter {
            InvalidParameter(.domainIdInvalid)
        }

        /// 不允许操作生效中或失效中的域名。
        public static var domainInEffectOrInvalidated: InvalidParameter {
            InvalidParameter(.domainInEffectOrInvalidated)
        }

        /// 域名不正确，请输入主域名，如 dnspod.cn。
        public static var domainInvalid: InvalidParameter {
            InvalidParameter(.domainInvalid)
        }

        /// 此域名是其它域名的别名。
        public static var domainIsAliaser: InvalidParameter {
            InvalidParameter(.domainIsAliaser)
        }

        /// 该域名已有同类型操作未完成，无法执行该操作。
        public static var domainIsModifyingDns: InvalidParameter {
            InvalidParameter(.domainIsModifyingDns)
        }

        /// 域名没有锁定。
        public static var domainIsNotlocked: InvalidParameter {
            InvalidParameter(.domainIsNotlocked)
        }

        /// 暂停域名不支持锁定。
        public static var domainNotAllowedLock: InvalidParameter {
            InvalidParameter(.domainNotAllowedLock)
        }

        /// 处于生效中/失效中的域名，不允许变更解析记录。
        public static var domainNotAllowedModifyRecords: InvalidParameter {
            InvalidParameter(.domainNotAllowedModifyRecords)
        }

        /// 该域名未备案，无法添加 URL 记录。
        public static var domainNotBeian: InvalidParameter {
            InvalidParameter(.domainNotBeian)
        }

        /// 域名还没有注册，无法添加。
        public static var domainNotReged: InvalidParameter {
            InvalidParameter(.domainNotReged)
        }

        /// 原域名不是VIP域名，无法替换。
        public static var domainNotVip: InvalidParameter {
            InvalidParameter(.domainNotVip)
        }

        /// 记录已经存在，无需再次添加。
        public static var domainRecordExist: InvalidParameter {
            InvalidParameter(.domainRecordExist)
        }

        /// 域名自己无需进行复制。
        public static var domainSelfNoCopy: InvalidParameter {
            InvalidParameter(.domainSelfNoCopy)
        }

        /// 域名过长。
        public static var domainTooLong: InvalidParameter {
            InvalidParameter(.domainTooLong)
        }

        /// 域名类型错误。
        public static var domainTypeInvalid: InvalidParameter {
            InvalidParameter(.domainTypeInvalid)
        }

        /// 没有提交任何域名。
        public static var domainsEmpty: InvalidParameter {
            InvalidParameter(.domainsEmpty)
        }

        /// 邮箱地址不正确。
        public static var emailInvalid: InvalidParameter {
            InvalidParameter(.emailInvalid)
        }

        /// 抱歉，您的账户还没有通过邮箱验证。
        public static var emailNotVerified: InvalidParameter {
            InvalidParameter(.emailNotVerified)
        }

        /// 请输入合法的邮箱或者uin。
        public static var emailOrQqInvalid: InvalidParameter {
            InvalidParameter(.emailOrQqInvalid)
        }

        /// 域名已经在该账号下。
        public static var emailSame: InvalidParameter {
            InvalidParameter(.emailSame)
        }

        /// 商品子类型无效。
        public static var goodsChildTypeInvalid: InvalidParameter {
            InvalidParameter(.goodsChildTypeInvalid)
        }

        /// 商品数量无效。
        public static var goodsNumInvalid: InvalidParameter {
            InvalidParameter(.goodsNumInvalid)
        }

        /// 商品类型无效。
        public static var goodsTypeInvalid: InvalidParameter {
            InvalidParameter(.goodsTypeInvalid)
        }

        /// 当前域名等级低于源域名的等级，无法进行复制。
        public static var gradeNotCopy: InvalidParameter {
            InvalidParameter(.gradeNotCopy)
        }

        /// 分组编号不正确。
        public static var groupIdInvalid: InvalidParameter {
            InvalidParameter(.groupIdInvalid)
        }

        /// 同名分组已经存在。
        public static var groupNameExists: InvalidParameter {
            InvalidParameter(.groupNameExists)
        }

        /// 分组名为1-17个字符。
        public static var groupNameInvalid: InvalidParameter {
            InvalidParameter(.groupNameInvalid)
        }

        /// 您已经提交过申请并且正在审核中，请耐心等候。
        public static var hasPendingApply: InvalidParameter {
            InvalidParameter(.hasPendingApply)
        }

        /// 该订单存在冲突或参数有误，无法完成支付，请重新购买。
        public static var illegalNewDeal: InvalidParameter {
            InvalidParameter(.illegalNewDeal)
        }

        /// 礼券代码无效。
        public static var invalidCoupon: InvalidParameter {
            InvalidParameter(.invalidCoupon)
        }

        /// 请输入正确的订单号。
        public static var invalidDealName: InvalidParameter {
            InvalidParameter(.invalidDealName)
        }

        /// 无效密钥 ID。
        public static var invalidSecretId: InvalidParameter {
            InvalidParameter(.invalidSecretId)
        }

        /// 无效签名。
        public static var invalidSignature: InvalidParameter {
            InvalidParameter(.invalidSignature)
        }

        /// 无效的时间。
        public static var invalidTime: InvalidParameter {
            InvalidParameter(.invalidTime)
        }

        /// 权重不合法。请输入0~100的整数。
        public static var invalidWeight: InvalidParameter {
            InvalidParameter(.invalidWeight)
        }

        /// ips 过长。
        public static var ipsExceedLimit: InvalidParameter {
            InvalidParameter(.ipsExceedLimit)
        }

        /// 单次任务数量超过上限。
        public static var jobGreaterThanLimit: InvalidParameter {
            InvalidParameter(.jobGreaterThanLimit)
        }

        /// 锁定天数不正确。
        public static var lockDaysInvalid: InvalidParameter {
            InvalidParameter(.lockDaysInvalid)
        }

        /// Token 的 ID 不正确。
        public static var loginTokenIdError: InvalidParameter {
            InvalidParameter(.loginTokenIdError)
        }

        /// 传入的 Token 不存在。
        public static var loginTokenNotExists: InvalidParameter {
            InvalidParameter(.loginTokenNotExists)
        }

        /// Token 验证失败。
        public static var loginTokenValidateFailed: InvalidParameter {
            InvalidParameter(.loginTokenValidateFailed)
        }

        /// 抱歉，您的账户还没有通过手机验证。
        public static var mobileNotVerified: InvalidParameter {
            InvalidParameter(.mobileNotVerified)
        }

        /// MX优先级不正确。
        public static var mxInvalid: InvalidParameter {
            InvalidParameter(.mxInvalid)
        }

        /// 新套餐类型无效。
        public static var newPackageTypeInvalid: InvalidParameter {
            InvalidParameter(.newPackageTypeInvalid)
        }

        /// 分页起始数量错误。
        public static var offsetInvalid: InvalidParameter {
            InvalidParameter(.offsetInvalid)
        }

        /// 无效的openid。
        public static var openidInvalid: InvalidParameter {
            InvalidParameter(.openidInvalid)
        }

        /// 操作失败，请稍候再试。
        public static var operateFailed: InvalidParameter {
            InvalidParameter(.operateFailed)
        }

        /// 当前操作过于频繁，请 1 分钟后重试。
        public static var operationIsTooFrequent: InvalidParameter {
            InvalidParameter(.operationIsTooFrequent)
        }

        /// 不支持的操作类型。
        public static var optypeNotSupported: InvalidParameter {
            InvalidParameter(.optypeNotSupported)
        }

        /// 对方账号未实名认证，请先完成实名认证再操作。
        public static var otherAccountUnrealName: InvalidParameter {
            InvalidParameter(.otherAccountUnrealName)
        }

        /// param 格式错误。
        public static var paramInvalid: InvalidParameter {
            InvalidParameter(.paramInvalid)
        }

        /// 参数不合法，请求被拒绝。
        public static var paramsIllegal: InvalidParameter {
            InvalidParameter(.paramsIllegal)
        }

        /// 参数错误。
        public static var paramsMissing: InvalidParameter {
            InvalidParameter(.paramsMissing)
        }

        /// 鉴权失败。
        public static var permissionDenied: InvalidParameter {
            InvalidParameter(.permissionDenied)
        }

        /// 用户UIN无效。
        public static var qcloudUinInvalid: InvalidParameter {
            InvalidParameter(.qcloudUinInvalid)
        }

        /// TXT 记录未设置或暂未生效，请稍后重试。
        public static var quhuiTxtRecordWait: InvalidParameter {
            InvalidParameter(.quhuiTxtRecordWait)
        }

        /// 已实名用户。
        public static var realNameUser: InvalidParameter {
            InvalidParameter(.realNameUser)
        }

        /// 记录编号错误。
        public static var recordIdInvalid: InvalidParameter {
            InvalidParameter(.recordIdInvalid)
        }

        /// 记录线路不正确。
        public static var recordLineInvalid: InvalidParameter {
            InvalidParameter(.recordLineInvalid)
        }

        /// 记录类型不正确。
        public static var recordTypeInvalid: InvalidParameter {
            InvalidParameter(.recordTypeInvalid)
        }

        /// 记录的值不正确。
        public static var recordValueInvalid: InvalidParameter {
            InvalidParameter(.recordValueInvalid)
        }

        /// 解析记录值过长。
        public static var recordValueLengthInvalid: InvalidParameter {
            InvalidParameter(.recordValueLengthInvalid)
        }

        /// 没有提交任何记录。
        public static var recordsEmpty: InvalidParameter {
            InvalidParameter(.recordsEmpty)
        }

        /// 备注信息超出字符限制。
        public static var remarkLengthExceeded: InvalidParameter {
            InvalidParameter(.remarkLengthExceeded)
        }

        /// 备注过长（不能超过200个字）。
        public static var remarkTooLong: InvalidParameter {
            InvalidParameter(.remarkTooLong)
        }

        /// 您的IP非法，请求被拒绝。
        public static var requestIpLimited: InvalidParameter {
            InvalidParameter(.requestIpLimited)
        }

        /// 搜索结果大于500条，请增加关键字。
        public static var resultMoreThan500: InvalidParameter {
            InvalidParameter(.resultMoreThan500)
        }

        /// 共享用户中包含未实名认证用户。
        public static var sharedUsersUnrealName: InvalidParameter {
            InvalidParameter(.sharedUsersUnrealName)
        }

        /// 状态代码不正确。
        public static var statusCodeInvalid: InvalidParameter {
            InvalidParameter(.statusCodeInvalid)
        }

        /// 子域名不正确。
        public static var subdomainInvalid: InvalidParameter {
            InvalidParameter(.subdomainInvalid)
        }

        /// 任务未完成。
        public static var taskNotCompleted: InvalidParameter {
            InvalidParameter(.taskNotCompleted)
        }

        /// 时长无效。
        public static var timeSpanInvalid: InvalidParameter {
            InvalidParameter(.timeSpanInvalid)
        }

        /// 时间戳已过期。
        public static var timestampExpired: InvalidParameter {
            InvalidParameter(.timestampExpired)
        }

        /// 当前帐号下的无效域名过多，暂时无法使用该功能。请将已有域名的 DNS 服务器正确指向 DNSPod 之后，再尝试添加。
        public static var tooManyInvalidDomains: InvalidParameter {
            InvalidParameter(.tooManyInvalidDomains)
        }

        /// 域名无效。
        public static var toolsDomainInvalid: InvalidParameter {
            InvalidParameter(.toolsDomainInvalid)
        }

        /// 解锁代码已失效。
        public static var unLockCodeExpired: InvalidParameter {
            InvalidParameter(.unLockCodeExpired)
        }

        /// 解锁代码不正确。
        public static var unLockCodeInvalid: InvalidParameter {
            InvalidParameter(.unLockCodeInvalid)
        }

        /// 未实名认证用户，请先完成实名认证再操作。
        public static var unrealNameUser: InvalidParameter {
            InvalidParameter(.unrealNameUser)
        }

        /// 很抱歉，您要添加的URL的内容不符合DNSPod解析服务条款，URL添加/启用失败，如需帮助请联系技术支持。
        public static var urlValueIllegal: InvalidParameter {
            InvalidParameter(.urlValueIllegal)
        }

        /// 账号已经被锁定。
        public static var userAlreadyLocked: InvalidParameter {
            InvalidParameter(.userAlreadyLocked)
        }

        /// 对方账户非国内站用户。
        public static var userAreaInvalid: InvalidParameter {
            InvalidParameter(.userAreaInvalid)
        }

        /// 用户不存在。
        public static var userNotExists: InvalidParameter {
            InvalidParameter(.userNotExists)
        }

        /// 无效的uuid。
        public static var uuidInvalid: InvalidParameter {
            InvalidParameter(.uuidInvalid)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .accountIsBanned:
                code = .invalidParameter_AccountIsBanned
            case .actionInvalid:
                code = .invalidParameter_ActionInvalid
            case .actionSuccess:
                code = .invalidParameter_ActionSuccess
            case .activity:
                code = .invalidParameter_Activity
            case .batchDomainCreateActionError:
                code = .invalidParameter_BatchDomainCreateActionError
            case .batchRecordCreateActionError:
                code = .invalidParameter_BatchRecordCreateActionError
            case .batchRecordModifyActionError:
                code = .invalidParameter_BatchRecordModifyActionError
            case .batchRecordModifyActionInvalidValue:
                code = .invalidParameter_BatchRecordModifyActionInvalidValue
            case .batchRecordRemoveActionError:
                code = .invalidParameter_BatchRecordRemoveActionError
            case .batchRecordReplaceActionError:
                code = .invalidParameter_BatchRecordReplaceActionError
            case .batchTaskCountLimit:
                code = .invalidParameter_BatchTaskCountLimit
            case .batchTaskNotExist:
                code = .invalidParameter_BatchTaskNotExist
            case .billNumberInvalid:
                code = .invalidParameter_BillNumberInvalid
            case .browserNull:
                code = .invalidParameter_BrowserNull
            case .common:
                code = .invalidParameter_Common
            case .customMessage:
                code = .invalidParameter_CustomMessage
            case .dataExpired:
                code = .invalidParameter_DataExpired
            case .dataInvalid:
                code = .invalidParameter_DataInvalid
            case .dealTypeInvalid:
                code = .invalidParameter_DealTypeInvalid
            case .dnsDealDomainUpgraded:
                code = .invalidParameter_DnsDealDomainUpgraded
            case .dnsDealLocked:
                code = .invalidParameter_DnsDealLocked
            case .dnsInvalidDeal:
                code = .invalidParameter_DnsInvalidDeal
            case .dnssecAddCnameError:
                code = .invalidParameter_DnssecAddCnameError
            case .domainAliasExists:
                code = .invalidParameter_DomainAliasExists
            case .domainAliasIdInvalid:
                code = .invalidParameter_DomainAliasIdInvalid
            case .domainIdInvalid:
                code = .invalidParameter_DomainIdInvalid
            case .domainInEffectOrInvalidated:
                code = .invalidParameter_DomainInEffectOrInvalidated
            case .domainInvalid:
                code = .invalidParameter_DomainInvalid
            case .domainIsAliaser:
                code = .invalidParameter_DomainIsAliaser
            case .domainIsModifyingDns:
                code = .invalidParameter_DomainIsModifyingDns
            case .domainIsNotlocked:
                code = .invalidParameter_DomainIsNotlocked
            case .domainNotAllowedLock:
                code = .invalidParameter_DomainNotAllowedLock
            case .domainNotAllowedModifyRecords:
                code = .invalidParameter_DomainNotAllowedModifyRecords
            case .domainNotBeian:
                code = .invalidParameter_DomainNotBeian
            case .domainNotReged:
                code = .invalidParameter_DomainNotReged
            case .domainNotVip:
                code = .invalidParameter_DomainNotVip
            case .domainRecordExist:
                code = .invalidParameter_DomainRecordExist
            case .domainSelfNoCopy:
                code = .invalidParameter_DomainSelfNoCopy
            case .domainTooLong:
                code = .invalidParameter_DomainTooLong
            case .domainTypeInvalid:
                code = .invalidParameter_DomainTypeInvalid
            case .domainsEmpty:
                code = .invalidParameter_DomainsEmpty
            case .emailInvalid:
                code = .invalidParameter_EmailInvalid
            case .emailNotVerified:
                code = .invalidParameter_EmailNotVerified
            case .emailOrQqInvalid:
                code = .invalidParameter_EmailOrQqInvalid
            case .emailSame:
                code = .invalidParameter_EmailSame
            case .goodsChildTypeInvalid:
                code = .invalidParameter_GoodsChildTypeInvalid
            case .goodsNumInvalid:
                code = .invalidParameter_GoodsNumInvalid
            case .goodsTypeInvalid:
                code = .invalidParameter_GoodsTypeInvalid
            case .gradeNotCopy:
                code = .invalidParameter_GradeNotCopy
            case .groupIdInvalid:
                code = .invalidParameter_GroupIdInvalid
            case .groupNameExists:
                code = .invalidParameter_GroupNameExists
            case .groupNameInvalid:
                code = .invalidParameter_GroupNameInvalid
            case .hasPendingApply:
                code = .invalidParameter_HasPendingApply
            case .illegalNewDeal:
                code = .invalidParameter_IllegalNewDeal
            case .invalidCoupon:
                code = .invalidParameter_InvalidCoupon
            case .invalidDealName:
                code = .invalidParameter_InvalidDealName
            case .invalidSecretId:
                code = .invalidParameter_InvalidSecretId
            case .invalidSignature:
                code = .invalidParameter_InvalidSignature
            case .invalidTime:
                code = .invalidParameter_InvalidTime
            case .invalidWeight:
                code = .invalidParameter_InvalidWeight
            case .ipsExceedLimit:
                code = .invalidParameter_IpsExceedLimit
            case .jobGreaterThanLimit:
                code = .invalidParameter_JobGreaterThanLimit
            case .lockDaysInvalid:
                code = .invalidParameter_LockDaysInvalid
            case .loginTokenIdError:
                code = .invalidParameter_LoginTokenIdError
            case .loginTokenNotExists:
                code = .invalidParameter_LoginTokenNotExists
            case .loginTokenValidateFailed:
                code = .invalidParameter_LoginTokenValidateFailed
            case .mobileNotVerified:
                code = .invalidParameter_MobileNotVerified
            case .mxInvalid:
                code = .invalidParameter_MxInvalid
            case .newPackageTypeInvalid:
                code = .invalidParameter_NewPackageTypeInvalid
            case .offsetInvalid:
                code = .invalidParameter_OffsetInvalid
            case .openidInvalid:
                code = .invalidParameter_OpenidInvalid
            case .operateFailed:
                code = .invalidParameter_OperateFailed
            case .operationIsTooFrequent:
                code = .invalidParameter_OperationIsTooFrequent
            case .optypeNotSupported:
                code = .invalidParameter_OptypeNotSupported
            case .otherAccountUnrealName:
                code = .invalidParameter_OtherAccountUnrealName
            case .paramInvalid:
                code = .invalidParameter_ParamInvalid
            case .paramsIllegal:
                code = .invalidParameter_ParamsIllegal
            case .paramsMissing:
                code = .invalidParameter_ParamsMissing
            case .permissionDenied:
                code = .invalidParameter_PermissionDenied
            case .qcloudUinInvalid:
                code = .invalidParameter_QcloudUinInvalid
            case .quhuiTxtRecordWait:
                code = .invalidParameter_QuhuiTxtRecordWait
            case .realNameUser:
                code = .invalidParameter_RealNameUser
            case .recordIdInvalid:
                code = .invalidParameter_RecordIdInvalid
            case .recordLineInvalid:
                code = .invalidParameter_RecordLineInvalid
            case .recordTypeInvalid:
                code = .invalidParameter_RecordTypeInvalid
            case .recordValueInvalid:
                code = .invalidParameter_RecordValueInvalid
            case .recordValueLengthInvalid:
                code = .invalidParameter_RecordValueLengthInvalid
            case .recordsEmpty:
                code = .invalidParameter_RecordsEmpty
            case .remarkLengthExceeded:
                code = .invalidParameter_RemarkLengthExceeded
            case .remarkTooLong:
                code = .invalidParameter_RemarkTooLong
            case .requestIpLimited:
                code = .invalidParameter_RequestIpLimited
            case .resultMoreThan500:
                code = .invalidParameter_ResultMoreThan500
            case .sharedUsersUnrealName:
                code = .invalidParameter_SharedUsersUnrealName
            case .statusCodeInvalid:
                code = .invalidParameter_StatusCodeInvalid
            case .subdomainInvalid:
                code = .invalidParameter_SubdomainInvalid
            case .taskNotCompleted:
                code = .invalidParameter_TaskNotCompleted
            case .timeSpanInvalid:
                code = .invalidParameter_TimeSpanInvalid
            case .timestampExpired:
                code = .invalidParameter_TimestampExpired
            case .tooManyInvalidDomains:
                code = .invalidParameter_TooManyInvalidDomains
            case .toolsDomainInvalid:
                code = .invalidParameter_ToolsDomainInvalid
            case .unLockCodeExpired:
                code = .invalidParameter_UnLockCodeExpired
            case .unLockCodeInvalid:
                code = .invalidParameter_UnLockCodeInvalid
            case .unrealNameUser:
                code = .invalidParameter_UnrealNameUser
            case .urlValueIllegal:
                code = .invalidParameter_UrlValueIllegal
            case .userAlreadyLocked:
                code = .invalidParameter_UserAlreadyLocked
            case .userAreaInvalid:
                code = .invalidParameter_UserAreaInvalid
            case .userNotExists:
                code = .invalidParameter_UserNotExists
            case .uuidInvalid:
                code = .invalidParameter_UuidInvalid
            case .other:
                code = .invalidParameter
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
