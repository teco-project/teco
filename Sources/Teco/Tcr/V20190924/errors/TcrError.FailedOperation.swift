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

extension TCTcrError {
    public struct FailedOperation: TCTcrErrorType {
        enum Code: String {
            case dbError = "FailedOperation.DbError"
            case dependenceError = "FailedOperation.DependenceError"
            case emptyCoreBody = "FailedOperation.EmptyCoreBody"
            case errorGetDBDataError = "FailedOperation.ErrorGetDBDataError"
            case errorTcrInvalidMediaType = "FailedOperation.ErrorTcrInvalidMediaType"
            case errorTcrResourceConflict = "FailedOperation.ErrorTcrResourceConflict"
            case errorTcrUnauthorized = "FailedOperation.ErrorTcrUnauthorized"
            case getDBDataError = "FailedOperation.GetDBDataError"
            case getSecurityPolicyFail = "FailedOperation.GetSecurityPolicyFail"
            case getTcrClient = "FailedOperation.GetTcrClient"
            case operationCancel = "FailedOperation.OperationCancel"
            case tradeFailed = "FailedOperation.TradeFailed"
            case validateRegistryNameFail = "FailedOperation.ValidateRegistryNameFail"
            case validateSupportedRegionFail = "FailedOperation.ValidateSupportedRegionFail"
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

        /// 数据库错误。
        public static var dbError: FailedOperation {
            FailedOperation(.dbError)
        }

        /// 依赖服务异常。
        ///
        /// 接口操作执行中所依赖的服务异常，请稍候重试。
        public static var dependenceError: FailedOperation {
            FailedOperation(.dependenceError)
        }

        /// Core 返回内容为空
        ///
        /// 1. 检查 Global 日志
        /// 2. 检查 Core 是否 panic 了
        public static var emptyCoreBody: FailedOperation {
            FailedOperation(.emptyCoreBody)
        }

        /// 获取数据库数据错误。
        public static var errorGetDBDataError: FailedOperation {
            FailedOperation(.errorGetDBDataError)
        }

        /// Tcr实例请求无效的Hearder类型。
        public static var errorTcrInvalidMediaType: FailedOperation {
            FailedOperation(.errorTcrInvalidMediaType)
        }

        /// Tcr实例资源冲突。
        public static var errorTcrResourceConflict: FailedOperation {
            FailedOperation(.errorTcrResourceConflict)
        }

        /// 没有Tcr操作权限。
        public static var errorTcrUnauthorized: FailedOperation {
            FailedOperation(.errorTcrUnauthorized)
        }

        /// 获取数据库数据错误。
        public static var getDBDataError: FailedOperation {
            FailedOperation(.getDBDataError)
        }

        /// 获取安全组策略错误。
        public static var getSecurityPolicyFail: FailedOperation {
            FailedOperation(.getSecurityPolicyFail)
        }

        /// 获取TcrClient错误。
        public static var getTcrClient: FailedOperation {
            FailedOperation(.getTcrClient)
        }

        /// 操作取消。
        public static var operationCancel: FailedOperation {
            FailedOperation(.operationCancel)
        }

        /// 交易失败。
        ///
        /// 请检查帐户余额是否充足。
        public static var tradeFailed: FailedOperation {
            FailedOperation(.tradeFailed)
        }

        /// 校验仓库名称失败。
        public static var validateRegistryNameFail: FailedOperation {
            FailedOperation(.validateRegistryNameFail)
        }

        /// 校验支持地域错误。
        public static var validateSupportedRegionFail: FailedOperation {
            FailedOperation(.validateSupportedRegionFail)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTcrError() -> TCTcrError {
            let code: TCTcrError.Code
            switch self.error {
            case .dbError:
                code = .failedOperation_DbError
            case .dependenceError:
                code = .failedOperation_DependenceError
            case .emptyCoreBody:
                code = .failedOperation_EmptyCoreBody
            case .errorGetDBDataError:
                code = .failedOperation_ErrorGetDBDataError
            case .errorTcrInvalidMediaType:
                code = .failedOperation_ErrorTcrInvalidMediaType
            case .errorTcrResourceConflict:
                code = .failedOperation_ErrorTcrResourceConflict
            case .errorTcrUnauthorized:
                code = .failedOperation_ErrorTcrUnauthorized
            case .getDBDataError:
                code = .failedOperation_GetDBDataError
            case .getSecurityPolicyFail:
                code = .failedOperation_GetSecurityPolicyFail
            case .getTcrClient:
                code = .failedOperation_GetTcrClient
            case .operationCancel:
                code = .failedOperation_OperationCancel
            case .tradeFailed:
                code = .failedOperation_TradeFailed
            case .validateRegistryNameFail:
                code = .failedOperation_ValidateRegistryNameFail
            case .validateSupportedRegionFail:
                code = .failedOperation_ValidateSupportedRegionFail
            case .other:
                code = .failedOperation
            }
            return TCTcrError(code, context: self.context)
        }
    }
}
