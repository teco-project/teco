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

extension TCGmeError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case bizidIsNotFound = "ResourceNotFound.BizidIsNotFound"
            case taskNotFound = "ResourceNotFound.TaskNotFound"
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
        
        /// 应用ID不正确
        public static var bizidIsNotFound: ResourceNotFound {
            ResourceNotFound(.bizidIsNotFound)
        }
        
        /// 任务ID不正确
        public static var taskNotFound: ResourceNotFound {
            ResourceNotFound(.taskNotFound)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCGmeError.ResourceNotFound: Equatable {
    public static func == (lhs: TCGmeError.ResourceNotFound, rhs: TCGmeError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCGmeError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCGmeError.ResourceNotFound {
    public func toGmeError() -> TCGmeError {
        guard let code = TCGmeError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCGmeError(code, context: self.context)
    }
}