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

extension TCTafError {
    public struct ResourceUnavailable: TCErrorType {
        enum Code: String {
            case permissionDenied = "ResourceUnavailable.PermissionDenied"
            case other = "ResourceUnavailable"
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
        
        /// 未开通服务权限。
        public static var permissionDenied: ResourceUnavailable {
            ResourceUnavailable(.permissionDenied)
        }
        
        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }
    }
}

extension TCTafError.ResourceUnavailable: Equatable {
    public static func == (lhs: TCTafError.ResourceUnavailable, rhs: TCTafError.ResourceUnavailable) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTafError.ResourceUnavailable: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTafError.ResourceUnavailable {
    public func toTafError() -> TCTafError {
        guard let code = TCTafError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTafError(code, context: self.context)
    }
}