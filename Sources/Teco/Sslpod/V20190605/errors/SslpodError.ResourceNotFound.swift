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

extension TCSslpodError {
    public struct ResourceNotFound: TCSslpodErrorType {
        enum Code: String {
            case product = "ResourceNotFound.Product"
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
        
        /// 产品不存在。
        public static var product: ResourceNotFound {
            ResourceNotFound(.product)
        }
        
        public func asSslpodError() -> TCSslpodError {
            let code: TCSslpodError.Code
            switch self.error {
            case .product: 
                code = .resourceNotFound_Product
            }
            return TCSslpodError(code, context: self.context)
        }
    }
}
