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

extension TCLiveError {
    public struct UnsupportedOperation: TCLiveErrorType {
        enum Code: String {
            case notLVBCodeMode = "UnsupportedOperation.NotLVBCodeMode"
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

        /// 非直播码/新版控制台模式。
        ///
        /// 请升级至新版直播控制台
        public static var notLVBCodeMode: UnsupportedOperation {
            UnsupportedOperation(.notLVBCodeMode)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asLiveError() -> TCLiveError {
            let code: TCLiveError.Code
            switch self.error {
            case .notLVBCodeMode:
                code = .unsupportedOperation_NotLVBCodeMode
            case .other:
                code = .unsupportedOperation
            }
            return TCLiveError(code, context: self.context)
        }
    }
}
