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

extension TCCaptchaError {
    public struct UnauthorizedOperation: TCErrorType {
        enum Code: String {
            case errAuth = "UnauthorizedOperation.ErrAuth"
            case unauthorized = "UnauthorizedOperation.Unauthorized"
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
        
        /// 鉴权失败。
        public static var errAuth: UnauthorizedOperation {
            UnauthorizedOperation(.errAuth)
        }
        
        /// 未开通权限。
        public static var unauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorized)
        }
    }
}

extension TCCaptchaError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCCaptchaError.UnauthorizedOperation, rhs: TCCaptchaError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCaptchaError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCaptchaError.UnauthorizedOperation {
    /// - Returns: ``TCCaptchaError`` that holds the same error and context.
    public func toCaptchaError() -> TCCaptchaError {
        guard let code = TCCaptchaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCaptchaError(code, context: self.context)
    }
}

extension TCCaptchaError.UnauthorizedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
