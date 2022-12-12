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

extension TCTeoError {
    public struct UnauthorizedOperation: TCTeoErrorType {
        enum Code: String {
            case camUnauthorized = "UnauthorizedOperation.CamUnauthorized"
            case domainEmpty = "UnauthorizedOperation.DomainEmpty"
            case noPermission = "UnauthorizedOperation.NoPermission"
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
        
        /// Cam 未授权。
        public static var camUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.camUnauthorized)
        }
        
        /// 鉴权错误。
        public static var domainEmpty: UnauthorizedOperation {
            UnauthorizedOperation(.domainEmpty)
        }
        
        /// 子账户没有操作权限，请添加权限后继续操作。
        public static var noPermission: UnauthorizedOperation {
            UnauthorizedOperation(.noPermission)
        }
        
        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .camUnauthorized: 
                code = .unauthorizedOperation_CamUnauthorized
            case .domainEmpty: 
                code = .unauthorizedOperation_DomainEmpty
            case .noPermission: 
                code = .unauthorizedOperation_NoPermission
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
