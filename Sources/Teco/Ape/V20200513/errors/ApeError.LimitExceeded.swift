//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCApeError {
    public struct LimitExceeded: TCApeErrorType {
        enum Code: String {
            case orderExpiredError = "LimitExceeded.OrderExpiredError"
            case orderLimitError = "LimitExceeded.OrderLimitError"
            case other = "LimitExceeded"
        }

        private let error: Code

        public let context: TCErrorContext?

        public var errorCode: String {
            self.error.rawValue
        }

        /// Initializer used by ``TCClient`` to match an error of this type.
        public init?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }

        internal init(_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }

        /// 图片使用期限已过期。
        public static var orderExpiredError: LimitExceeded {
            LimitExceeded(.orderExpiredError)
        }

        /// 下单频率超过限制。
        public static var orderLimitError: LimitExceeded {
            LimitExceeded(.orderLimitError)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asApeError() -> TCApeError {
            let code: TCApeError.Code
            switch self.error {
            case .orderExpiredError:
                code = .limitExceeded_OrderExpiredError
            case .orderLimitError:
                code = .limitExceeded_OrderLimitError
            case .other:
                code = .limitExceeded
            }
            return TCApeError(code, context: self.context)
        }
    }
}
