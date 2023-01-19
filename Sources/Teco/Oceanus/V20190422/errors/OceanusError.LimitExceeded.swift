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

extension TCOceanusError {
    public struct LimitExceeded: TCOceanusErrorType {
        enum Code: String {
            case job = "LimitExceeded.Job"
            case jobConfig = "LimitExceeded.JobConfig"
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

        /// Job个数超过限额。
        public static var job: LimitExceeded {
            LimitExceeded(.job)
        }

        /// 作业配置超出限制。
        public static var jobConfig: LimitExceeded {
            LimitExceeded(.jobConfig)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asOceanusError() -> TCOceanusError {
            let code: TCOceanusError.Code
            switch self.error {
            case .job:
                code = .limitExceeded_Job
            case .jobConfig:
                code = .limitExceeded_JobConfig
            case .other:
                code = .limitExceeded
            }
            return TCOceanusError(code, context: self.context)
        }
    }
}
