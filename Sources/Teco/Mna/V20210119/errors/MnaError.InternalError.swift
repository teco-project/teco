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

extension TCMnaError {
    public struct InternalError: TCErrorType {
        enum Code: String {
            case controlRequestError = "InternalError.ControlRequestError"
            case duplicateDataKey = "InternalError.DuplicateDataKey"
            case duplicateDeviceName = "InternalError.DuplicateDeviceName"
            case fileIOError = "InternalError.FileIOError"
            case networkInfoRequestError = "InternalError.NetworkInfoRequestError"
            case undefinedEncryptedKey = "InternalError.UndefinedEncryptedKey"
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
        
        public static var controlRequestError: InternalError {
            InternalError(.controlRequestError)
        }
        
        public static var duplicateDataKey: InternalError {
            InternalError(.duplicateDataKey)
        }
        
        public static var duplicateDeviceName: InternalError {
            InternalError(.duplicateDeviceName)
        }
        
        public static var fileIOError: InternalError {
            InternalError(.fileIOError)
        }
        
        public static var networkInfoRequestError: InternalError {
            InternalError(.networkInfoRequestError)
        }
        
        public static var undefinedEncryptedKey: InternalError {
            InternalError(.undefinedEncryptedKey)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
    }
}

extension TCMnaError.InternalError: Equatable {
    public static func == (lhs: TCMnaError.InternalError, rhs: TCMnaError.InternalError) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMnaError.InternalError: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMnaError.InternalError {
    public func toMnaError() -> TCMnaError {
        guard let code = TCMnaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMnaError(code, context: self.context)
    }
}