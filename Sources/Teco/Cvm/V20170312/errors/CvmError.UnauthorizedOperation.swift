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

extension TCCvmError {
    public struct UnauthorizedOperation: TCCvmErrorType {
        enum Code: String {
            case imageNotBelongToAccount = "UnauthorizedOperation.ImageNotBelongToAccount"
            case invalidToken = "UnauthorizedOperation.InvalidToken"
            case mfaExpired = "UnauthorizedOperation.MFAExpired"
            case mfaNotFound = "UnauthorizedOperation.MFANotFound"
            case permissionDenied = "UnauthorizedOperation.PermissionDenied"
            case other = "UnauthorizedOperation"
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

        /// 指定的镜像不属于用户。
        public static var imageNotBelongToAccount: UnauthorizedOperation {
            UnauthorizedOperation(.imageNotBelongToAccount)
        }

        /// 请确认Token是否有效。
        public static var invalidToken: UnauthorizedOperation {
            UnauthorizedOperation(.invalidToken)
        }

        /// 您无法进行当前操作，请确认多因子认证（MFA）是否失效。
        ///
        /// 请先确认多因子认证（MFA）是否失效，然后再进行操作
        public static var mfaExpired: UnauthorizedOperation {
            UnauthorizedOperation(.mfaExpired)
        }

        /// 没有权限进行此操作，请确认是否存在多因子认证（MFA）。
        ///
        /// 请先确认是否存在多因子认证（MFA），然后进行此操作
        public static var mfaNotFound: UnauthorizedOperation {
            UnauthorizedOperation(.mfaNotFound)
        }

        /// 无权操作指定的资源，请正确配置CAM策略。
        public static var permissionDenied: UnauthorizedOperation {
            UnauthorizedOperation(.permissionDenied)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .imageNotBelongToAccount:
                code = .unauthorizedOperation_ImageNotBelongToAccount
            case .invalidToken:
                code = .unauthorizedOperation_InvalidToken
            case .mfaExpired:
                code = .unauthorizedOperation_MFAExpired
            case .mfaNotFound:
                code = .unauthorizedOperation_MFANotFound
            case .permissionDenied:
                code = .unauthorizedOperation_PermissionDenied
            case .other:
                code = .unauthorizedOperation
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
