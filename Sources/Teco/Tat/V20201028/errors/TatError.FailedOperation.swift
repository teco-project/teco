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

extension TCTatError {
    public struct FailedOperation: TCTatErrorType {
        enum Code: String {
            case cvmError = "FailedOperation.CVMError"
            case lighthouseError = "FailedOperation.LighthouseError"
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

        /// 调用 CVM 失败。
        public static var cvmError: FailedOperation {
            FailedOperation(.cvmError)
        }

        /// 调用 Lighthouse 失败。
        public static var lighthouseError: FailedOperation {
            FailedOperation(.lighthouseError)
        }

        public func asTatError() -> TCTatError {
            let code: TCTatError.Code
            switch self.error {
            case .cvmError:
                code = .failedOperation_CVMError
            case .lighthouseError:
                code = .failedOperation_LighthouseError
            }
            return TCTatError(code, context: self.context)
        }
    }
}
