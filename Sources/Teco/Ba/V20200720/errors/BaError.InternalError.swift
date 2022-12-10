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

extension TCBaError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case resourceNotFound = "InternalError.ResourceNotFound"
            case other = "InternalError"
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
        
        /// 资源未找到。
        public static var resourceNotFound: InternalError {
            InternalError(.resourceNotFound)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCBaError.InternalError: Equatable {
    public static func == (lhs: TCBaError.InternalError, rhs: TCBaError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCBaError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCBaError.InternalError {
    public func toBaError() -> TCBaError {
        guard let code = TCBaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCBaError(code, context: self.context)
    }
}