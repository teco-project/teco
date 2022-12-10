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

extension TCTioneError {
    public struct InvalidParameter: TCErrorType {
        enum Code: String {
            case tgwInvalidInterface = "InvalidParameter.TgwInvalidInterface"
            case tgwInvalidRequestBody = "InvalidParameter.TgwInvalidRequestBody"
            case validateError = "InvalidParameter.ValidateError"
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
        
        /// 无效的接口。
        public static var tgwInvalidInterface: InvalidParameter {
            InvalidParameter(.tgwInvalidInterface)
        }
        
        /// 无效的请求包体。
        public static var tgwInvalidRequestBody: InvalidParameter {
            InvalidParameter(.tgwInvalidRequestBody)
        }
        
        /// 请求参数校验失败。
        public static var validateError: InvalidParameter {
            InvalidParameter(.validateError)
        }
        
        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }
    }
}

extension TCTioneError.InvalidParameter: Equatable {
    public static func == (lhs: TCTioneError.InvalidParameter, rhs: TCTioneError.InvalidParameter) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTioneError.InvalidParameter: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTioneError.InvalidParameter {
    public func toTioneError() -> TCTioneError {
        guard let code = TCTioneError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTioneError(code, context: self.context)
    }
}