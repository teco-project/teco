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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCCccError {
    public struct LimitExceeded: TCCccErrorType {
        enum Code: String {
            case outOfCountLimit = "LimitExceeded.OutOfCountLimit"
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

        /// 超出数量限制。
        public static var outOfCountLimit: LimitExceeded {
            LimitExceeded(.outOfCountLimit)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asCccError() -> TCCccError {
            let code: TCCccError.Code
            switch self.error {
            case .outOfCountLimit:
                code = .limitExceeded_OutOfCountLimit
            case .other:
                code = .limitExceeded
            }
            return TCCccError(code, context: self.context)
        }
    }
}
