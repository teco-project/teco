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

extension TCEccError {
    public struct UnauthorizedOperation: TCErrorType {
        enum Code: String {
            case licenseInvalidForbiddenAccessError = "UnauthorizedOperation.LicenseInvalidForbiddenAccessError"
            case serverNameUnauthorizedInError = "UnauthorizedOperation.ServerNameUnauthorizedInError"
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
        
        /// license无效。
        public static var licenseInvalidForbiddenAccessError: UnauthorizedOperation {
            UnauthorizedOperation(.licenseInvalidForbiddenAccessError)
        }
        
        /// license中未授权该服务。
        public static var serverNameUnauthorizedInError: UnauthorizedOperation {
            UnauthorizedOperation(.serverNameUnauthorizedInError)
        }
    }
}

extension TCEccError.UnauthorizedOperation: Equatable {
    public static func == (lhs: TCEccError.UnauthorizedOperation, rhs: TCEccError.UnauthorizedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEccError.UnauthorizedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEccError.UnauthorizedOperation {
    public func toEccError() -> TCEccError {
        guard let code = TCEccError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEccError(code, context: self.context)
    }
}