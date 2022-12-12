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
    public struct InvalidParameterValue: TCTmsErrorType {
        enum Code: String {
            case errFileContent = "InvalidParameterValue.ErrFileContent"
            case errTextContentLen = "InvalidParameterValue.ErrTextContentLen"
            case errTextContentType = "InvalidParameterValue.ErrTextContentType"
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
        
        /// FileContent不可用，传入的Base64编码无法转换成标准utf8内容。
        public static var errFileContent: InvalidParameterValue {
            InvalidParameterValue(.errFileContent)
        }
        
        /// 请求的文本长度超过限制。
        ///
        /// 咨询运营人员，获取接口的文本入参长度限制，调整文本入参长度。
        public static var errTextContentLen: InvalidParameterValue {
            InvalidParameterValue(.errTextContentLen)
        }
        
        /// 请求的文本格式错误（需要base64编码格式的文本）。
        ///
        /// 对请求的文本进行base64编码
        public static var errTextContentType: InvalidParameterValue {
            InvalidParameterValue(.errTextContentType)
        }
        
        public func asTmsError() -> TCTmsError {
            let code: TCTmsError.Code
            switch self.error {
            case .errFileContent: 
                code = .invalidParameterValue_ErrFileContent
            case .errTextContentLen: 
                code = .invalidParameterValue_ErrTextContentLen
            case .errTextContentType: 
                code = .invalidParameterValue_ErrTextContentType
            }
            return TCTmsError(code, context: self.context)
        }
    }
}
