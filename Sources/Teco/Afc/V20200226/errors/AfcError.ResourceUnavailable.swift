//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCAfcError {
    public struct ResourceUnavailable: TCAfcErrorType {
        enum Code: String {
            case permissionDenied = "ResourceUnavailable.PermissionDenied"
            case other = "ResourceUnavailable"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
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
        
        public func asAfcError() -> TCAfcError {
            let code: TCAfcError.Code
            switch self.error {
            case .permissionDenied: 
                code = .resourceUnavailable_PermissionDenied
            case .other: 
                code = .resourceUnavailable
            }
            return TCAfcError(code, context: self.context)
        }
    }
}
