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
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case errAction = "InvalidParameter.ErrAction"
            case errTextContentLen = "InvalidParameter.ErrTextContentLen"
            case errTextContentType = "InvalidParameter.ErrTextContentType"
            case parameterError = "InvalidParameter.ParameterError"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 错误的action。
        public static var errAction: InvalidParameter {
            InvalidParameter(.errAction)
        }
        
        /// 请求的文本长度过长。
        public static var errTextContentLen: InvalidParameter {
            InvalidParameter(.errTextContentLen)
        }
        
        /// 文本类型错误，需要base64的文本。
        public static var errTextContentType: InvalidParameter {
            InvalidParameter(.errTextContentType)
        }
        
        /// InvalidParameter.ParameterError
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }
    }
}

extension TCTmsError.InvalidParameter: Equatable {
    public static func == (lhs: TCTmsError.InvalidParameter, rhs: TCTmsError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTmsError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTmsError.InvalidParameter {
    /// - Returns: ``TCTmsError`` that holds the same error and context.
    public func toTmsError() -> TCTmsError {
        guard let code = TCTmsError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTmsError(code, context: self.context)
    }
}

extension TCTmsError.InvalidParameter {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
