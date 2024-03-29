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

extension TCTatError {
    public struct UnauthorizedOperation: TCTatErrorType {
        enum Code: String {
            case assumeRoleUnauthorized = "UnauthorizedOperation.AssumeRoleUnauthorized"
            case camAuthFailed = "UnauthorizedOperation.CamAuthFailed"
            case invalidToken = "UnauthorizedOperation.InvalidToken"
            case mfaExpired = "UnauthorizedOperation.MFAExpired"
            case mfaNotFound = "UnauthorizedOperation.MFANotFound"
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

        /// 角色扮演未授权。
        public static var assumeRoleUnauthorized: UnauthorizedOperation {
            UnauthorizedOperation(.assumeRoleUnauthorized)
        }

        /// CAM鉴权失败。
        public static var camAuthFailed: UnauthorizedOperation {
            UnauthorizedOperation(.camAuthFailed)
        }

        /// Token 无效。
        public static var invalidToken: UnauthorizedOperation {
            UnauthorizedOperation(.invalidToken)
        }

        /// Multi-Factor Authentication(MFA) 过期。
        public static var mfaExpired: UnauthorizedOperation {
            UnauthorizedOperation(.mfaExpired)
        }

        /// Multi-Factor Authentication(MFA) 不存在。
        public static var mfaNotFound: UnauthorizedOperation {
            UnauthorizedOperation(.mfaNotFound)
        }

        public func asTatError() -> TCTatError {
            let code: TCTatError.Code
            switch self.error {
            case .assumeRoleUnauthorized:
                code = .unauthorizedOperation_AssumeRoleUnauthorized
            case .camAuthFailed:
                code = .unauthorizedOperation_CamAuthFailed
            case .invalidToken:
                code = .unauthorizedOperation_InvalidToken
            case .mfaExpired:
                code = .unauthorizedOperation_MFAExpired
            case .mfaNotFound:
                code = .unauthorizedOperation_MFANotFound
            }
            return TCTatError(code, context: self.context)
        }
    }
}
