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

extension TCTiaError {
    public struct ResourceInUse: TCErrorType {
        enum Code: String {
            case functionName = "ResourceInUse.FunctionName"
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
        
        /// FunctionName已存在。
        public static var functionName: ResourceInUse {
            ResourceInUse(.functionName)
        }
    }
}

extension TCTiaError.ResourceInUse: Equatable {
    public static func == (lhs: TCTiaError.ResourceInUse, rhs: TCTiaError.ResourceInUse) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTiaError.ResourceInUse: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTiaError.ResourceInUse {
    public func toTiaError() -> TCTiaError {
        guard let code = TCTiaError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTiaError(code, context: self.context)
    }
}