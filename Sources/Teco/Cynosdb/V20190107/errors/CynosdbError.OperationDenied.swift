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

extension TCCynosdbError {
    public struct OperationDenied: TCCynosdbErrorType {
        enum Code: String {
            case auditPolicyNotExistError = "OperationDenied.AuditPolicyNotExistError"
            case camDeniedError = "OperationDenied.CamDeniedError"
            case clusterOpNotAllowedError = "OperationDenied.ClusterOpNotAllowedError"
            case clusterStatusDeniedError = "OperationDenied.ClusterStatusDeniedError"
            case instanceAccessDeniedError = "OperationDenied.InstanceAccessDeniedError"
            case instanceStatusDeniedError = "OperationDenied.InstanceStatusDeniedError"
            case instanceStatusLimitError = "OperationDenied.InstanceStatusLimitError"
            case insufficientBalanceError = "OperationDenied.InsufficientBalanceError"
            case serverlessClusterStatusDenied = "OperationDenied.ServerlessClusterStatusDenied"
            case serverlessInstanceStatusDenied = "OperationDenied.ServerlessInstanceStatusDenied"
            case taskConflictError = "OperationDenied.TaskConflictError"
            case unSupportSaleSpecError = "OperationDenied.UnSupportSaleSpecError"
            case userNotAuthenticatedError = "OperationDenied.UserNotAuthenticatedError"
            case versionNotSupportError = "OperationDenied.VersionNotSupportError"
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

        public static var auditPolicyNotExistError: OperationDenied {
            OperationDenied(.auditPolicyNotExistError)
        }

        /// 权限校验失败。
        public static var camDeniedError: OperationDenied {
            OperationDenied(.camDeniedError)
        }

        /// 由于操作禁止，当前集群不允许该操作。
        public static var clusterOpNotAllowedError: OperationDenied {
            OperationDenied(.clusterOpNotAllowedError)
        }

        /// 集群当前状态不允许该操作。
        public static var clusterStatusDeniedError: OperationDenied {
            OperationDenied(.clusterStatusDeniedError)
        }

        /// 您没有权限操作资源。
        public static var instanceAccessDeniedError: OperationDenied {
            OperationDenied(.instanceAccessDeniedError)
        }

        /// 实例当前状态不允许该操作。
        public static var instanceStatusDeniedError: OperationDenied {
            OperationDenied(.instanceStatusDeniedError)
        }

        /// 实例未处于运行状态
        public static var instanceStatusLimitError: OperationDenied {
            OperationDenied(.instanceStatusLimitError)
        }

        /// 账号余额不足。
        public static var insufficientBalanceError: OperationDenied {
            OperationDenied(.insufficientBalanceError)
        }

        /// serverless集群当前状态不允许该操作。
        public static var serverlessClusterStatusDenied: OperationDenied {
            OperationDenied(.serverlessClusterStatusDenied)
        }

        /// serverless实例当前状态不允许该操作。
        public static var serverlessInstanceStatusDenied: OperationDenied {
            OperationDenied(.serverlessInstanceStatusDenied)
        }

        /// 任务冲突检查不通过。
        public static var taskConflictError: OperationDenied {
            OperationDenied(.taskConflictError)
        }

        public static var unSupportSaleSpecError: OperationDenied {
            OperationDenied(.unSupportSaleSpecError)
        }

        /// 用户未进行实名认证，请先进行实名认证才可购买。
        public static var userNotAuthenticatedError: OperationDenied {
            OperationDenied(.userNotAuthenticatedError)
        }

        /// Serverless不支持该版本。
        public static var versionNotSupportError: OperationDenied {
            OperationDenied(.versionNotSupportError)
        }

        public func asCynosdbError() -> TCCynosdbError {
            let code: TCCynosdbError.Code
            switch self.error {
            case .auditPolicyNotExistError:
                code = .operationDenied_AuditPolicyNotExistError
            case .camDeniedError:
                code = .operationDenied_CamDeniedError
            case .clusterOpNotAllowedError:
                code = .operationDenied_ClusterOpNotAllowedError
            case .clusterStatusDeniedError:
                code = .operationDenied_ClusterStatusDeniedError
            case .instanceAccessDeniedError:
                code = .operationDenied_InstanceAccessDeniedError
            case .instanceStatusDeniedError:
                code = .operationDenied_InstanceStatusDeniedError
            case .instanceStatusLimitError:
                code = .operationDenied_InstanceStatusLimitError
            case .insufficientBalanceError:
                code = .operationDenied_InsufficientBalanceError
            case .serverlessClusterStatusDenied:
                code = .operationDenied_ServerlessClusterStatusDenied
            case .serverlessInstanceStatusDenied:
                code = .operationDenied_ServerlessInstanceStatusDenied
            case .taskConflictError:
                code = .operationDenied_TaskConflictError
            case .unSupportSaleSpecError:
                code = .operationDenied_UnSupportSaleSpecError
            case .userNotAuthenticatedError:
                code = .operationDenied_UserNotAuthenticatedError
            case .versionNotSupportError:
                code = .operationDenied_VersionNotSupportError
            }
            return TCCynosdbError(code, context: self.context)
        }
    }
}
