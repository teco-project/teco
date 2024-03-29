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

extension TCEcmError {
    public struct UnauthorizedOperation: TCEcmErrorType {
        enum Code: String {
            case forbiddenOperation = "UnauthorizedOperation.ForbiddenOperation"
            case mfaExpired = "UnauthorizedOperation.MFAExpired"
            case notCertification = "UnauthorizedOperation.NotCertification"
            case notHavePaymentRight = "UnauthorizedOperation.NotHavePaymentRight"
            case windowsImage = "UnauthorizedOperation.WindowsImage"
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

        /// 没有权限进行该操作。
        public static var forbiddenOperation: UnauthorizedOperation {
            UnauthorizedOperation(.forbiddenOperation)
        }

        /// UnauthorizedOperation.MFAExpired
        public static var mfaExpired: UnauthorizedOperation {
            UnauthorizedOperation(.mfaExpired)
        }

        /// UnauthorizedOperation.NotCertification
        public static var notCertification: UnauthorizedOperation {
            UnauthorizedOperation(.notCertification)
        }

        /// UnauthorizedOperation.NotHavePaymentRight
        public static var notHavePaymentRight: UnauthorizedOperation {
            UnauthorizedOperation(.notHavePaymentRight)
        }

        /// 无windows镜像权限。
        public static var windowsImage: UnauthorizedOperation {
            UnauthorizedOperation(.windowsImage)
        }

        /// 未授权操作。
        public static var other: UnauthorizedOperation {
            UnauthorizedOperation(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .forbiddenOperation:
                code = .unauthorizedOperation_ForbiddenOperation
            case .mfaExpired:
                code = .unauthorizedOperation_MFAExpired
            case .notCertification:
                code = .unauthorizedOperation_NotCertification
            case .notHavePaymentRight:
                code = .unauthorizedOperation_NotHavePaymentRight
            case .windowsImage:
                code = .unauthorizedOperation_WindowsImage
            case .other:
                code = .unauthorizedOperation
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
