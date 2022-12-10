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

extension TCCmsError {
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
        
        /// 鉴权失败
        public static var errAuth: UnauthorizedOperation {
            UnauthorizedOperation(.errAuth)
        }
        
        /// 未开通权限
        public static var unauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorized)
        }
    }
}

extension TCCmsError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCCmsError.UnauthorizedOperation, rhs: TCCmsError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCmsError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCmsError.UnauthorizedOperation {
    public func toCmsError() -> TCCmsError {
        guard let code = TCCmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCmsError(code, context: self.context)
    }
}