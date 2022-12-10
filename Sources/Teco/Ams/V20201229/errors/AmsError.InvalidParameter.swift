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

extension TCAmsError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case imageSizeTooSmall = "InvalidParameter.ImageSizeTooSmall"
            case invalidImageContent = "InvalidParameter.InvalidImageContent"
            case parameterError = "InvalidParameter.ParameterError"
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
        
        /// InvalidParameter.ImageSizeTooSmall
        public static var imageSizeTooSmall: InvalidParameter {
            InvalidParameter(.imageSizeTooSmall)
        }
        
        /// InvalidParameter.InvalidImageContent
        public static var invalidImageContent: InvalidParameter {
            InvalidParameter(.invalidImageContent)
        }
        
        /// InvalidParameter.ParameterError
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCAmsError.InvalidParameter: Equatable {
    public static func == (lhs: TCAmsError.InvalidParameter, rhs: TCAmsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCAmsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCAmsError.InvalidParameter {
    public func toAmsError() -> TCAmsError {
        guard let code = TCAmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCAmsError(code, context: self.context)
    }
}