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

extension TCTemError {
    public struct UnsupportedOperation: TCTemErrorType {
        enum Code: String {
            case unsupportAction = "UnsupportedOperation.UnsupportAction"
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

        /// 不支持的ACTION。
        public static var unsupportAction: UnsupportedOperation {
            UnsupportedOperation(.unsupportAction)
        }

        public func asTemError() -> TCTemError {
            let code: TCTemError.Code
            switch self.error {
            case .unsupportAction:
                code = .unsupportedOperation_UnsupportAction
            }
            return TCTemError(code, context: self.context)
        }
    }
}
