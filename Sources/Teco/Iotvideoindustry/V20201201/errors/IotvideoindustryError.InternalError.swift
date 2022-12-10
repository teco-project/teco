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

extension TCIotvideoindustryError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case dbOperationError = "InternalError.DBOperationError"
            case internalServerException = "InternalError.InternalServerException"
            case internalServerExceptionDB = "InternalError.InternalServerExceptionDB"
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
        
        /// DB操作错误。
        public static var dbOperationError: InternalError {
            InternalError(.dbOperationError)
        }
        
        /// 内部错误。
        public static var internalServerException: InternalError {
            InternalError(.internalServerException)
        }
        
        /// DB操作错误。
        public static var internalServerExceptionDB: InternalError {
            InternalError(.internalServerExceptionDB)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCIotvideoindustryError.InternalError: Equatable {
    public static func == (lhs: TCIotvideoindustryError.InternalError, rhs: TCIotvideoindustryError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotvideoindustryError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotvideoindustryError.InternalError {
    public func toIotvideoindustryError() -> TCIotvideoindustryError {
        guard let code = TCIotvideoindustryError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotvideoindustryError(code, context: self.context)
    }
}