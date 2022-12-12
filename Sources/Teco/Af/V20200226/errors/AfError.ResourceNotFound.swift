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

extension TCAfError {
    public struct ResourceNotFound: TCAfErrorType {
        enum Code: String {
            case interfaceNotFound = "ResourceNotFound.InterfaceNotFound"
            case other = "ResourceNotFound"
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
        
        /// 接口不存在。
        public static var interfaceNotFound: ResourceNotFound {
            ResourceNotFound(.interfaceNotFound)
        }
        
        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }
        
        public func asAfError() -> TCAfError {
            let code: TCAfError.Code
            switch self.error {
            case .interfaceNotFound: 
                code = .resourceNotFound_InterfaceNotFound
            case .other: 
                code = .resourceNotFound
            }
            return TCAfError(code, context: self.context)
        }
    }
}
