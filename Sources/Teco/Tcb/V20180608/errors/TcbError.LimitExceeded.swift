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

extension TCTcbError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case concurrent = "LimitExceeded.Concurrent"
            case errNamespaceMaxLimit = "LimitExceeded.ErrNamespaceMaxLimit"
            case errRepoMaxLimit = "LimitExceeded.ErrRepoMaxLimit"
            case request = "LimitExceeded.Request"
            case other = "LimitExceeded"
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
        
        /// 并发请求超过配额限制。
        public static var concurrent: LimitExceeded {
            LimitExceeded(.concurrent)
        }
        
        /// 命名空间超过配额。
        public static var errNamespaceMaxLimit: LimitExceeded {
            LimitExceeded(.errNamespaceMaxLimit)
        }
        
        /// 镜像容器超过配额。
        public static var errRepoMaxLimit: LimitExceeded {
            LimitExceeded(.errRepoMaxLimit)
        }
        
        /// 请求次数超过配额限制。
        public static var request: LimitExceeded {
            LimitExceeded(.request)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
    }
}

extension TCTcbError.LimitExceeded: Equatable {
    public static func == (lhs: TCTcbError.LimitExceeded, rhs: TCTcbError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTcbError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTcbError.LimitExceeded {
    public func toTcbError() -> TCTcbError {
        guard let code = TCTcbError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTcbError(code, context: self.context)
    }
}