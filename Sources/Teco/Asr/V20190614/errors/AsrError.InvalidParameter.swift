//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCAsrError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case errorContentlength = "InvalidParameter.ErrorContentlength"
            case errorParamsMissing = "InvalidParameter.ErrorParamsMissing"
            case errorParsequest = "InvalidParameter.ErrorParsequest"
            case fileEncode = "InvalidParameter.FileEncode"
            case invalidVocabState = "InvalidParameter.InvalidVocabState"
            case modelState = "InvalidParameter.ModelState"
            case other = "InvalidParameter"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
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
        
        /// 请求数据长度无效。
        public static var errorContentlength: InvalidParameter {
            InvalidParameter(.errorContentlength)
        }
        
        /// 参数不全。
        public static var errorParamsMissing: InvalidParameter {
            InvalidParameter(.errorParamsMissing)
        }
        
        /// 解析请求数据失败。
        public static var errorParsequest: InvalidParameter {
            InvalidParameter(.errorParsequest)
        }
        
        /// 文件编码错误。
        public static var fileEncode: InvalidParameter {
            InvalidParameter(.fileEncode)
        }
        
        /// 非法的词表状态。
        public static var invalidVocabState: InvalidParameter {
            InvalidParameter(.invalidVocabState)
        }
        
        /// 该模型状态不允许删除。
        public static var modelState: InvalidParameter {
            InvalidParameter(.modelState)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCAsrError.InvalidParameter: Equatable {
    public static func == (lhs: TCAsrError.InvalidParameter, rhs: TCAsrError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAsrError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAsrError.InvalidParameter {
    public func toAsrError() -> TCAsrError {
        guard let code = TCAsrError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAsrError(code, context: self.context)
    }
}