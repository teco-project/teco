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

extension TCCamError {
    public struct UnauthorizedOperation: TCCamErrorType {
        enum Code: String {
            case deleteApiKey = "UnauthorizedOperation.DeleteApiKey"
            case other = "UnauthorizedOperation"
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
        
        /// 没有删除API密钥权限。
        public static var deleteApiKey: UnauthorizedOperation {
            UnauthorizedOperation(.deleteApiKey)
        }
        
        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }
        
        public func asCamError() -> TCCamError {
            let code: TCCamError.Code
            switch self.error {
            case .deleteApiKey: 
                code = .unauthorizedOperation_DeleteApiKey
            case .other: 
                code = .unauthorizedOperation
            }
            return TCCamError(code, context: self.context)
        }
    }
}
