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

extension TCGmeError {
    public struct UnsupportedOperation: TCGmeErrorType {
        enum Code: String {
            case pttSwitchOff = "UnsupportedOperation.PTTSwitchOff"
            case serviceNotOpened = "UnsupportedOperation.ServiceNotOpened"
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

        /// 语音转文本开关未开启。
        public static var pttSwitchOff: UnsupportedOperation {
            UnsupportedOperation(.pttSwitchOff)
        }

        /// 录制服务未开通
        public static var serviceNotOpened: UnsupportedOperation {
            UnsupportedOperation(.serviceNotOpened)
        }

        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }

        public func asGmeError() -> TCGmeError {
            let code: TCGmeError.Code
            switch self.error {
            case .pttSwitchOff:
                code = .unsupportedOperation_PTTSwitchOff
            case .serviceNotOpened:
                code = .unsupportedOperation_ServiceNotOpened
            case .other:
                code = .unsupportedOperation
            }
            return TCGmeError(code, context: self.context)
        }
    }
}
