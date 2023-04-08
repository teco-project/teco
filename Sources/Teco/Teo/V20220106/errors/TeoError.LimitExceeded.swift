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

import TecoCore

extension TCTeoError {
    public struct LimitExceeded: TCTeoErrorType {
        enum Code: String {
            case batchQuota = "LimitExceeded.BatchQuota"
            case dailyQuota = "LimitExceeded.DailyQuota"
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

        /// 本次提交的资源数超过上限。
        public static var batchQuota: LimitExceeded {
            LimitExceeded(.batchQuota)
        }

        /// 当天提交的资源数超过上限。
        public static var dailyQuota: LimitExceeded {
            LimitExceeded(.dailyQuota)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTeoError() -> TCTeoError {
            let code: TCTeoError.Code
            switch self.error {
            case .batchQuota:
                code = .limitExceeded_BatchQuota
            case .dailyQuota:
                code = .limitExceeded_DailyQuota
            case .other:
                code = .limitExceeded
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
