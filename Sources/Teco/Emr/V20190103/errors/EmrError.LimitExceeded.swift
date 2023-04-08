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

extension TCEmrError {
    public struct LimitExceeded: TCEmrErrorType {
        enum Code: String {
            case bootstrapActionsNumLimitExceeded = "LimitExceeded.BootstrapActionsNumLimitExceeded"
            case securityGroupNumLimitExceeded = "LimitExceeded.SecurityGroupNumLimitExceeded"
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

        /// 引导脚本数量超过限制。
        public static var bootstrapActionsNumLimitExceeded: LimitExceeded {
            LimitExceeded(.bootstrapActionsNumLimitExceeded)
        }

        /// 安全组数量超过限制。
        public static var securityGroupNumLimitExceeded: LimitExceeded {
            LimitExceeded(.securityGroupNumLimitExceeded)
        }

        public func asEmrError() -> TCEmrError {
            let code: TCEmrError.Code
            switch self.error {
            case .bootstrapActionsNumLimitExceeded:
                code = .limitExceeded_BootstrapActionsNumLimitExceeded
            case .securityGroupNumLimitExceeded:
                code = .limitExceeded_SecurityGroupNumLimitExceeded
            }
            return TCEmrError(code, context: self.context)
        }
    }
}
