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

extension TCCdnError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case clsNotAllowed = "UnsupportedOperation.ClsNotAllowed"
            case opNoAuth = "UnsupportedOperation.OpNoAuth"
            case other = "UnsupportedOperation"
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
        
        /// 不允许操作。
        public static var clsNotAllowed: UnsupportedOperation {
            UnsupportedOperation(.clsNotAllowed)
        }
        
        /// 暂不支持此操作，请联系腾讯云工程师处理。
        public static var opNoAuth: UnsupportedOperation {
            UnsupportedOperation(.opNoAuth)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCCdnError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCCdnError.UnsupportedOperation, rhs: TCCdnError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCdnError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCdnError.UnsupportedOperation {
    public func toCdnError() -> TCCdnError {
        guard let code = TCCdnError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCdnError(code, context: self.context)
    }
}