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

extension TCAaError {
    public struct ResourceNotFound: TCAaErrorType {
        enum Code: String {
            case interfaceNotFound = "ResourceNotFound.InterfaceNotFound"
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
        
        public func asAaError() -> TCAaError {
            let code: TCAaError.Code
            switch self.error {
            case .interfaceNotFound: 
                code = .resourceNotFound_InterfaceNotFound
            }
            return TCAaError(code, context: self.context)
        }
    }
}
