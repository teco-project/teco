//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCGmeError {
    public struct UnauthorizedOperation: TCErrorType {
        enum Code: String {
            case createAppDenied = "UnauthorizedOperation.CreateAppDenied"
            case unRealNameAuth = "UnauthorizedOperation.UnRealNameAuth"
            case other = "UnauthorizedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 创建应用不被授权。
        public static var createAppDenied: UnauthorizedOperation {
            UnauthorizedOperation(.createAppDenied)
        }
        
        /// 该用户未进行实名认证。
        public static var unRealNameAuth: UnauthorizedOperation {
            UnauthorizedOperation(.unRealNameAuth)
        }
        
        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }
    }
}

extension TCGmeError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCGmeError.UnauthorizedOperation, rhs: TCGmeError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGmeError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGmeError.UnauthorizedOperation {
    public func toGmeError() -> TCGmeError {
        guard let code = TCGmeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCGmeError(code, context: self.context)
    }
}