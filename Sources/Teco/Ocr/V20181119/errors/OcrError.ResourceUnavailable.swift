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

extension TCOcrError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case taxNetworkError = "ResourceUnavailable.TaxNetworkError"
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
        
        /// 税务局网络异常，请稍后访问。
        public static var taxNetworkError: ResourceUnavailable {
            ResourceUnavailable(.taxNetworkError)
        }
    }
}

extension TCOcrError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCOcrError.ResourceUnavailable, rhs: TCOcrError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCOcrError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCOcrError.ResourceUnavailable {
    public func toOcrError() -> TCOcrError {
        guard let code = TCOcrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCOcrError(code, context: self.context)
    }
}