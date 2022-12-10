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

extension TCRceError {
    public struct InvalidParameterValue: TCErrorType {
        enum Code: String {
            case badBody = "InvalidParameterValue.BadBody"
            case bodyTooLarge = "InvalidParameterValue.BodyTooLarge"
            case capMisMatch = "InvalidParameterValue.CapMisMatch"
            case httpMethodError = "InvalidParameterValue.HttpMethodError"
            case invalidDate = "InvalidParameterValue.InvalidDate"
            case invalidLimit = "InvalidParameterValue.InvalidLimit"
            case invalidNum = "InvalidParameterValue.InvalidNum"
            case invalidSrvId = "InvalidParameterValue.InvalidSrvId"
            case invalidStride = "InvalidParameterValue.InvalidStride"
            case other = "InvalidParameterValue"
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
        
        /// BadBody。
        public static var badBody: InvalidParameterValue {
            InvalidParameterValue(.badBody)
        }
        
        /// 请求包过大。
        public static var bodyTooLarge: InvalidParameterValue {
            InvalidParameterValue(.bodyTooLarge)
        }
        
        /// 验证码不匹配。
        public static var capMisMatch: InvalidParameterValue {
            InvalidParameterValue(.capMisMatch)
        }
        
        /// HTTP方法错误。
        public static var httpMethodError: InvalidParameterValue {
            InvalidParameterValue(.httpMethodError)
        }
        
        /// 日期取值错误。
        public static var invalidDate: InvalidParameterValue {
            InvalidParameterValue(.invalidDate)
        }
        
        /// PageLimit取值错误。
        public static var invalidLimit: InvalidParameterValue {
            InvalidParameterValue(.invalidLimit)
        }
        
        /// PageNum取值错误。
        public static var invalidNum: InvalidParameterValue {
            InvalidParameterValue(.invalidNum)
        }
        
        /// SrvId取值错误。
        public static var invalidSrvId: InvalidParameterValue {
            InvalidParameterValue(.invalidSrvId)
        }
        
        /// Stride取值错误。
        public static var invalidStride: InvalidParameterValue {
            InvalidParameterValue(.invalidStride)
        }
        
        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }
    }
}

extension TCRceError.InvalidParameterValue: Equatable {
    public static func == (lhs: TCRceError.InvalidParameterValue, rhs: TCRceError.InvalidParameterValue) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCRceError.InvalidParameterValue: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCRceError.InvalidParameterValue {
    public func toRceError() -> TCRceError {
        guard let code = TCRceError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCRceError(code, context: self.context)
    }
}