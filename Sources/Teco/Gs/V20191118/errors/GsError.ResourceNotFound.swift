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

extension TCGsError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case noIdle = "ResourceNotFound.NoIdle"
            case sessionNotFound = "ResourceNotFound.SessionNotFound"
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
        
        /// 没有空闲机器。
        public static var noIdle: ResourceNotFound {
            ResourceNotFound(.noIdle)
        }
        
        /// 会话未找到。
        public static var sessionNotFound: ResourceNotFound {
            ResourceNotFound(.sessionNotFound)
        }
    }
}

extension TCGsError.ResourceNotFound: Equatable {
    public static func == (lhs: TCGsError.ResourceNotFound, rhs: TCGsError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGsError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGsError.ResourceNotFound {
    public func toGsError() -> TCGsError {
        guard let code = TCGsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCGsError(code, context: self.context)
    }
}