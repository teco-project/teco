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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCFaceidError {
    public struct InvalidParameterValue: TCFaceidErrorType {
        enum Code: String {
            case bizTokenExpired = "InvalidParameterValue.BizTokenExpired"
            case bizTokenIllegal = "InvalidParameterValue.BizTokenIllegal"
            case ruleIdDisabled = "InvalidParameterValue.RuleIdDisabled"
            case ruleIdNotExist = "InvalidParameterValue.RuleIdNotExist"
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

        /// BizToken过期。
        public static var bizTokenExpired: InvalidParameterValue {
            InvalidParameterValue(.bizTokenExpired)
        }

        /// BizToken不合法。
        ///
        /// 输入正确的BizToken。
        public static var bizTokenIllegal: InvalidParameterValue {
            InvalidParameterValue(.bizTokenIllegal)
        }

        /// 该ruleid已被您停用，请确认后重试。
        public static var ruleIdDisabled: InvalidParameterValue {
            InvalidParameterValue(.ruleIdDisabled)
        }

        /// RuleId不存在，请到人脸核身控制台申请。
        public static var ruleIdNotExist: InvalidParameterValue {
            InvalidParameterValue(.ruleIdNotExist)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asFaceidError() -> TCFaceidError {
            let code: TCFaceidError.Code
            switch self.error {
            case .bizTokenExpired:
                code = .invalidParameterValue_BizTokenExpired
            case .bizTokenIllegal:
                code = .invalidParameterValue_BizTokenIllegal
            case .ruleIdDisabled:
                code = .invalidParameterValue_RuleIdDisabled
            case .ruleIdNotExist:
                code = .invalidParameterValue_RuleIdNotExist
            case .other:
                code = .invalidParameterValue
            }
            return TCFaceidError(code, context: self.context)
        }
    }
}
