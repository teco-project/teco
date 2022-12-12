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

extension TCSoeError {
    public struct LimitExceeded: TCSoeErrorType {
        enum Code: String {
            case concurrencyLimitExceeded = "LimitExceeded.ConcurrencyLimitExceeded"
            case other = "LimitExceeded"
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
        
        /// 请求并发数超过配额限制，请减少并发数或联系我们调大并发限额。
        ///
        /// 减少并发数或联系我们调大并发限额。
        public static var concurrencyLimitExceeded: LimitExceeded {
            LimitExceeded(.concurrencyLimitExceeded)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
        
        public func asSoeError() -> TCSoeError {
            let code: TCSoeError.Code
            switch self.error {
            case .concurrencyLimitExceeded: 
                code = .limitExceeded_ConcurrencyLimitExceeded
            case .other: 
                code = .limitExceeded
            }
            return TCSoeError(code, context: self.context)
        }
    }
}
