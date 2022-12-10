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

extension TCTeoError {
    public struct LimitExceeded: TCErrorType {
        enum Code: String {
            case batchQuota = "LimitExceeded.BatchQuota"
            case dailyQuota = "LimitExceeded.DailyQuota"
            case rateLimitExceeded = "LimitExceeded.RateLimitExceeded"
            case other = "LimitExceeded"
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
        
        /// 本次提交的资源数超过上限。
        public static var batchQuota: LimitExceeded {
            LimitExceeded(.batchQuota)
        }
        
        /// 当天提交的资源数超过上限。
        public static var dailyQuota: LimitExceeded {
            LimitExceeded(.dailyQuota)
        }
        
        /// 单位时间内接口请求频率达到限制。
        public static var rateLimitExceeded: LimitExceeded {
            LimitExceeded(.rateLimitExceeded)
        }
        
        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }
    }
}

extension TCTeoError.LimitExceeded: Equatable {
    public static func == (lhs: TCTeoError.LimitExceeded, rhs: TCTeoError.LimitExceeded) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCTeoError.LimitExceeded: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCTeoError.LimitExceeded {
    /// - Returns: ``TCTeoError`` that holds the same error and context.
    public func toTeoError() -> TCTeoError {
        guard let code = TCTeoError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCTeoError(code, context: self.context)
    }
}

extension TCTeoError.LimitExceeded {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
