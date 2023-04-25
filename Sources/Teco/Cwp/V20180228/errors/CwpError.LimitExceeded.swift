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

extension TCCwpError {
    public struct LimitExceeded: TCCwpErrorType {
        enum Code: String {
            case areaQuota = "LimitExceeded.AreaQuota"
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

        /// 超出批量添加数量。
        public static var areaQuota: LimitExceeded {
            LimitExceeded(.areaQuota)
        }

        /// 超过配额限制。
        public static var other: LimitExceeded {
            LimitExceeded(.other)
        }

        public func asCwpError() -> TCCwpError {
            let code: TCCwpError.Code
            switch self.error {
            case .areaQuota:
                code = .limitExceeded_AreaQuota
            case .other:
                code = .limitExceeded
            }
            return TCCwpError(code, context: self.context)
        }
    }
}
