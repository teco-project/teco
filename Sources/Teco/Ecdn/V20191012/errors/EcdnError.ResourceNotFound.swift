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

extension TCEcdnError {
    public struct ResourceNotFound: TCEcdnErrorType {
        enum Code: String {
            case ecdnDomainNotExists = "ResourceNotFound.EcdnDomainNotExists"
            case ecdnHostNotExists = "ResourceNotFound.EcdnHostNotExists"
            case ecdnProjectNotExists = "ResourceNotFound.EcdnProjectNotExists"
            case ecdnUserNotExists = "ResourceNotFound.EcdnUserNotExists"
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

        /// 账号下无此域名，请确认后重试。
        public static var ecdnDomainNotExists: ResourceNotFound {
            ResourceNotFound(.ecdnDomainNotExists)
        }

        /// 账号下无此域名，请确认后重试。
        public static var ecdnHostNotExists: ResourceNotFound {
            ResourceNotFound(.ecdnHostNotExists)
        }

        /// 项目不存在。
        public static var ecdnProjectNotExists: ResourceNotFound {
            ResourceNotFound(.ecdnProjectNotExists)
        }

        /// 未开通ECDN服务，请开通后使用此接口。
        public static var ecdnUserNotExists: ResourceNotFound {
            ResourceNotFound(.ecdnUserNotExists)
        }

        public func asEcdnError() -> TCEcdnError {
            let code: TCEcdnError.Code
            switch self.error {
            case .ecdnDomainNotExists:
                code = .resourceNotFound_EcdnDomainNotExists
            case .ecdnHostNotExists:
                code = .resourceNotFound_EcdnHostNotExists
            case .ecdnProjectNotExists:
                code = .resourceNotFound_EcdnProjectNotExists
            case .ecdnUserNotExists:
                code = .resourceNotFound_EcdnUserNotExists
            }
            return TCEcdnError(code, context: self.context)
        }
    }
}
