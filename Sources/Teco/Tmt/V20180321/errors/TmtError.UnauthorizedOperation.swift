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

extension TCTmtError {
    public struct UnauthorizedOperation: TCTmtErrorType {
        enum Code: String {
            case actionNotFound = "UnauthorizedOperation.ActionNotFound"
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

        /// 请填写正确的Action字段名称。
        public static var actionNotFound: UnauthorizedOperation {
            UnauthorizedOperation(.actionNotFound)
        }

        public func asTmtError() -> TCTmtError {
            let code: TCTmtError.Code
            switch self.error {
            case .actionNotFound:
                code = .unauthorizedOperation_ActionNotFound
            }
            return TCTmtError(code, context: self.context)
        }
    }
}
