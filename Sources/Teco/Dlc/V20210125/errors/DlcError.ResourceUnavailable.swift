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

extension TCDlcError {
    public struct ResourceUnavailable: TCDlcErrorType {
        enum Code: String {
            case balanceInsufficient = "ResourceUnavailable.BalanceInsufficient"
            case other = "ResourceUnavailable"
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

        /// 账号余额不足，无法执行SQL任务。
        ///
        /// 请充值。
        public static var balanceInsufficient: ResourceUnavailable {
            ResourceUnavailable(.balanceInsufficient)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asDlcError() -> TCDlcError {
            let code: TCDlcError.Code
            switch self.error {
            case .balanceInsufficient:
                code = .resourceUnavailable_BalanceInsufficient
            case .other:
                code = .resourceUnavailable
            }
            return TCDlcError(code, context: self.context)
        }
    }
}
