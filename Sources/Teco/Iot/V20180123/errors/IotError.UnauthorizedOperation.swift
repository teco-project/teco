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

extension TCIotError {
    public struct UnauthorizedOperation: TCIotErrorType {
        enum Code: String {
            case iotUserIsSuspended = "UnauthorizedOperation.IotUserIsSuspended"
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

        /// 用户被封禁。
        public static var iotUserIsSuspended: UnauthorizedOperation {
            UnauthorizedOperation(.iotUserIsSuspended)
        }

        public func asIotError() -> TCIotError {
            let code: TCIotError.Code
            switch self.error {
            case .iotUserIsSuspended:
                code = .unauthorizedOperation_IotUserIsSuspended
            }
            return TCIotError(code, context: self.context)
        }
    }
}
