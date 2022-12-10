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

extension TCTatError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case commandNotFound = "ResourceNotFound.CommandNotFound"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
            case invocationNotFound = "ResourceNotFound.InvocationNotFound"
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
        
        /// 命令不存在。
        public static var commandNotFound: ResourceNotFound {
            ResourceNotFound(.commandNotFound)
        }
        
        /// 实例不存在。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }
        
        /// 执行活动未找到。
        public static var invocationNotFound: ResourceNotFound {
            ResourceNotFound(.invocationNotFound)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCTatError.ResourceNotFound: Equatable {
    public static func == (lhs: TCTatError.ResourceNotFound, rhs: TCTatError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTatError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTatError.ResourceNotFound {
    public func toTatError() -> TCTatError {
        guard let code = TCTatError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTatError(code, context: self.context)
    }
}