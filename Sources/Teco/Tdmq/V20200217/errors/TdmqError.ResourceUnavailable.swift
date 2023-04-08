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

extension TCTdmqError {
    public struct ResourceUnavailable: TCTdmqErrorType {
        enum Code: String {
            case createFailed = "ResourceUnavailable.CreateFailed"
            case fundRequired = "ResourceUnavailable.FundRequired"
            case systemUpgrade = "ResourceUnavailable.SystemUpgrade"
            case other = "ResourceUnavailable"
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

        /// 发货异常。
        ///
        /// 请检查账户状态
        public static var createFailed: ResourceUnavailable {
            ResourceUnavailable(.createFailed)
        }

        /// 需要充值才可继续操作。
        public static var fundRequired: ResourceUnavailable {
            ResourceUnavailable(.fundRequired)
        }

        /// 系统升级。
        ///
        /// 升级完成后可用。
        public static var systemUpgrade: ResourceUnavailable {
            ResourceUnavailable(.systemUpgrade)
        }

        /// 资源不可用。
        public static var other: ResourceUnavailable {
            ResourceUnavailable(.other)
        }

        public func asTdmqError() -> TCTdmqError {
            let code: TCTdmqError.Code
            switch self.error {
            case .createFailed:
                code = .resourceUnavailable_CreateFailed
            case .fundRequired:
                code = .resourceUnavailable_FundRequired
            case .systemUpgrade:
                code = .resourceUnavailable_SystemUpgrade
            case .other:
                code = .resourceUnavailable
            }
            return TCTdmqError(code, context: self.context)
        }
    }
}
