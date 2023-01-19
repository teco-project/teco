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

extension TCEccError {
    public struct UnauthorizedOperation: TCEccErrorType {
        enum Code: String {
            case licenseInvalidForbiddenAccessError = "UnauthorizedOperation.LicenseInvalidForbiddenAccessError"
            case serverNameUnauthorizedInError = "UnauthorizedOperation.ServerNameUnauthorizedInError"
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

        /// license无效。
        public static var licenseInvalidForbiddenAccessError: UnauthorizedOperation {
            UnauthorizedOperation(.licenseInvalidForbiddenAccessError)
        }

        /// license中未授权该服务。
        public static var serverNameUnauthorizedInError: UnauthorizedOperation {
            UnauthorizedOperation(.serverNameUnauthorizedInError)
        }

        public func asEccError() -> TCEccError {
            let code: TCEccError.Code
            switch self.error {
            case .licenseInvalidForbiddenAccessError:
                code = .unauthorizedOperation_LicenseInvalidForbiddenAccessError
            case .serverNameUnauthorizedInError:
                code = .unauthorizedOperation_ServerNameUnauthorizedInError
            }
            return TCEccError(code, context: self.context)
        }
    }
}
