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
    public struct OperationDenied: TCDnspodErrorType {
        enum Code: String {
            case accessDenied = "OperationDenied.AccessDenied"
            case agentDenied = "OperationDenied.AgentDenied"
            case agentSubordinateDenied = "OperationDenied.AgentSubordinateDenied"
            case cancelBillNotAllowed = "OperationDenied.CancelBillNotAllowed"
            case deleteUsingRecordLineNotAllowed = "OperationDenied.DeleteUsingRecordLineNotAllowed"
            case domainOwnerAllowedOnly = "OperationDenied.DomainOwnerAllowedOnly"
            case ipInBlacklistNotAllowed = "OperationDenied.IPInBlacklistNotAllowed"
            case monitorCallbackNotEnabled = "OperationDenied.MonitorCallbackNotEnabled"
            case noPermissionToOperateDomain = "OperationDenied.NoPermissionToOperateDomain"
            case notAdmin = "OperationDenied.NotAdmin"
            case notAgent = "OperationDenied.NotAgent"
            case notGrantedByOwner = "OperationDenied.NotGrantedByOwner"
            case notManagedUser = "OperationDenied.NotManagedUser"
            case notOrderOwner = "OperationDenied.NotOrderOwner"
            case notResourceOwner = "OperationDenied.NotResourceOwner"
            case personalCouponNotAllowed = "OperationDenied.PersonalCouponNotAllowed"
            case postRequestAcceptOnly = "OperationDenied.PostRequestAcceptOnly"
            case resourceNotAllowRenew = "OperationDenied.ResourceNotAllowRenew"
            case vipDomainAllowed = "OperationDenied.VipDomainAllowed"
            case other = "OperationDenied"
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

        /// 您没有权限执行此操作。
        public static var accessDenied: OperationDenied {
            OperationDenied(.accessDenied)
        }

        /// 代理不能使用此功能。
        public static var agentDenied: OperationDenied {
            OperationDenied(.agentDenied)
        }

        /// 代理名下的用户不能使用此功能。
        public static var agentSubordinateDenied: OperationDenied {
            OperationDenied(.agentSubordinateDenied)
        }

        /// 此订单不能取消。
        public static var cancelBillNotAllowed: OperationDenied {
            OperationDenied(.cancelBillNotAllowed)
        }

        /// 该线路正在使用当中，不能删除。
        public static var deleteUsingRecordLineNotAllowed: OperationDenied {
            OperationDenied(.deleteUsingRecordLineNotAllowed)
        }

        /// 仅域名所有者可进行此操作。
        public static var domainOwnerAllowedOnly: OperationDenied {
            OperationDenied(.domainOwnerAllowedOnly)
        }

        /// 抱歉，不允许添加黑名单中的IP。
        public static var ipInBlacklistNotAllowed: OperationDenied {
            OperationDenied(.ipInBlacklistNotAllowed)
        }

        /// 抱歉，您的域名等级不支持D监控通知回调功能。
        public static var monitorCallbackNotEnabled: OperationDenied {
            OperationDenied(.monitorCallbackNotEnabled)
        }

        /// 当前域名无权限，请返回域名列表。
        public static var noPermissionToOperateDomain: OperationDenied {
            OperationDenied(.noPermissionToOperateDomain)
        }

        /// 您不是管理用户。
        public static var notAdmin: OperationDenied {
            OperationDenied(.notAdmin)
        }

        /// 您不是代理用户。
        public static var notAgent: OperationDenied {
            OperationDenied(.notAgent)
        }

        /// 您还没有获取到授权，无法执行此操作。
        public static var notGrantedByOwner: OperationDenied {
            OperationDenied(.notGrantedByOwner)
        }

        /// 不是您名下用户。
        public static var notManagedUser: OperationDenied {
            OperationDenied(.notManagedUser)
        }

        /// 您没有权限操作此订单。
        public static var notOrderOwner: OperationDenied {
            OperationDenied(.notOrderOwner)
        }

        /// 您没有权限操作此资源。
        public static var notResourceOwner: OperationDenied {
            OperationDenied(.notResourceOwner)
        }

        /// 此礼券为个人礼券，请使用企业礼券。
        public static var personalCouponNotAllowed: OperationDenied {
            OperationDenied(.personalCouponNotAllowed)
        }

        /// 只支持 POST 方法提交数据。
        public static var postRequestAcceptOnly: OperationDenied {
            OperationDenied(.postRequestAcceptOnly)
        }

        /// 该资源不允许续费。
        public static var resourceNotAllowRenew: OperationDenied {
            OperationDenied(.resourceNotAllowRenew)
        }

        /// 企业用户的域名需要升级到VIP才能解析。
        public static var vipDomainAllowed: OperationDenied {
            OperationDenied(.vipDomainAllowed)
        }

        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .accessDenied:
                code = .operationDenied_AccessDenied
            case .agentDenied:
                code = .operationDenied_AgentDenied
            case .agentSubordinateDenied:
                code = .operationDenied_AgentSubordinateDenied
            case .cancelBillNotAllowed:
                code = .operationDenied_CancelBillNotAllowed
            case .deleteUsingRecordLineNotAllowed:
                code = .operationDenied_DeleteUsingRecordLineNotAllowed
            case .domainOwnerAllowedOnly:
                code = .operationDenied_DomainOwnerAllowedOnly
            case .ipInBlacklistNotAllowed:
                code = .operationDenied_IPInBlacklistNotAllowed
            case .monitorCallbackNotEnabled:
                code = .operationDenied_MonitorCallbackNotEnabled
            case .noPermissionToOperateDomain:
                code = .operationDenied_NoPermissionToOperateDomain
            case .notAdmin:
                code = .operationDenied_NotAdmin
            case .notAgent:
                code = .operationDenied_NotAgent
            case .notGrantedByOwner:
                code = .operationDenied_NotGrantedByOwner
            case .notManagedUser:
                code = .operationDenied_NotManagedUser
            case .notOrderOwner:
                code = .operationDenied_NotOrderOwner
            case .notResourceOwner:
                code = .operationDenied_NotResourceOwner
            case .personalCouponNotAllowed:
                code = .operationDenied_PersonalCouponNotAllowed
            case .postRequestAcceptOnly:
                code = .operationDenied_PostRequestAcceptOnly
            case .resourceNotAllowRenew:
                code = .operationDenied_ResourceNotAllowRenew
            case .vipDomainAllowed:
                code = .operationDenied_VipDomainAllowed
            case .other:
                code = .operationDenied
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
