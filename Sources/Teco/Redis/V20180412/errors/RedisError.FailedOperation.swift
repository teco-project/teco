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

extension TCRedisError {
    public struct FailedOperation: TCRedisErrorType {
        enum Code: String {
            case addInstanceInfoFailed = "FailedOperation.AddInstanceInfoFailed"
            case associateSecurityGroupsFailed = "FailedOperation.AssociateSecurityGroupsFailed"
            case clearInstanceInfoFailed = "FailedOperation.ClearInstanceInfoFailed"
            case commitFlowError = "FailedOperation.CommitFlowError"
            case disassociateSecurityGroupsFailed = "FailedOperation.DisassociateSecurityGroupsFailed"
            case dtsStatusAbnormal = "FailedOperation.DtsStatusAbnormal"
            case flowNotExists = "FailedOperation.FlowNotExists"
            case getSecurityGroupDetailFailed = "FailedOperation.GetSecurityGroupDetailFailed"
            case payFailed = "FailedOperation.PayFailed"
            case redoFlowFailed = "FailedOperation.RedoFlowFailed"
            case setRuleLocationFailed = "FailedOperation.SetRuleLocationFailed"
            case systemError = "FailedOperation.SystemError"
            case unSupportError = "FailedOperation.UnSupportError"
            case unknown = "FailedOperation.Unknown"
            case updateInstanceInfoFailed = "FailedOperation.UpdateInstanceInfoFailed"
            case updateSecurityGroupsFailed = "FailedOperation.UpdateSecurityGroupsFailed"
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

        /// 实例安全组信息添加失败。
        public static var addInstanceInfoFailed: FailedOperation {
            FailedOperation(.addInstanceInfoFailed)
        }

        /// 绑定安全组失败。
        public static var associateSecurityGroupsFailed: FailedOperation {
            FailedOperation(.associateSecurityGroupsFailed)
        }

        /// 实例安全组信息清除失败。
        public static var clearInstanceInfoFailed: FailedOperation {
            FailedOperation(.clearInstanceInfoFailed)
        }

        /// 提交工作流失败。
        public static var commitFlowError: FailedOperation {
            FailedOperation(.commitFlowError)
        }

        /// 解绑安全组失败。
        public static var disassociateSecurityGroupsFailed: FailedOperation {
            FailedOperation(.disassociateSecurityGroupsFailed)
        }

        /// 当前DTS状态下不允许该操作。
        public static var dtsStatusAbnormal: FailedOperation {
            FailedOperation(.dtsStatusAbnormal)
        }

        /// 流表不存在。
        public static var flowNotExists: FailedOperation {
            FailedOperation(.flowNotExists)
        }

        /// 获取安全组详情失败。
        public static var getSecurityGroupDetailFailed: FailedOperation {
            FailedOperation(.getSecurityGroupDetailFailed)
        }

        /// 支付失败。
        public static var payFailed: FailedOperation {
            FailedOperation(.payFailed)
        }

        /// 暂时笼统的定义这个错误码。
        public static var redoFlowFailed: FailedOperation {
            FailedOperation(.redoFlowFailed)
        }

        /// 设置规则失败。
        public static var setRuleLocationFailed: FailedOperation {
            FailedOperation(.setRuleLocationFailed)
        }

        /// 内部系统错误，和业务无关。
        public static var systemError: FailedOperation {
            FailedOperation(.systemError)
        }

        /// 实例不支持该接口。
        public static var unSupportError: FailedOperation {
            FailedOperation(.unSupportError)
        }

        /// weekday输入无效数据。
        public static var unknown: FailedOperation {
            FailedOperation(.unknown)
        }

        /// 实例安全组信息更新失败。
        public static var updateInstanceInfoFailed: FailedOperation {
            FailedOperation(.updateInstanceInfoFailed)
        }

        /// 更新安全组失败。
        public static var updateSecurityGroupsFailed: FailedOperation {
            FailedOperation(.updateSecurityGroupsFailed)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .addInstanceInfoFailed:
                code = .failedOperation_AddInstanceInfoFailed
            case .associateSecurityGroupsFailed:
                code = .failedOperation_AssociateSecurityGroupsFailed
            case .clearInstanceInfoFailed:
                code = .failedOperation_ClearInstanceInfoFailed
            case .commitFlowError:
                code = .failedOperation_CommitFlowError
            case .disassociateSecurityGroupsFailed:
                code = .failedOperation_DisassociateSecurityGroupsFailed
            case .dtsStatusAbnormal:
                code = .failedOperation_DtsStatusAbnormal
            case .flowNotExists:
                code = .failedOperation_FlowNotExists
            case .getSecurityGroupDetailFailed:
                code = .failedOperation_GetSecurityGroupDetailFailed
            case .payFailed:
                code = .failedOperation_PayFailed
            case .redoFlowFailed:
                code = .failedOperation_RedoFlowFailed
            case .setRuleLocationFailed:
                code = .failedOperation_SetRuleLocationFailed
            case .systemError:
                code = .failedOperation_SystemError
            case .unSupportError:
                code = .failedOperation_UnSupportError
            case .unknown:
                code = .failedOperation_Unknown
            case .updateInstanceInfoFailed:
                code = .failedOperation_UpdateInstanceInfoFailed
            case .updateSecurityGroupsFailed:
                code = .failedOperation_UpdateSecurityGroupsFailed
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
