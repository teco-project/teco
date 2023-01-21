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

extension TCRedisError {
    public struct UnsupportedOperation: TCRedisErrorType {
        enum Code: String {
            case clusterInstanceAccessedDeny = "UnsupportedOperation.ClusterInstanceAccessedDeny"
            case inspection = "UnsupportedOperation.Inspection"
            case instanceNotOperation = "UnsupportedOperation.InstanceNotOperation"
            case isAutoRenewError = "UnsupportedOperation.IsAutoRenewError"
            case limitProxyVersion = "UnsupportedOperation.LimitProxyVersion"
            case onlyClusterInstanceCanExportBackup = "UnsupportedOperation.OnlyClusterInstanceCanExportBackup"
            case other = "UnsupportedOperation"
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

        /// redis 集群版不允许接入安全组。
        public static var clusterInstanceAccessedDeny: UnsupportedOperation {
            UnsupportedOperation(.clusterInstanceAccessedDeny)
        }

        /// 复制组巡检中。
        public static var inspection: UnsupportedOperation {
            UnsupportedOperation(.inspection)
        }

        /// 不支持当前操作。
        public static var instanceNotOperation: UnsupportedOperation {
            UnsupportedOperation(.instanceNotOperation)
        }

        /// 自动续费标识错误。
        public static var isAutoRenewError: UnsupportedOperation {
            UnsupportedOperation(.isAutoRenewError)
        }

        /// 实例版本过低，如需使用该功能请提交工单申请。
        public static var limitProxyVersion: UnsupportedOperation {
            UnsupportedOperation(.limitProxyVersion)
        }

        /// 只有集群版实例支持导出备份。
        public static var onlyClusterInstanceCanExportBackup: UnsupportedOperation {
            UnsupportedOperation(.onlyClusterInstanceCanExportBackup)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .clusterInstanceAccessedDeny:
                code = .unsupportedOperation_ClusterInstanceAccessedDeny
            case .inspection:
                code = .unsupportedOperation_Inspection
            case .instanceNotOperation:
                code = .unsupportedOperation_InstanceNotOperation
            case .isAutoRenewError:
                code = .unsupportedOperation_IsAutoRenewError
            case .limitProxyVersion:
                code = .unsupportedOperation_LimitProxyVersion
            case .onlyClusterInstanceCanExportBackup:
                code = .unsupportedOperation_OnlyClusterInstanceCanExportBackup
            case .other:
                code = .unsupportedOperation
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
