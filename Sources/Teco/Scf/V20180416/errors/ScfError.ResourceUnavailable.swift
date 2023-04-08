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

extension TCScfError {
    public struct ResourceUnavailable: TCScfErrorType {
        enum Code: String {
            case insufficientBalance = "ResourceUnavailable.InsufficientBalance"
            case namespace = "ResourceUnavailable.Namespace"
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

        /// 余额不足，请先充值。
        public static var insufficientBalance: ResourceUnavailable {
            ResourceUnavailable(.insufficientBalance)
        }

        /// Namespace不可用。
        public static var namespace: ResourceUnavailable {
            ResourceUnavailable(.namespace)
        }

        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .insufficientBalance:
                code = .resourceUnavailable_InsufficientBalance
            case .namespace:
                code = .resourceUnavailable_Namespace
            }
            return TCScfError(code, context: self.context)
        }
    }
}
