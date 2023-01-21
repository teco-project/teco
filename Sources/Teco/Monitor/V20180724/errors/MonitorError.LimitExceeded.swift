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

extension TCMonitorError {
    public struct LimitExceeded: TCMonitorErrorType {
        enum Code: String {
            case metricQuotaExceeded = "LimitExceeded.MetricQuotaExceeded"
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

        /// 指标数量达到配额限制，禁止含有未注册指标的请求。
        public static var metricQuotaExceeded: LimitExceeded {
            LimitExceeded(.metricQuotaExceeded)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .metricQuotaExceeded:
                code = .limitExceeded_MetricQuotaExceeded
            case .other:
                code = .limitExceeded
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
