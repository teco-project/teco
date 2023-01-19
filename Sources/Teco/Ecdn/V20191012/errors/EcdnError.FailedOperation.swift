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

extension TCEcdnError {
    public struct FailedOperation: TCEcdnErrorType {
        enum Code: String {
            case ecdnConfigError = "FailedOperation.EcdnConfigError"
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

        /// 域名配置更新操作失败，请重试或联系客服人员解决。
        public static var ecdnConfigError: FailedOperation {
            FailedOperation(.ecdnConfigError)
        }

        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .ecdnConfigError:
                code = .failedOperation_EcdnConfigError
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
