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

extension TCWedataError {
    public struct OperationDenied: TCErrorType {
        enum Code: String {
            case userNotInWhitelistError = "OperationDenied.UserNotInWhitelistError"
            case other = "OperationDenied"
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
        
        /// 用户不在白名单。
        public static var userNotInWhitelistError: OperationDenied {
            OperationDenied(.userNotInWhitelistError)
        }
        
        /// 操作被拒绝。
        public static var other: OperationDenied {
            OperationDenied(.other)
        }
    }
}

extension TCWedataError.OperationDenied: Equatable {
    public static func == (lhs: TCWedataError.OperationDenied, rhs: TCWedataError.OperationDenied) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCWedataError.OperationDenied: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCWedataError.OperationDenied {
    /// - Returns: ``TCWedataError`` that holds the same error and context.
    public func toWedataError() -> TCWedataError {
        guard let code = TCWedataError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCWedataError(code, context: self.context)
    }
}

extension TCWedataError.OperationDenied {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
