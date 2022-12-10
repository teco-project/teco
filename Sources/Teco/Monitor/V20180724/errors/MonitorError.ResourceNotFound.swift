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

extension TCMonitorError {
    public struct ResourceNotFound: TCErrorType {
        enum Code: String {
            case notExistTask = "ResourceNotFound.NotExistTask"
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
        
        /// 任务不存在。
        public static var notExistTask: ResourceNotFound {
            ResourceNotFound(.notExistTask)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
    }
}

extension TCMonitorError.ResourceNotFound: Equatable {
    public static func == (lhs: TCMonitorError.ResourceNotFound, rhs: TCMonitorError.ResourceNotFound) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCMonitorError.ResourceNotFound: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCMonitorError.ResourceNotFound {
    public func toMonitorError() -> TCMonitorError {
        guard let code = TCMonitorError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCMonitorError(code, context: self.context)
    }
}