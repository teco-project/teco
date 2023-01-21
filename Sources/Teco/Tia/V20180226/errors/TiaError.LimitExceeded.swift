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

extension TCTiaError {
    public struct LimitExceeded: TCTiaErrorType {
        enum Code: String {
            case function = "LimitExceeded.Function"
            case memory = "LimitExceeded.Memory"
            case timeout = "LimitExceeded.Timeout"
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

        /// 函数数量超出最大限制。
        public static var function: LimitExceeded {
            LimitExceeded(.function)
        }

        /// 内存超出最大限制。
        public static var memory: LimitExceeded {
            LimitExceeded(.memory)
        }

        /// Timeout超出最大限制。
        public static var timeout: LimitExceeded {
            LimitExceeded(.timeout)
        }

        public func asTiaError() -> TCTiaError {
            let code: TCTiaError.Code
            switch self.error {
            case .function:
                code = .limitExceeded_Function
            case .memory:
                code = .limitExceeded_Memory
            case .timeout:
                code = .limitExceeded_Timeout
            }
            return TCTiaError(code, context: self.context)
        }
    }
}
