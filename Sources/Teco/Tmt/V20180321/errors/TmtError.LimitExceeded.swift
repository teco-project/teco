//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension TCTmtError {
    public struct LimitExceeded: TCTmtErrorType {
        enum Code: String {
            case limitedAccessFrequency = "LimitExceeded.LimitedAccessFrequency"
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

        /// 超出请求频率。
        public static var limitedAccessFrequency: LimitExceeded {
            LimitExceeded(.limitedAccessFrequency)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTmtError() -> TCTmtError {
            let code: TCTmtError.Code
            switch self.error {
            case .limitedAccessFrequency:
                code = .limitExceeded_LimitedAccessFrequency
            case .other:
                code = .limitExceeded
            }
            return TCTmtError(code, context: self.context)
        }
    }
}
