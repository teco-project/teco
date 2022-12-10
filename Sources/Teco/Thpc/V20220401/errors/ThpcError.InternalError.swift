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

extension TCThpcError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case callCvm = "InternalError.CallCvm"
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
        
        /// cvm调用失败。
        public static var callCvm: InternalError {
            InternalError(.callCvm)
        }
    }
}

extension TCThpcError.InternalError: Equatable {
    public static func == (lhs: TCThpcError.InternalError, rhs: TCThpcError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCThpcError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCThpcError.InternalError {
    public func toThpcError() -> TCThpcError {
        guard let code = TCThpcError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCThpcError(code, context: self.context)
    }
}