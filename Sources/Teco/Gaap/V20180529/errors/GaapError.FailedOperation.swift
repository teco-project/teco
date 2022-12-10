//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCGaapError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case accountBalanceInsufficient = "FailedOperation.AccountBalanceInsufficient"
            case actionIsDoing = "FailedOperation.ActionIsDoing"
            case actionOperateTooQuickly = "FailedOperation.ActionOperateTooQuickly"
            case belongDifferentGroup = "FailedOperation.BelongDifferentGroup"
            case certificateIsUsing = "FailedOperation.CertificateIsUsing"
            case createQosExceedLimit = "FailedOperation.CreateQosExceedLimit"
            case ctccTokenExpired = "FailedOperation.CTCCTokenExpired"
            case deleteProxyGroupProxyRemained = "FailedOperation.DeleteProxyGroupProxyRemained"
            case domainAlreadyExisted = "FailedOperation.DomainAlreadyExisted"
            case domainStatusNotInRunning = "FailedOperation.DomainStatusNotInRunning"
            case duplicatedRequest = "FailedOperation.DuplicatedRequest"
            case groupStatusNotInRuning = "FailedOperation.GroupStatusNotInRuning"
            case instanceStatusNotInRuning = "FailedOperation.InstanceStatusNotInRuning"
            case invalidListenerProtocol = "FailedOperation.InvalidListenerProtocol"
            case ipUnmatched = "FailedOperation.IPUnmatched"
            case limitNumofListener = "FailedOperation.LimitNumofListener"
            case limitNumofProxiesInGroup = "FailedOperation.LimitNumofProxiesInGroup"
            case limitNumofRules = "FailedOperation.LimitNumofRules"
            case limitRealServerNum = "FailedOperation.LimitRealServerNum"
            case listenerHasTask = "FailedOperation.ListenerHasTask"
            case listenerStatusError = "FailedOperation.ListenerStatusError"
            case migration = "FailedOperation.Migration"
            case noResourceBound = "FailedOperation.NoResourceBound"
            case nonStandardProxy = "FailedOperation.NonStandardProxy"
            case notSupportOldVersionProxy = "FailedOperation.NotSupportOldVersionProxy"
            case notSupportProxyGroup = "FailedOperation.NotSupportProxyGroup"
            case notSupportScalar = "FailedOperation.NotSupportScalar"
            case operateLimitNumofListener = "FailedOperation.OperateLimitNumofListener"
            case proxySecurityAlreadyClose = "FailedOperation.ProxySecurityAlreadyClose"
            case proxySecurityAlreadyOpen = "FailedOperation.ProxySecurityAlreadyOpen"
            case proxySecurityPolicyDefaultRule = "FailedOperation.ProxySecurityPolicyDefaultRule"
            case proxySecurityPolicyDuplicatedRule = "FailedOperation.ProxySecurityPolicyDuplicatedRule"
            case proxySecurityPolicyExisted = "FailedOperation.ProxySecurityPolicyExisted"
            case proxySecurityPolicyOperating = "FailedOperation.ProxySecurityPolicyOperating"
            case proxySellOut = "FailedOperation.ProxySellOut"
            case proxyStatusNotInRuning = "FailedOperation.ProxyStatusNotInRuning"
            case proxyVersionNotSupport = "FailedOperation.ProxyVersionNotSupport"
            case realServerAlreadyBound = "FailedOperation.RealServerAlreadyBound"
            case realServerNotInProject = "FailedOperation.RealServerNotInProject"
            case requestVendorTimeout = "FailedOperation.RequestVendorTimeout"
            case resourceCanNotAccess = "FailedOperation.ResourceCanNotAccess"
            case resourceHadBeenDone = "FailedOperation.ResourceHadBeenDone"
            case resourceNotFound = "FailedOperation.ResourceNotFound"
            case resourceUpgrading = "FailedOperation.ResourceUpgrading"
            case ruleAlreadyExisted = "FailedOperation.RuleAlreadyExisted"
            case sessionNotExist = "FailedOperation.SessionNotExist"
            case tagResourcesFailed = "FailedOperation.TagResourcesFailed"
            case unTagResourcesFailed = "FailedOperation.UnTagResourcesFailed"
            case userNotAuthenticated = "FailedOperation.UserNotAuthenticated"
            case userNotConfirmProtocol = "FailedOperation.UserNotConfirmProtocol"
            case userOutOfCoverage = "FailedOperation.UserOutOfCoverage"
            case vendorReturnError = "FailedOperation.VendorReturnError"
            case vendorServerError = "FailedOperation.VendorServerError"
            case other = "FailedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        /// 账户余额不足，无法创建该通道。
        public static var accountBalanceInsufficient: FailedOperation {
            FailedOperation(.accountBalanceInsufficient)
        }
        
        /// 操作正在执行中，请勿重复操作。
        public static var actionIsDoing: FailedOperation {
            FailedOperation(.actionIsDoing)
        }
        
        /// 接口操作太频繁，请稍后重试。
        public static var actionOperateTooQuickly: FailedOperation {
            FailedOperation(.actionOperateTooQuickly)
        }
        
        /// 该批通道归属于不同的通道组，无法批量操作。
        public static var belongDifferentGroup: FailedOperation {
            FailedOperation(.belongDifferentGroup)
        }
        
        /// 证书正在使用中，无法操作。
        public static var certificateIsUsing: FailedOperation {
            FailedOperation(.certificateIsUsing)
        }
        
        /// 相同加速间隔时间过短。
        public static var createQosExceedLimit: FailedOperation {
            FailedOperation(.createQosExceedLimit)
        }
        
        /// 中国电信加速token过期。
        public static var ctccTokenExpired: FailedOperation {
            FailedOperation(.ctccTokenExpired)
        }
        
        /// 通道组中存在通道，无法删除。
        public static var deleteProxyGroupProxyRemained: FailedOperation {
            FailedOperation(.deleteProxyGroupProxyRemained)
        }
        
        /// 该域名在监听器下已使用。
        public static var domainAlreadyExisted: FailedOperation {
            FailedOperation(.domainAlreadyExisted)
        }
        
        /// 域名状态为非运行状态，无法操作。
        public static var domainStatusNotInRunning: FailedOperation {
            FailedOperation(.domainStatusNotInRunning)
        }
        
        /// 重复的请求，请检查ClientToken的值。
        public static var duplicatedRequest: FailedOperation {
            FailedOperation(.duplicatedRequest)
        }
        
        /// 通道组状态为非运行状态，无法操作。
        public static var groupStatusNotInRuning: FailedOperation {
            FailedOperation(.groupStatusNotInRuning)
        }
        
        /// 通道状态为非运行状态，无法操作。
        public static var instanceStatusNotInRuning: FailedOperation {
            FailedOperation(.instanceStatusNotInRuning)
        }
        
        /// 无效的监听器协议。
        public static var invalidListenerProtocol: FailedOperation {
            FailedOperation(.invalidListenerProtocol)
        }
        
        /// 加速目标IP与绑定的通道IP不匹配。
        public static var ipUnmatched: FailedOperation {
            FailedOperation(.ipUnmatched)
        }
        
        /// 监听器数量超过限制。
        public static var limitNumofListener: FailedOperation {
            FailedOperation(.limitNumofListener)
        }
        
        /// 通道组下通道数量超过限制。
        public static var limitNumofProxiesInGroup: FailedOperation {
            FailedOperation(.limitNumofProxiesInGroup)
        }
        
        /// 转发规则数超过限制。
        public static var limitNumofRules: FailedOperation {
            FailedOperation(.limitNumofRules)
        }
        
        /// 绑定源站数量超过限制。
        public static var limitRealServerNum: FailedOperation {
            FailedOperation(.limitRealServerNum)
        }
        
        /// 监听器正在操作中，请勿重复操作。
        public static var listenerHasTask: FailedOperation {
            FailedOperation(.listenerHasTask)
        }
        
        /// 监听器当前状态无法支持该操作。
        public static var listenerStatusError: FailedOperation {
            FailedOperation(.listenerStatusError)
        }
        
        /// 加速通道在升级中，暂不支持配置变更，请提工单申请。
        public static var migration: FailedOperation {
            FailedOperation(.migration)
        }
        
        /// 该应用模版没有绑定通道。
        public static var noResourceBound: FailedOperation {
            FailedOperation(.noResourceBound)
        }
        
        /// 该通道为非标通道，限制所有写操作。
        ///
        /// 通道已锁定，无法配置，请联系腾讯云工程师或提交工单进行配置。
        public static var nonStandardProxy: FailedOperation {
            FailedOperation(.nonStandardProxy)
        }
        
        /// 仅支持Version2.0的通道。
        public static var notSupportOldVersionProxy: FailedOperation {
            FailedOperation(.notSupportOldVersionProxy)
        }
        
        /// 该操作不支持通道组。
        public static var notSupportProxyGroup: FailedOperation {
            FailedOperation(.notSupportProxyGroup)
        }
        
        /// 不支持配置变更。
        public static var notSupportScalar: FailedOperation {
            FailedOperation(.notSupportScalar)
        }
        
        /// 单次操作端口过多，超过数量上限。
        public static var operateLimitNumofListener: FailedOperation {
            FailedOperation(.operateLimitNumofListener)
        }
        
        /// 安全策略已关闭，请勿重复操作。
        public static var proxySecurityAlreadyClose: FailedOperation {
            FailedOperation(.proxySecurityAlreadyClose)
        }
        
        /// 安全策略已开启，请勿重复操作。
        public static var proxySecurityAlreadyOpen: FailedOperation {
            FailedOperation(.proxySecurityAlreadyOpen)
        }
        
        /// 添加规则失败：禁止拒绝默认的通道访问规则。
        public static var proxySecurityPolicyDefaultRule: FailedOperation {
            FailedOperation(.proxySecurityPolicyDefaultRule)
        }
        
        /// 添加规则失败：安全防护访问规则重复。
        public static var proxySecurityPolicyDuplicatedRule: FailedOperation {
            FailedOperation(.proxySecurityPolicyDuplicatedRule)
        }
        
        /// 安全策略已经存在，请勿重复创建。
        public static var proxySecurityPolicyExisted: FailedOperation {
            FailedOperation(.proxySecurityPolicyExisted)
        }
        
        /// 通道安全策略操作中。
        public static var proxySecurityPolicyOperating: FailedOperation {
            FailedOperation(.proxySecurityPolicyOperating)
        }
        
        /// 线路售罄或资源不足，请提工单申请。
        public static var proxySellOut: FailedOperation {
            FailedOperation(.proxySellOut)
        }
        
        /// 通道处于非运行状态，不能添加监听器。
        public static var proxyStatusNotInRuning: FailedOperation {
            FailedOperation(.proxyStatusNotInRuning)
        }
        
        /// 不支持该版本通道。
        public static var proxyVersionNotSupport: FailedOperation {
            FailedOperation(.proxyVersionNotSupport)
        }
        
        /// 已经绑定了源站，无法删除。
        public static var realServerAlreadyBound: FailedOperation {
            FailedOperation(.realServerAlreadyBound)
        }
        
        /// 源站不归属于该项目。
        public static var realServerNotInProject: FailedOperation {
            FailedOperation(.realServerNotInProject)
        }
        
        /// 请求运营商超时。
        public static var requestVendorTimeout: FailedOperation {
            FailedOperation(.requestVendorTimeout)
        }
        
        /// 该资源不可访问。
        public static var resourceCanNotAccess: FailedOperation {
            FailedOperation(.resourceCanNotAccess)
        }
        
        public static var resourceHadBeenDone: FailedOperation {
            FailedOperation(.resourceHadBeenDone)
        }
        
        /// 应用ID填写有误，请检查应用ID是否存在。
        public static var resourceNotFound: FailedOperation {
            FailedOperation(.resourceNotFound)
        }
        
        /// 资源升级中。
        public static var resourceUpgrading: FailedOperation {
            FailedOperation(.resourceUpgrading)
        }
        
        /// 规则已经存在。
        public static var ruleAlreadyExisted: FailedOperation {
            FailedOperation(.ruleAlreadyExisted)
        }
        
        /// Session不存在或已经被取消。
        public static var sessionNotExist: FailedOperation {
            FailedOperation(.sessionNotExist)
        }
        
        public static var tagResourcesFailed: FailedOperation {
            FailedOperation(.tagResourcesFailed)
        }
        
        public static var unTagResourcesFailed: FailedOperation {
            FailedOperation(.unTagResourcesFailed)
        }
        
        /// 用户未认证。
        public static var userNotAuthenticated: FailedOperation {
            FailedOperation(.userNotAuthenticated)
        }
        
        public static var userNotConfirmProtocol: FailedOperation {
            FailedOperation(.userNotConfirmProtocol)
        }
        
        /// 该用户不在运营商网络可加速范围内。
        public static var userOutOfCoverage: FailedOperation {
            FailedOperation(.userOutOfCoverage)
        }
        
        /// 运营商返回结果错误。
        public static var vendorReturnError: FailedOperation {
            FailedOperation(.vendorReturnError)
        }
        
        /// 运营商服务器临时错误。
        public static var vendorServerError: FailedOperation {
            FailedOperation(.vendorServerError)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCGaapError.FailedOperation: Equatable {
    public static func == (lhs: TCGaapError.FailedOperation, rhs: TCGaapError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGaapError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGaapError.FailedOperation {
    /// - Returns: ``TCGaapError`` that holds the same error and context.
    public func toGaapError() -> TCGaapError {
        guard let code = TCGaapError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCGaapError(code, context: self.context)
    }
}

extension TCGaapError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
