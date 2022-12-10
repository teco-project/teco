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

extension TCTcrError {
    public struct FailedOperation: TCErrorType {
        enum Code: String {
            case dependenceError = "FailedOperation.DependenceError"
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
        
        /// 依赖服务异常。
        ///
        /// 接口操作执行中所依赖的服务异常，请稍候重试。
        public static var dependenceError: FailedOperation {
            FailedOperation(.dependenceError)
        }
        
        public static var errorGetDBDataError: FailedOperation {
            FailedOperation(.errorGetDBDataError)
        }
        
        public static var errorTcrInvalidMediaType: FailedOperation {
            FailedOperation(.errorTcrInvalidMediaType)
        }
        
        public static var errorTcrResourceConflict: FailedOperation {
            FailedOperation(.errorTcrResourceConflict)
        }
        
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
    }
}

extension TCTcrError.FailedOperation: Equatable {
    public static func == (lhs: TCTcrError.FailedOperation, rhs: TCTcrError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcrError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcrError.FailedOperation {
    /// - Returns: ``TCTcrError`` that holds the same error and context.
    public func toTcrError() -> TCTcrError {
        guard let code = TCTcrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcrError(code, context: self.context)
    }
}

extension TCTcrError.FailedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
