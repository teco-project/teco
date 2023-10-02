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

extension TCTseError {
    public struct LimitExceeded: TCTseErrorType {
        enum Code: String {
            case lbDomains = "LimitExceeded.LBDomains"
            case limitExceeded = "LimitExceeded.LimitExceeded"
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

        /// 提工单申请开白，调整限制
        public static var lbDomains: LimitExceeded {
            LimitExceeded(.lbDomains)
        }

        /// 参数超过限制。
        public static var limitExceeded: LimitExceeded {
            LimitExceeded(.limitExceeded)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asTseError() -> TCTseError {
            let code: TCTseError.Code
            switch self.error {
            case .lbDomains:
                code = .limitExceeded_LBDomains
            case .limitExceeded:
                code = .limitExceeded_LimitExceeded
            case .other:
                code = .limitExceeded
            }
            return TCTseError(code, context: self.context)
        }
    }
}
