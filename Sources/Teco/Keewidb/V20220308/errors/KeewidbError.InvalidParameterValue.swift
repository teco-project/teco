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

extension TCKeewidbError {
    public struct InvalidParameterValue: TCKeewidbErrorType {
        enum Code: String {
            case passwordEmpty = "InvalidParameterValue.PasswordEmpty"
            case passwordError = "InvalidParameterValue.PasswordError"
            case passwordFreeDenied = "InvalidParameterValue.PasswordFreeDenied"
            case passwordRuleError = "InvalidParameterValue.PasswordRuleError"
            case unSupportedType = "InvalidParameterValue.UnSupportedType"
            case weekDaysIsInvalid = "InvalidParameterValue.WeekDaysIsInvalid"
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

        /// 密码为空。
        public static var passwordEmpty: InvalidParameterValue {
            InvalidParameterValue(.passwordEmpty)
        }

        /// 密码校验出错，密码错误。
        public static var passwordError: InvalidParameterValue {
            InvalidParameterValue(.passwordError)
        }

        /// 腾讯集团内部账号禁止使用免密实例。
        public static var passwordFreeDenied: InvalidParameterValue {
            InvalidParameterValue(.passwordFreeDenied)
        }

        /// 设置密码时，MC 传入的 old password 与先前设定密码不同。
        public static var passwordRuleError: InvalidParameterValue {
            InvalidParameterValue(.passwordRuleError)
        }

        /// 实例类型不支持。
        public static var unSupportedType: InvalidParameterValue {
            InvalidParameterValue(.unSupportedType)
        }

        /// weekday输入无效数据。
        public static var weekDaysIsInvalid: InvalidParameterValue {
            InvalidParameterValue(.weekDaysIsInvalid)
        }

        public func asKeewidbError() -> TCKeewidbError {
            let code: TCKeewidbError.Code
            switch self.error {
            case .passwordEmpty:
                code = .invalidParameterValue_PasswordEmpty
            case .passwordError:
                code = .invalidParameterValue_PasswordError
            case .passwordFreeDenied:
                code = .invalidParameterValue_PasswordFreeDenied
            case .passwordRuleError:
                code = .invalidParameterValue_PasswordRuleError
            case .unSupportedType:
                code = .invalidParameterValue_UnSupportedType
            case .weekDaysIsInvalid:
                code = .invalidParameterValue_WeekDaysIsInvalid
            }
            return TCKeewidbError(code, context: self.context)
        }
    }
}
