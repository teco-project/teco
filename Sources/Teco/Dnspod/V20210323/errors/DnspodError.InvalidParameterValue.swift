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

extension TCDnspodError {
    public struct InvalidParameterValue: TCDnspodErrorType {
        enum Code: String {
            case domainGradeInvalid = "InvalidParameterValue.DomainGradeInvalid"
            case domainNotExists = "InvalidParameterValue.DomainNotExists"
            case limitInvalid = "InvalidParameterValue.LimitInvalid"
            case upgradeTermInvalid = "InvalidParameterValue.UpgradeTermInvalid"
            case userIdInvalid = "InvalidParameterValue.UserIdInvalid"
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

        /// 域名等级不正确。
        public static var domainGradeInvalid: InvalidParameterValue {
            InvalidParameterValue(.domainGradeInvalid)
        }

        /// 当前域名有误，请返回重新操作。
        public static var domainNotExists: InvalidParameterValue {
            InvalidParameterValue(.domainNotExists)
        }

        /// 分页长度数量错误。
        public static var limitInvalid: InvalidParameterValue {
            InvalidParameterValue(.limitInvalid)
        }

        /// 升级年限不正确。
        public static var upgradeTermInvalid: InvalidParameterValue {
            InvalidParameterValue(.upgradeTermInvalid)
        }

        /// 用户编号不正确。
        public static var userIdInvalid: InvalidParameterValue {
            InvalidParameterValue(.userIdInvalid)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asDnspodError() -> TCDnspodError {
            let code: TCDnspodError.Code
            switch self.error {
            case .domainGradeInvalid:
                code = .invalidParameterValue_DomainGradeInvalid
            case .domainNotExists:
                code = .invalidParameterValue_DomainNotExists
            case .limitInvalid:
                code = .invalidParameterValue_LimitInvalid
            case .upgradeTermInvalid:
                code = .invalidParameterValue_UpgradeTermInvalid
            case .userIdInvalid:
                code = .invalidParameterValue_UserIdInvalid
            case .other:
                code = .invalidParameterValue
            }
            return TCDnspodError(code, context: self.context)
        }
    }
}
