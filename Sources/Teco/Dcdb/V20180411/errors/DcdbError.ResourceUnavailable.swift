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

extension TCDcdbError {
    public struct ResourceUnavailable: TCDcdbErrorType {
        enum Code: String {
            case badInstanceStatus = "ResourceUnavailable.BadInstanceStatus"
            case cosApiFailed = "ResourceUnavailable.CosApiFailed"
            case instanceAlreadyDeleted = "ResourceUnavailable.InstanceAlreadyDeleted"
            case instanceHasBeenLocked = "ResourceUnavailable.InstanceHasBeenLocked"
            case instanceStatusAbnormal = "ResourceUnavailable.InstanceStatusAbnormal"
            case sgCheckFail = "ResourceUnavailable.SGCheckFail"
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

        /// 实例状态错误，不能初始化。
        public static var badInstanceStatus: ResourceUnavailable {
            ResourceUnavailable(.badInstanceStatus)
        }

        /// COS API调用错误。
        public static var cosApiFailed: ResourceUnavailable {
            ResourceUnavailable(.cosApiFailed)
        }

        /// 数据库实例已被删除。
        public static var instanceAlreadyDeleted: ResourceUnavailable {
            ResourceUnavailable(.instanceAlreadyDeleted)
        }

        /// 数据库实例已经被锁定，当前无法操作。
        public static var instanceHasBeenLocked: ResourceUnavailable {
            ResourceUnavailable(.instanceHasBeenLocked)
        }

        /// 数据库实例状态不正确，当前无法操作。
        public static var instanceStatusAbnormal: ResourceUnavailable {
            ResourceUnavailable(.instanceStatusAbnormal)
        }

        /// 安全组校验失败。
        public static var sgCheckFail: ResourceUnavailable {
            ResourceUnavailable(.sgCheckFail)
        }

        public func asDcdbError() -> TCDcdbError {
            let code: TCDcdbError.Code
            switch self.error {
            case .badInstanceStatus:
                code = .resourceUnavailable_BadInstanceStatus
            case .cosApiFailed:
                code = .resourceUnavailable_CosApiFailed
            case .instanceAlreadyDeleted:
                code = .resourceUnavailable_InstanceAlreadyDeleted
            case .instanceHasBeenLocked:
                code = .resourceUnavailable_InstanceHasBeenLocked
            case .instanceStatusAbnormal:
                code = .resourceUnavailable_InstanceStatusAbnormal
            case .sgCheckFail:
                code = .resourceUnavailable_SGCheckFail
            }
            return TCDcdbError(code, context: self.context)
        }
    }
}
