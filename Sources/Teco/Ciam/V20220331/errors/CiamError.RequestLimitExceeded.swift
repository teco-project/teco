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

extension TCCiamError {
    public struct RequestLimitExceeded: TCCiamErrorType {
        enum Code: String {
            case frequentRequest = "RequestLimitExceeded.FrequentRequest"
            case repeatRequest = "RequestLimitExceeded.RepeatRequest"
            case other = "RequestLimitExceeded"
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
        
        /// 请求过于频繁，请稍后再试。
        public static var frequentRequest: RequestLimitExceeded {
            RequestLimitExceeded(.frequentRequest)
        }
        
        /// 请求重复，请稍后再试。
        public static var repeatRequest: RequestLimitExceeded {
            RequestLimitExceeded(.repeatRequest)
        }
        
        /// 请求的次数超过了频率限制。
        public static var other: RequestLimitExceeded {
            RequestLimitExceeded(.other)
        }
        
        public func asCiamError() -> TCCiamError {
            let code: TCCiamError.Code
            switch self.error {
            case .frequentRequest: 
                code = .requestLimitExceeded_FrequentRequest
            case .repeatRequest: 
                code = .requestLimitExceeded_RepeatRequest
            case .other: 
                code = .requestLimitExceeded
            }
            return TCCiamError(code, context: self.context)
        }
    }
}
