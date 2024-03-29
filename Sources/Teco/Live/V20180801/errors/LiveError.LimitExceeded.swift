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

extension TCLiveError {
    public struct LimitExceeded: TCLiveErrorType {
        enum Code: String {
            case maximumRunningTask = "LimitExceeded.MaximumRunningTask"
            case maximumTask = "LimitExceeded.MaximumTask"
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

        /// 当前并发任务数超限制。
        public static var maximumRunningTask: LimitExceeded {
            LimitExceeded(.maximumRunningTask)
        }

        /// 当天已创建任务数超限制。
        public static var maximumTask: LimitExceeded {
            LimitExceeded(.maximumTask)
        }

        /// 单位时间内接口请求频率达到限制。
        ///
        /// 请参考ssl证书-获取证书详情(https://cloud.tencent.com/document/api/400/41673)
        public static var rateLimitExceeded: LimitExceeded {
            LimitExceeded(.rateLimitExceeded)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asLiveError() -> TCLiveError {
            let code: TCLiveError.Code
            switch self.error {
            case .maximumRunningTask:
                code = .limitExceeded_MaximumRunningTask
            case .maximumTask:
                code = .limitExceeded_MaximumTask
            case .rateLimitExceeded:
                code = .limitExceeded_RateLimitExceeded
            case .other:
                code = .limitExceeded
            }
            return TCLiveError(code, context: self.context)
        }
    }
}
