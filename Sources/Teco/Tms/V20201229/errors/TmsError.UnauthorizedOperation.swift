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

extension TCTmsError {
    public struct UnauthorizedOperation: TCTmsErrorType {
        enum Code: String {
            case unauthorized = "UnauthorizedOperation.Unauthorized"
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
        
        /// 未获取到接口授权。
        public static var unauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.unauthorized)
        }
        
        public func asTmsError() -> TCTmsError {
            let code: TCTmsError.Code
            switch self.error {
            case .unauthorized: 
                code = .unauthorizedOperation_Unauthorized
            }
            return TCTmsError(code, context: self.context)
        }
    }
}
