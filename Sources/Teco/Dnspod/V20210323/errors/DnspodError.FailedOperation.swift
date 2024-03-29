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
    public struct FailedOperation: TCDnspodErrorType {
        enum Code: String {
            case accountIsLocked = "FailedOperation.AccountIsLocked"
            case containsPersonalVip = "FailedOperation.ContainsPersonalVip"
            case couponForFreeDomain = "FailedOperation.CouponForFreeDomain"
            case couponNotSupported = "FailedOperation.CouponNotSupported"
            case couponTypeAlreadyUsed = "FailedOperation.CouponTypeAlreadyUsed"
            case domainExists = "FailedOperation.DomainExists"
            case domainInEnterpriseMailAccount = "FailedOperation.DomainInEnterpriseMailAccount"
            case domainIsKeyDomain = "FailedOperation.DomainIsKeyDomain"
            case domainIsLocked = "FailedOperation.DomainIsLocked"
            case domainIsPersonalType = "FailedOperation.DomainIsPersonalType"
            case domainIsSpam = "FailedOperation.DomainIsSpam"
            case domainIsVip = "FailedOperation.DomainIsVip"
            case domainNotInService = "FailedOperation.DomainNotInService"
            case domainOwnedByOtherUser = "FailedOperation.DomainOwnedByOtherUser"
            case eipCheckFailed = "FailedOperation.EipCheckFailed"
            case frequencyLimit = "FailedOperation.FrequencyLimit"
            case functionNotAllowedApply = "FailedOperation.FunctionNotAllowedApply"
            case getWhoisFailed = "FailedOperation.GetWhoisFailed"
            case insufficientBalance = "FailedOperation.InsufficientBalance"
            case loginAreaNotAllowed = "FailedOperation.LoginAreaNotAllowed"
            case loginFailed = "FailedOperation.LoginFailed"
            case loginTimeout = "FailedOperation.LoginTimeout"
            case mobileNotVerified = "FailedOperation.MobileNotVerified"
            case notBatchTaskOwner = "FailedOperation.NotBatchTaskOwner"
            case notDomainOwner = "FailedOperation.NotDomainOwner"
            case notRealNamedUser = "FailedOperation.NotRealNamedUser"
            case notResourceOwner = "FailedOperation.NotResourceOwner"
            case orderCanNotPay = "FailedOperation.OrderCanNotPay"
            case orderHasPaid = "FailedOperation.OrderHasPaid"
            case resourceNotBind = "FailedOperation.ResourceNotBind"
            case temporaryError = "FailedOperation.TemporaryError"
            case transferToEnterpriseDenied = "FailedOperation.TransferToEnterpriseDenied"
            case transferToPersonDenied = "FailedOperation.TransferToPersonDenied"
            case unknowError = "FailedOperation.UnknowError"
            case verifyingBillExists = "FailedOperation.VerifyingBillExists"
            case other = "FailedOperation"
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

        /// 抱歉，该帐户已经被锁定。
        public static var accountIsLocked: FailedOperation {
            FailedOperation(.accountIsLocked)
        }

        /// 您的帐号下包含个人豪华域名，不能直接升级，请联系销售。
        public static var containsPersonalVip: FailedOperation {
            FailedOperation(.containsPersonalVip)
        }

        /// 此优惠券只能被免费域名使用。
        public static var couponForFreeDomain: FailedOperation {
            FailedOperation(.couponForFreeDomain)
        }

        /// 您的帐户不满足使用此优惠券的条件。
        public static var couponNotSupported: FailedOperation {
            FailedOperation(.couponNotSupported)
        }

        /// 域名已经使用过该类型的礼券了，不能重复使用。
        public static var couponTypeAlreadyUsed: FailedOperation {
            FailedOperation(.couponTypeAlreadyUsed)
        }

        /// 该域名已在您的列表中，无需重复添加。
        public static var domainExists: FailedOperation {
            FailedOperation(.domainExists)
        }

        public static var domainInEnterpriseMailAccount: FailedOperation {
            FailedOperation(.domainInEnterpriseMailAccount)
        }

        /// 该域名为腾讯云 DNSPod 重点保护资源，为了避免误操作造成的业务影响，域名禁止自行操作删除。如果您确认需要删除域名，请先联系您的客户经理，我们将竭诚为您提供技术支持。
        public static var domainIsKeyDomain: FailedOperation {
            FailedOperation(.domainIsKeyDomain)
        }

        /// 锁定域名不能进行此操作。
        public static var domainIsLocked: FailedOperation {
            FailedOperation(.domainIsLocked)
        }

        /// 域名已升级为个人套餐，但目前位于企业账号，请与销售联系。
        public static var domainIsPersonalType: FailedOperation {
            FailedOperation(.domainIsPersonalType)
        }

        /// 封禁域名不能进行此操作。
        public static var domainIsSpam: FailedOperation {
            FailedOperation(.domainIsSpam)
        }

        /// VIP域名不能进行此操作。
        public static var domainIsVip: FailedOperation {
            FailedOperation(.domainIsVip)
        }

        /// 当前域名还未使用 DNSPod 的解析服务，我们无法获取解析量数据。
        public static var domainNotInService: FailedOperation {
            FailedOperation(.domainNotInService)
        }

        /// 该域名已被其他账号添加，可在域名列表中添加取回。
        public static var domainOwnedByOtherUser: FailedOperation {
            FailedOperation(.domainOwnedByOtherUser)
        }

        /// 校验公网 IP 发生异常。
        public static var eipCheckFailed: FailedOperation {
            FailedOperation(.eipCheckFailed)
        }

        public static var frequencyLimit: FailedOperation {
            FailedOperation(.frequencyLimit)
        }

        /// 此功能暂停申请，请稍候重试。
        public static var functionNotAllowedApply: FailedOperation {
            FailedOperation(.functionNotAllowedApply)
        }

        /// 获取不到域名信息，可能域名非法或网络故障，请稍后再试。
        public static var getWhoisFailed: FailedOperation {
            FailedOperation(.getWhoisFailed)
        }

        /// 账户余额不足。
        public static var insufficientBalance: FailedOperation {
            FailedOperation(.insufficientBalance)
        }

        /// 帐号异地登录，请求被拒绝。
        public static var loginAreaNotAllowed: FailedOperation {
            FailedOperation(.loginAreaNotAllowed)
        }

        /// 登录失败，请检查账号和密码是否正确。
        public static var loginFailed: FailedOperation {
            FailedOperation(.loginFailed)
        }

        /// 登录已经超时，请重新登录。
        public static var loginTimeout: FailedOperation {
            FailedOperation(.loginTimeout)
        }

        /// 用户手机没有通过验证。
        public static var mobileNotVerified: FailedOperation {
            FailedOperation(.mobileNotVerified)
        }

        /// 权限错误，您无法查看该任务的详情。
        public static var notBatchTaskOwner: FailedOperation {
            FailedOperation(.notBatchTaskOwner)
        }

        /// 域名不在您的名下。
        public static var notDomainOwner: FailedOperation {
            FailedOperation(.notDomainOwner)
        }

        /// 未实名认证用户，请先完成实名认证再操作。
        public static var notRealNamedUser: FailedOperation {
            FailedOperation(.notRealNamedUser)
        }

        /// 您没有权限操作此资源。
        public static var notResourceOwner: FailedOperation {
            FailedOperation(.notResourceOwner)
        }

        /// 您不能付款此订单。
        public static var orderCanNotPay: FailedOperation {
            FailedOperation(.orderCanNotPay)
        }

        /// 此订单已经付过款。
        public static var orderHasPaid: FailedOperation {
            FailedOperation(.orderHasPaid)
        }

        /// 资源未绑定域名。
        public static var resourceNotBind: FailedOperation {
            FailedOperation(.resourceNotBind)
        }

        /// 请求量统计数据暂时不可用，请稍后再试。
        public static var temporaryError: FailedOperation {
            FailedOperation(.temporaryError)
        }

        /// 不能转移到企业账号。
        public static var transferToEnterpriseDenied: FailedOperation {
            FailedOperation(.transferToEnterpriseDenied)
        }

        /// 不能转移到个人账号。
        public static var transferToPersonDenied: FailedOperation {
            FailedOperation(.transferToPersonDenied)
        }

        /// 操作未响应，请稍后重试。
        public static var unknowError: FailedOperation {
            FailedOperation(.unknowError)
        }

        /// 域名已经提交过订单并且正在审核中，请稍候。
        public static var verifyingBillExists: FailedOperation {
            FailedOperation(.verifyingBillExists)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .accountIsLocked:
                code = .failedOperation_AccountIsLocked
            case .containsPersonalVip:
                code = .failedOperation_ContainsPersonalVip
            case .couponForFreeDomain:
                code = .failedOperation_CouponForFreeDomain
            case .couponNotSupported:
                code = .failedOperation_CouponNotSupported
            case .couponTypeAlreadyUsed:
                code = .failedOperation_CouponTypeAlreadyUsed
            case .domainExists:
                code = .failedOperation_DomainExists
            case .domainInEnterpriseMailAccount:
                code = .failedOperation_DomainInEnterpriseMailAccount
            case .domainIsKeyDomain:
                code = .failedOperation_DomainIsKeyDomain
            case .domainIsLocked:
                code = .failedOperation_DomainIsLocked
            case .domainIsPersonalType:
                code = .failedOperation_DomainIsPersonalType
            case .domainIsSpam:
                code = .failedOperation_DomainIsSpam
            case .domainIsVip:
                code = .failedOperation_DomainIsVip
            case .domainNotInService:
                code = .failedOperation_DomainNotInService
            case .domainOwnedByOtherUser:
                code = .failedOperation_DomainOwnedByOtherUser
            case .eipCheckFailed:
                code = .failedOperation_EipCheckFailed
            case .frequencyLimit:
                code = .failedOperation_FrequencyLimit
            case .functionNotAllowedApply:
                code = .failedOperation_FunctionNotAllowedApply
            case .getWhoisFailed:
                code = .failedOperation_GetWhoisFailed
            case .insufficientBalance:
                code = .failedOperation_InsufficientBalance
            case .loginAreaNotAllowed:
                code = .failedOperation_LoginAreaNotAllowed
            case .loginFailed:
                code = .failedOperation_LoginFailed
            case .loginTimeout:
                code = .failedOperation_LoginTimeout
            case .mobileNotVerified:
                code = .failedOperation_MobileNotVerified
            case .notBatchTaskOwner:
                code = .failedOperation_NotBatchTaskOwner
            case .notDomainOwner:
                code = .failedOperation_NotDomainOwner
            case .notRealNamedUser:
                code = .failedOperation_NotRealNamedUser
            case .notResourceOwner:
                code = .failedOperation_NotResourceOwner
            case .orderCanNotPay:
                code = .failedOperation_OrderCanNotPay
            case .orderHasPaid:
                code = .failedOperation_OrderHasPaid
            case .resourceNotBind:
                code = .failedOperation_ResourceNotBind
            case .temporaryError:
                code = .failedOperation_TemporaryError
            case .transferToEnterpriseDenied:
                code = .failedOperation_TransferToEnterpriseDenied
            case .transferToPersonDenied:
                code = .failedOperation_TransferToPersonDenied
            case .unknowError:
                code = .failedOperation_UnknowError
            case .verifyingBillExists:
                code = .failedOperation_VerifyingBillExists
            case .other:
                code = .failedOperation
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
