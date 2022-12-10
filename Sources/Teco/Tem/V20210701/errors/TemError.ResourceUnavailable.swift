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

extension TCTemError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case applicationNotDeletable = "ResourceUnavailable.ApplicationNotDeletable"
            case applicationStopped = "ResourceUnavailable.ApplicationStopped"
            case waitForKruise = "ResourceUnavailable.WaitForKruise"
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
        
        public static var applicationNotDeletable: ResourceUnavailable {
            ResourceUnavailable(.applicationNotDeletable)
        }
        
        public static var applicationStopped: ResourceUnavailable {
            ResourceUnavailable(.applicationStopped)
        }
        
        /// 等待组件安装。
        public static var waitForKruise: ResourceUnavailable {
            ResourceUnavailable(.waitForKruise)
        }
    }
}

extension TCTemError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCTemError.ResourceUnavailable, rhs: TCTemError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTemError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTemError.ResourceUnavailable {
    public func toTemError() -> TCTemError {
        guard let code = TCTemError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTemError(code, context: self.context)
    }
}