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

extension TCOrganizationError {
    public struct InvalidParameter: TCOrganizationErrorType {
        enum Code: String {
            case allowQuitIllegal = "InvalidParameter.AllowQuitIllegal"
            case codeError = "InvalidParameter.CodeError"
            case codeExpired = "InvalidParameter.CodeExpired"
            case invalidEmail = "InvalidParameter.InvalidEmail"
            case organizationMemberNotExist = "InvalidParameter.OrganizationMemberNotExist"
            case passwordIllegal = "InvalidParameter.PasswordIllegal"
            case other = "InvalidParameter"
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

        /// 成员代付费模式，不允许主动退出组织。
        public static var allowQuitIllegal: InvalidParameter {
            InvalidParameter(.allowQuitIllegal)
        }

        /// 手机验证码错误。
        public static var codeError: InvalidParameter {
            InvalidParameter(.codeError)
        }

        /// 手机验证码已过期。
        public static var codeExpired: InvalidParameter {
            InvalidParameter(.codeExpired)
        }

        /// 无效的邮箱。
        public static var invalidEmail: InvalidParameter {
            InvalidParameter(.invalidEmail)
        }

        /// 组织成员不存在。
        public static var organizationMemberNotExist: InvalidParameter {
            InvalidParameter(.organizationMemberNotExist)
        }

        /// 密码不合法。
        public static var passwordIllegal: InvalidParameter {
            InvalidParameter(.passwordIllegal)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asOrganizationError() -> TCOrganizationError {
            let code: TCOrganizationError.Code
            switch self.error {
            case .allowQuitIllegal:
                code = .invalidParameter_AllowQuitIllegal
            case .codeError:
                code = .invalidParameter_CodeError
            case .codeExpired:
                code = .invalidParameter_CodeExpired
            case .invalidEmail:
                code = .invalidParameter_InvalidEmail
            case .organizationMemberNotExist:
                code = .invalidParameter_OrganizationMemberNotExist
            case .passwordIllegal:
                code = .invalidParameter_PasswordIllegal
            case .other:
                code = .invalidParameter
            }
            return TCOrganizationError(code, context: self.context)
        }
    }
}