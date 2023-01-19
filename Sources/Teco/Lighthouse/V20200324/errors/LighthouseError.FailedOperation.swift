//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCLighthouseError {
    public struct FailedOperation: TCLighthouseErrorType {
        enum Code: String {
            case createBlueprintFailed = "FailedOperation.CreateBlueprintFailed"
            case createKeyPairFailed = "FailedOperation.CreateKeyPairFailed"
            case deleteKeyPairFailed = "FailedOperation.DeleteKeyPairFailed"
            case firewallRulesOperationFailed = "FailedOperation.FirewallRulesOperationFailed"
            case importKeyPairFailed = "FailedOperation.ImportKeyPairFailed"
            case instanceOperationFailed = "FailedOperation.InstanceOperationFailed"
            case isolateResourcesFailed = "FailedOperation.IsolateResourcesFailed"
            case modifyInstancesBundleFailed = "FailedOperation.ModifyInstancesBundleFailed"
            case snapshotOperationFailed = "FailedOperation.SnapshotOperationFailed"
            case unableToCreateBlueprint = "FailedOperation.UnableToCreateBlueprint"
            case unableToCreateInstances = "FailedOperation.UnableToCreateInstances"
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

        /// 创建镜像失败。
        public static var createBlueprintFailed: FailedOperation {
            FailedOperation(.createBlueprintFailed)
        }

        /// 对密钥对的创建操作失败。
        public static var createKeyPairFailed: FailedOperation {
            FailedOperation(.createKeyPairFailed)
        }

        /// 对密钥对的删除操作失败。
        public static var deleteKeyPairFailed: FailedOperation {
            FailedOperation(.deleteKeyPairFailed)
        }

        /// 对防火墙规则的操作失败。
        public static var firewallRulesOperationFailed: FailedOperation {
            FailedOperation(.firewallRulesOperationFailed)
        }

        /// 对密钥对的导入操作失败。
        public static var importKeyPairFailed: FailedOperation {
            FailedOperation(.importKeyPairFailed)
        }

        /// 对实例的操作失败。
        public static var instanceOperationFailed: FailedOperation {
            FailedOperation(.instanceOperationFailed)
        }

        /// 退还资源失败。
        public static var isolateResourcesFailed: FailedOperation {
            FailedOperation(.isolateResourcesFailed)
        }

        public static var modifyInstancesBundleFailed: FailedOperation {
            FailedOperation(.modifyInstancesBundleFailed)
        }

        /// 快照操作失败。
        public static var snapshotOperationFailed: FailedOperation {
            FailedOperation(.snapshotOperationFailed)
        }

        /// 操作失败，不能创建自定义镜像。
        public static var unableToCreateBlueprint: FailedOperation {
            FailedOperation(.unableToCreateBlueprint)
        }

        /// 无法创建实例。
        ///
        /// 请稍后重试。
        public static var unableToCreateInstances: FailedOperation {
            FailedOperation(.unableToCreateInstances)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .createBlueprintFailed:
                code = .failedOperation_CreateBlueprintFailed
            case .createKeyPairFailed:
                code = .failedOperation_CreateKeyPairFailed
            case .deleteKeyPairFailed:
                code = .failedOperation_DeleteKeyPairFailed
            case .firewallRulesOperationFailed:
                code = .failedOperation_FirewallRulesOperationFailed
            case .importKeyPairFailed:
                code = .failedOperation_ImportKeyPairFailed
            case .instanceOperationFailed:
                code = .failedOperation_InstanceOperationFailed
            case .isolateResourcesFailed:
                code = .failedOperation_IsolateResourcesFailed
            case .modifyInstancesBundleFailed:
                code = .failedOperation_ModifyInstancesBundleFailed
            case .snapshotOperationFailed:
                code = .failedOperation_SnapshotOperationFailed
            case .unableToCreateBlueprint:
                code = .failedOperation_UnableToCreateBlueprint
            case .unableToCreateInstances:
                code = .failedOperation_UnableToCreateInstances
            case .other:
                code = .failedOperation
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
