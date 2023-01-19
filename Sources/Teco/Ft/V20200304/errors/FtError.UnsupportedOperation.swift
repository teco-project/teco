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

extension TCFtError {
    public struct UnsupportedOperation: TCFtErrorType {
        enum Code: String {
            case unknowMethod = "UnsupportedOperation.UnknowMethod"
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

        /// 未知方法名。
        public static var unknowMethod: UnsupportedOperation {
            UnsupportedOperation(.unknowMethod)
        }

        public func asFtError() -> TCFtError {
            let code: TCFtError.Code
            switch self.error {
            case .unknowMethod:
                code = .unsupportedOperation_UnknowMethod
            }
            return TCFtError(code, context: self.context)
        }
    }
}
