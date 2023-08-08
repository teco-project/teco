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
            case packNotAllow = "LimitExceeded.PackNotAllow"
            case queryTimeLimitExceeded = "LimitExceeded.QueryTimeLimitExceeded"
            case rateLimitExceeded = "LimitExceeded.RateLimitExceeded"
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

        /// 计费套餐不支持。
        public static var packNotAllow: LimitExceeded {
            LimitExceeded(.packNotAllow)
        }

        /// 查询时间范围超出限制。
        ///
        /// 减少时间查询范围
        public static var queryTimeLimitExceeded: LimitExceeded {
            LimitExceeded(.queryTimeLimitExceeded)
        }

        /// 单位时间内接口请求频率达到限制。
        public static var rateLimitExceeded: LimitExceeded {
            LimitExceeded(.rateLimitExceeded)
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
            case .packNotAllow:
                code = .limitExceeded_PackNotAllow
            case .queryTimeLimitExceeded:
                code = .limitExceeded_QueryTimeLimitExceeded
            case .rateLimitExceeded:
                code = .limitExceeded_RateLimitExceeded
            case .other:
                code = .limitExceeded
            }
            return TCTeoError(code, context: self.context)
        }
    }
}
