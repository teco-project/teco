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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTcssError {
    public struct FailedOperation: TCTcssErrorType {
        enum Code: String {
            case agentOffline = "FailedOperation.AgentOffline"
            case authorizedNotEnough = "FailedOperation.AuthorizedNotEnough"
            case dataValueNotCorrect = "FailedOperation.DataValueNotCorrect"
            case errAlreadyScanning = "FailedOperation.ErrAlreadyScanning"
            case errRuleNotFind = "FailedOperation.ErrRuleNotFind"
            case notifyPolicyChangeFailed = "FailedOperation.NotifyPolicyChangeFailed"
            case ruleConfigTooMany = "FailedOperation.RuleConfigTooMany"
            case ruleInfoRepeat = "FailedOperation.RuleInfoRepeat"
            case ruleNameRepeat = "FailedOperation.RuleNameRepeat"
            case ruleNotFind = "FailedOperation.RuleNotFind"
            case ruleSelectImageOutRange = "FailedOperation.RuleSelectImageOutRange"
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

        /// 客户端已离线。
        public static var agentOffline: FailedOperation {
            FailedOperation(.agentOffline)
        }

        /// 授权数不足。
        public static var authorizedNotEnough: FailedOperation {
            FailedOperation(.authorizedNotEnough)
        }

        /// 响应数据值不正确。
        public static var dataValueNotCorrect: FailedOperation {
            FailedOperation(.dataValueNotCorrect)
        }

        /// 在扫描中或无扫描权限建议授权后扫描。
        public static var errAlreadyScanning: FailedOperation {
            FailedOperation(.errAlreadyScanning)
        }

        /// 当前规则信息未找到。
        public static var errRuleNotFind: FailedOperation {
            FailedOperation(.errRuleNotFind)
        }

        /// 通知策略变更失败。
        public static var notifyPolicyChangeFailed: FailedOperation {
            FailedOperation(.notifyPolicyChangeFailed)
        }

        /// 子规则配置过多。
        public static var ruleConfigTooMany: FailedOperation {
            FailedOperation(.ruleConfigTooMany)
        }

        /// 规则信息存在重复。
        public static var ruleInfoRepeat: FailedOperation {
            FailedOperation(.ruleInfoRepeat)
        }

        /// 规则名字存在重复。
        public static var ruleNameRepeat: FailedOperation {
            FailedOperation(.ruleNameRepeat)
        }

        /// 当前规则信息未找到。
        public static var ruleNotFind: FailedOperation {
            FailedOperation(.ruleNotFind)
        }

        /// 选择镜像数量过多。
        public static var ruleSelectImageOutRange: FailedOperation {
            FailedOperation(.ruleSelectImageOutRange)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTcssError() -> TCTcssError {
            let code: TCTcssError.Code
            switch self.error {
            case .agentOffline:
                code = .failedOperation_AgentOffline
            case .authorizedNotEnough:
                code = .failedOperation_AuthorizedNotEnough
            case .dataValueNotCorrect:
                code = .failedOperation_DataValueNotCorrect
            case .errAlreadyScanning:
                code = .failedOperation_ErrAlreadyScanning
            case .errRuleNotFind:
                code = .failedOperation_ErrRuleNotFind
            case .notifyPolicyChangeFailed:
                code = .failedOperation_NotifyPolicyChangeFailed
            case .ruleConfigTooMany:
                code = .failedOperation_RuleConfigTooMany
            case .ruleInfoRepeat:
                code = .failedOperation_RuleInfoRepeat
            case .ruleNameRepeat:
                code = .failedOperation_RuleNameRepeat
            case .ruleNotFind:
                code = .failedOperation_RuleNotFind
            case .ruleSelectImageOutRange:
                code = .failedOperation_RuleSelectImageOutRange
            case .other:
                code = .failedOperation
            }
            return TCTcssError(code, context: self.context)
        }
    }
}
