//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCLighthouseError {
    public struct UnauthorizedOperation: TCLighthouseErrorType {
        enum Code: String {
            case mfaExpired = "UnauthorizedOperation.MFAExpired"
            case mfaNotFound = "UnauthorizedOperation.MFANotFound"
            case noPermission = "UnauthorizedOperation.NoPermission"
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

        /// MFA 已过期。
        public static var mfaExpired: UnauthorizedOperation {
            UnauthorizedOperation(.mfaExpired)
        }

        /// MFA 不存在。
        public static var mfaNotFound: UnauthorizedOperation {
            UnauthorizedOperation(.mfaNotFound)
        }

        /// 无权限。
        public static var noPermission: UnauthorizedOperation {
            UnauthorizedOperation(.noPermission)
        }

        public func asLighthouseError() -> TCLighthouseError {
            let code: TCLighthouseError.Code
            switch self.error {
            case .mfaExpired: 
                code = .unauthorizedOperation_MFAExpired
            case .mfaNotFound: 
                code = .unauthorizedOperation_MFANotFound
            case .noPermission: 
                code = .unauthorizedOperation_NoPermission
            }
            return TCLighthouseError(code, context: self.context)
        }
    }
}
