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

extension TCKeewidbError {
    public struct UnsupportedOperation: TCKeewidbErrorType {
        enum Code: String {
            case isAutoRenewError = "UnsupportedOperation.IsAutoRenewError"
            case other = "UnsupportedOperation"
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

        /// 自动续费标识错误。
        public static var isAutoRenewError: UnsupportedOperation {
            UnsupportedOperation(.isAutoRenewError)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asKeewidbError() -> TCKeewidbError {
            let code: TCKeewidbError.Code
            switch self.error {
            case .isAutoRenewError:
                code = .unsupportedOperation_IsAutoRenewError
            case .other:
                code = .unsupportedOperation
            }
            return TCKeewidbError(code, context: self.context)
        }
    }
}
