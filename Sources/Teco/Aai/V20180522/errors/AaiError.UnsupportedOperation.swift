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

extension TCAaiError {
    public struct UnsupportedOperation: TCAaiErrorType {
        enum Code: String {
            case accountArrears = "UnsupportedOperation.AccountArrears"
            case noFreeAccount = "UnsupportedOperation.NoFreeAccount"
            case pkgExhausted = "UnsupportedOperation.PkgExhausted"
            case serverNotOpen = "UnsupportedOperation.ServerNotOpen"
            case serverStopped = "UnsupportedOperation.ServerStopped"
            case textTooLong = "UnsupportedOperation.TextTooLong"
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

        /// 账号欠费。
        public static var accountArrears: UnsupportedOperation {
            UnsupportedOperation(.accountArrears)
        }

        /// 免费用量耗尽。
        public static var noFreeAccount: UnsupportedOperation {
            UnsupportedOperation(.noFreeAccount)
        }

        /// 资源包余量已用尽。
        public static var pkgExhausted: UnsupportedOperation {
            UnsupportedOperation(.pkgExhausted)
        }

        /// 服务未开通。
        public static var serverNotOpen: UnsupportedOperation {
            UnsupportedOperation(.serverNotOpen)
        }

        /// 服务停服。
        public static var serverStopped: UnsupportedOperation {
            UnsupportedOperation(.serverStopped)
        }

        /// 文本过长，请参考请求参数Text的说明。
        public static var textTooLong: UnsupportedOperation {
            UnsupportedOperation(.textTooLong)
        }

        public func asAaiError() -> TCAaiError {
            let code: TCAaiError.Code
            switch self.error {
            case .accountArrears:
                code = .unsupportedOperation_AccountArrears
            case .noFreeAccount:
                code = .unsupportedOperation_NoFreeAccount
            case .pkgExhausted:
                code = .unsupportedOperation_PkgExhausted
            case .serverNotOpen:
                code = .unsupportedOperation_ServerNotOpen
            case .serverStopped:
                code = .unsupportedOperation_ServerStopped
            case .textTooLong:
                code = .unsupportedOperation_TextTooLong
            }
            return TCAaiError(code, context: self.context)
        }
    }
}
