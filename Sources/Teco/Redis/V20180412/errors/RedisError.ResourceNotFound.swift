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

extension TCRedisError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case accountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
            case instanceNotExists = "ResourceNotFound.InstanceNotExists"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case other = "ResourceNotFound"
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
        
        /// uin 值为空。
        public static var accountDoesNotExists: ResourceNotFound {
            ResourceNotFound(.accountDoesNotExists)
        }
        
        /// 根据 serialId 没有找到对应 redis。
        public static var instanceNotExists: ResourceNotFound {
            ResourceNotFound(.instanceNotExists)
        }
        
        /// 找不到该实例。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCRedisError.ResourceNotFound: Equatable {
    public static func == (lhs: TCRedisError.ResourceNotFound, rhs: TCRedisError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRedisError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRedisError.ResourceNotFound {
    public func toRedisError() -> TCRedisError {
        guard let code = TCRedisError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCRedisError(code, context: self.context)
    }
}