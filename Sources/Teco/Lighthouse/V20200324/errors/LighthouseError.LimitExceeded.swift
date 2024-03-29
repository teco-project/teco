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

extension TCLighthouseError {
    public struct LimitExceeded: TCLighthouseErrorType {
        enum Code: String {
            case attachDataDiskQuotaLimitExceeded = "LimitExceeded.AttachDataDiskQuotaLimitExceeded"
            case blueprintQuotaLimitExceeded = "LimitExceeded.BlueprintQuotaLimitExceeded"
            case diskBackupQuotaLimitExceeded = "LimitExceeded.DiskBackupQuotaLimitExceeded"
            case diskQuotaLimitExceeded = "LimitExceeded.DiskQuotaLimitExceeded"
            case firewallRulesLimitExceeded = "LimitExceeded.FirewallRulesLimitExceeded"
            case firewallTemplateRuleQuotaLimitExceeded = "LimitExceeded.FirewallTemplateRuleQuotaLimitExceeded"
            case instanceQuotaLimitExceeded = "LimitExceeded.InstanceQuotaLimitExceeded"
            case isolateResourcesLimitExceeded = "LimitExceeded.IsolateResourcesLimitExceeded"
            case keyPairLimitExceeded = "LimitExceeded.KeyPairLimitExceeded"
            case snapshotQuotaLimitExceeded = "LimitExceeded.SnapshotQuotaLimitExceeded"
            case other = "LimitExceeded"
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

        /// 实例挂载数据盘配额不足，无法挂载云硬盘。
        public static var attachDataDiskQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.attachDataDiskQuotaLimitExceeded)
        }

        /// 配额不足，当前自定义镜像配额不允许创建新的自定义镜像。
        public static var blueprintQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.blueprintQuotaLimitExceeded)
        }

        /// 超过磁盘备份点配额限制。
        public static var diskBackupQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.diskBackupQuotaLimitExceeded)
        }

        /// 当前配额不足，无法创建新的云硬盘。
        public static var diskQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.diskQuotaLimitExceeded)
        }

        /// 超过防火墙规则配额。
        public static var firewallRulesLimitExceeded: LimitExceeded {
            LimitExceeded(.firewallRulesLimitExceeded)
        }

        public static var firewallTemplateRuleQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.firewallTemplateRuleQuotaLimitExceeded)
        }

        /// 超过实例配额。
        public static var instanceQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.instanceQuotaLimitExceeded)
        }

        /// 退还资源数量超出限制。
        public static var isolateResourcesLimitExceeded: LimitExceeded {
            LimitExceeded(.isolateResourcesLimitExceeded)
        }

        /// 超过密钥对配额。
        public static var keyPairLimitExceeded: LimitExceeded {
            LimitExceeded(.keyPairLimitExceeded)
        }

        /// 超过快照配额。
        public static var snapshotQuotaLimitExceeded: LimitExceeded {
            LimitExceeded(.snapshotQuotaLimitExceeded)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .attachDataDiskQuotaLimitExceeded:
                code = .limitExceeded_AttachDataDiskQuotaLimitExceeded
            case .blueprintQuotaLimitExceeded:
                code = .limitExceeded_BlueprintQuotaLimitExceeded
            case .diskBackupQuotaLimitExceeded:
                code = .limitExceeded_DiskBackupQuotaLimitExceeded
            case .diskQuotaLimitExceeded:
                code = .limitExceeded_DiskQuotaLimitExceeded
            case .firewallRulesLimitExceeded:
                code = .limitExceeded_FirewallRulesLimitExceeded
            case .firewallTemplateRuleQuotaLimitExceeded:
                code = .limitExceeded_FirewallTemplateRuleQuotaLimitExceeded
            case .instanceQuotaLimitExceeded:
                code = .limitExceeded_InstanceQuotaLimitExceeded
            case .isolateResourcesLimitExceeded:
                code = .limitExceeded_IsolateResourcesLimitExceeded
            case .keyPairLimitExceeded:
                code = .limitExceeded_KeyPairLimitExceeded
            case .snapshotQuotaLimitExceeded:
                code = .limitExceeded_SnapshotQuotaLimitExceeded
            case .other:
                code = .limitExceeded
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
