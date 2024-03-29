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

extension TCFaceidError {
    public struct UnauthorizedOperation: TCFaceidErrorType {
        enum Code: String {
            case activateError = "UnauthorizedOperation.ActivateError"
            case activating = "UnauthorizedOperation.Activating"
            case arrears = "UnauthorizedOperation.Arrears"
            case chargeStatusException = "UnauthorizedOperation.ChargeStatusException"
            case nonAuthorize = "UnauthorizedOperation.NonAuthorize"
            case nonactivated = "UnauthorizedOperation.Nonactivated"
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

        /// 服务开通异常。
        public static var activateError: UnauthorizedOperation {
            UnauthorizedOperation(.activateError)
        }

        /// 服务开通中。
        public static var activating: UnauthorizedOperation {
            UnauthorizedOperation(.activating)
        }

        /// 帐号已欠费。
        ///
        /// None
        public static var arrears: UnauthorizedOperation {
            UnauthorizedOperation(.arrears)
        }

        /// 计费状态异常。
        public static var chargeStatusException: UnauthorizedOperation {
            UnauthorizedOperation(.chargeStatusException)
        }

        /// 账号未实名。
        public static var nonAuthorize: UnauthorizedOperation {
            UnauthorizedOperation(.nonAuthorize)
        }

        /// 未开通服务。
        public static var nonactivated: UnauthorizedOperation {
            UnauthorizedOperation(.nonactivated)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asFaceidError() -> TCFaceidError {
            let code: TCFaceidError.Code
            switch self.error {
            case .activateError:
                code = .unauthorizedOperation_ActivateError
            case .activating:
                code = .unauthorizedOperation_Activating
            case .arrears:
                code = .unauthorizedOperation_Arrears
            case .chargeStatusException:
                code = .unauthorizedOperation_ChargeStatusException
            case .nonAuthorize:
                code = .unauthorizedOperation_NonAuthorize
            case .nonactivated:
                code = .unauthorizedOperation_Nonactivated
            case .other:
                code = .unauthorizedOperation
            }
            return TCFaceidError(code, context: self.context)
        }
    }
}
