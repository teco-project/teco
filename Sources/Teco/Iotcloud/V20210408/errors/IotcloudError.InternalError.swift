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

extension TCIotcloudError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case dbOperationError = "InternalError.DBOperationError"
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
        
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCIotcloudError.InternalError: Equatable {
    public static func == (lhs: TCIotcloudError.InternalError, rhs: TCIotcloudError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotcloudError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotcloudError.InternalError {
    public func toIotcloudError() -> TCIotcloudError {
        guard let code = TCIotcloudError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotcloudError(code, context: self.context)
    }
}