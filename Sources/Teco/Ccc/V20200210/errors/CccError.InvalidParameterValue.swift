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

extension TCCccError {
    public struct InvalidParameterValue: TCCccErrorType {
        enum Code: String {
            case accountNotExist = "InvalidParameterValue.AccountNotExist"
            case instanceNotExist = "InvalidParameterValue.InstanceNotExist"
            case phoneNumIsBoundOtherAccount = "InvalidParameterValue.PhoneNumIsBoundOtherAccount"
            case recordNotExist = "InvalidParameterValue.RecordNotExist"
            case skillGroupError = "InvalidParameterValue.SkillGroupError"
            case skillGroupExist = "InvalidParameterValue.SkillGroupExist"
            case other = "InvalidParameterValue"
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

        /// 账号不存在。
        public static var accountNotExist: InvalidParameterValue {
            InvalidParameterValue(.accountNotExist)
        }

        /// 实例不存在。
        public static var instanceNotExist: InvalidParameterValue {
            InvalidParameterValue(.instanceNotExist)
        }

        /// 号码已经绑定别的账号。
        ///
        /// 请确认手机号是否有误
        public static var phoneNumIsBoundOtherAccount: InvalidParameterValue {
            InvalidParameterValue(.phoneNumIsBoundOtherAccount)
        }

        /// 查询记录不存在。
        ///
        /// 确认查询条件是否正确
        public static var recordNotExist: InvalidParameterValue {
            InvalidParameterValue(.recordNotExist)
        }

        /// 技能组错误。
        public static var skillGroupError: InvalidParameterValue {
            InvalidParameterValue(.skillGroupError)
        }

        /// 技能组已存在。
        public static var skillGroupExist: InvalidParameterValue {
            InvalidParameterValue(.skillGroupExist)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asCccError() -> TCCccError {
            let code: TCCccError.Code
            switch self.error {
            case .accountNotExist:
                code = .invalidParameterValue_AccountNotExist
            case .instanceNotExist:
                code = .invalidParameterValue_InstanceNotExist
            case .phoneNumIsBoundOtherAccount:
                code = .invalidParameterValue_PhoneNumIsBoundOtherAccount
            case .recordNotExist:
                code = .invalidParameterValue_RecordNotExist
            case .skillGroupError:
                code = .invalidParameterValue_SkillGroupError
            case .skillGroupExist:
                code = .invalidParameterValue_SkillGroupExist
            case .other:
                code = .invalidParameterValue
            }
            return TCCccError(code, context: self.context)
        }
    }
}
