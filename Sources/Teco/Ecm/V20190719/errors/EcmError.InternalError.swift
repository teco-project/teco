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

extension TCEcmError {
    public struct InternalError: TCEcmErrorType {
        enum Code: String {
            case componentError = "InternalError.ComponentError"
            case failQueryResource = "InternalError.FailQueryResource"
            case resourceOpFailed = "InternalError.ResourceOpFailed"
            case other = "InternalError"
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
        
        /// InternalError.ComponentError
        public static var componentError: InternalError {
            InternalError(.componentError)
        }
        
        /// InternalError.FailQueryResource
        public static var failQueryResource: InternalError {
            InternalError(.failQueryResource)
        }
        
        /// InternalError.ResourceOpFailed
        public static var resourceOpFailed: InternalError {
            InternalError(.resourceOpFailed)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .componentError: 
                code = .internalError_ComponentError
            case .failQueryResource: 
                code = .internalError_FailQueryResource
            case .resourceOpFailed: 
                code = .internalError_ResourceOpFailed
            case .other: 
                code = .internalError
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
