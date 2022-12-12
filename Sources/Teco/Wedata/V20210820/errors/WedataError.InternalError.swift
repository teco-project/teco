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

extension TCWedataError {
    public struct InternalError: TCWedataErrorType {
        enum Code: String {
            case callSchedulerApiError = "InternalError.CallSchedulerApiError"
            case internalCallCloudApiError = "InternalError.InternalCallCloudApiError"
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
        
        /// 外部系统调用异常。
        public static var callSchedulerApiError: InternalError {
            InternalError(.callSchedulerApiError)
        }
        
        /// 调用云API失败。
        public static var internalCallCloudApiError: InternalError {
            InternalError(.internalCallCloudApiError)
        }
        
        /// 内部错误。
        public static var other: InternalError {
            InternalError(.other)
        }
        
        public func asWedataError() -> TCWedataError {
            let code: TCWedataError.Code
            switch self.error {
            case .callSchedulerApiError: 
                code = .internalError_CallSchedulerApiError
            case .internalCallCloudApiError: 
                code = .internalError_InternalCallCloudApiError
            case .other: 
                code = .internalError
            }
            return TCWedataError(code, context: self.context)
        }
    }
}
