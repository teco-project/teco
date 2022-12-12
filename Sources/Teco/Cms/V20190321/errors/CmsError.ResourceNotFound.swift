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

extension TCCmsError {
    public struct ResourceNotFound: TCCmsErrorType {
        enum Code: String {
            case errDowdownInternalError = "ResourceNotFound.ErrDowdownInternalError"
            case errDowdownParamsError = "ResourceNotFound.ErrDowdownParamsError"
            case errDowdownSourceError = "ResourceNotFound.ErrDowdownSourceError"
            case errDowdownTimeOut = "ResourceNotFound.ErrDowdownTimeOut"
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
        
        /// 文件链接下载内部错误
        public static var errDowdownInternalError: ResourceNotFound {
            ResourceNotFound(.errDowdownInternalError)
        }
        
        /// 文件链接下载服务参数异常
        public static var errDowdownParamsError: ResourceNotFound {
            ResourceNotFound(.errDowdownParamsError)
        }
        
        /// 文件链接下载源错误
        public static var errDowdownSourceError: ResourceNotFound {
            ResourceNotFound(.errDowdownSourceError)
        }
        
        /// 文件链接下载超时
        public static var errDowdownTimeOut: ResourceNotFound {
            ResourceNotFound(.errDowdownTimeOut)
        }
        
        public func asCmsError() -> TCCmsError {
            let code: TCCmsError.Code
            switch self.error {
            case .errDowdownInternalError: 
                code = .resourceNotFound_ErrDowdownInternalError
            case .errDowdownParamsError: 
                code = .resourceNotFound_ErrDowdownParamsError
            case .errDowdownSourceError: 
                code = .resourceNotFound_ErrDowdownSourceError
            case .errDowdownTimeOut: 
                code = .resourceNotFound_ErrDowdownTimeOut
            }
            return TCCmsError(code, context: self.context)
        }
    }
}
