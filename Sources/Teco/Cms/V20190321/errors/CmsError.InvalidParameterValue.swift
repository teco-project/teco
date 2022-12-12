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
    public struct InvalidParameterValue: TCCmsErrorType {
        enum Code: String {
            case errFileContent = "InvalidParameterValue.ErrFileContent"
            case errImageSize = "InvalidParameterValue.ErrImageSize"
            case errTextContentLen = "InvalidParameterValue.ErrTextContentLen"
            case errTextContentType = "InvalidParameterValue.ErrTextContentType"
            case invalidContent = "InvalidParameterValue.InvalidContent"
            case invalidFileContentSize = "InvalidParameterValue.InvalidFileContentSize"
            case invalidImageContent = "InvalidParameterValue.InvalidImageContent"
            case invalidParameter = "InvalidParameterValue.InvalidParameter"
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
        
        /// FileContent不可用：需Base64编码
        public static var errFileContent: InvalidParameterValue {
            InvalidParameterValue(.errFileContent)
        }
        
        /// 图片尺寸错误。
        public static var errImageSize: InvalidParameterValue {
            InvalidParameterValue(.errImageSize)
        }
        
        /// 文本内容过长。
        public static var errTextContentLen: InvalidParameterValue {
            InvalidParameterValue(.errTextContentLen)
        }
        
        /// 文本内容类型错误：需base64编码
        public static var errTextContentType: InvalidParameterValue {
            InvalidParameterValue(.errTextContentType)
        }
        
        /// Content参数错误
        public static var invalidContent: InvalidParameterValue {
            InvalidParameterValue(.invalidContent)
        }
        
        /// 图片文件内容大小异常。
        public static var invalidFileContentSize: InvalidParameterValue {
            InvalidParameterValue(.invalidFileContentSize)
        }
        
        /// 图片内容错误
        public static var invalidImageContent: InvalidParameterValue {
            InvalidParameterValue(.invalidImageContent)
        }
        
        /// 参数取值错误
        public static var invalidParameter: InvalidParameterValue {
            InvalidParameterValue(.invalidParameter)
        }
        
        public func asCmsError() -> TCCmsError {
            let code: TCCmsError.Code
            switch self.error {
            case .errFileContent: 
                code = .invalidParameterValue_ErrFileContent
            case .errImageSize: 
                code = .invalidParameterValue_ErrImageSize
            case .errTextContentLen: 
                code = .invalidParameterValue_ErrTextContentLen
            case .errTextContentType: 
                code = .invalidParameterValue_ErrTextContentType
            case .invalidContent: 
                code = .invalidParameterValue_InvalidContent
            case .invalidFileContentSize: 
                code = .invalidParameterValue_InvalidFileContentSize
            case .invalidImageContent: 
                code = .invalidParameterValue_InvalidImageContent
            case .invalidParameter: 
                code = .invalidParameterValue_InvalidParameter
            }
            return TCCmsError(code, context: self.context)
        }
    }
}
