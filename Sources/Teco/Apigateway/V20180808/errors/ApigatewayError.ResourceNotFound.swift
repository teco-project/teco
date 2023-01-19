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

extension TCApigatewayError {
    public struct ResourceNotFound: TCApigatewayErrorType {
        enum Code: String {
            case invalidAccessKeyId = "ResourceNotFound.InvalidAccessKeyId"
            case invalidApi = "ResourceNotFound.InvalidApi"
            case invalidApiApp = "ResourceNotFound.InvalidApiApp"
            case invalidApiDoc = "ResourceNotFound.InvalidApiDoc"
            case invalidIPStrategy = "ResourceNotFound.InvalidIPStrategy"
            case invalidOauthApi = "ResourceNotFound.InvalidOauthApi"
            case invalidPlugin = "ResourceNotFound.InvalidPlugin"
            case invalidService = "ResourceNotFound.InvalidService"
            case invalidUsagePlan = "ResourceNotFound.InvalidUsagePlan"
            case other = "ResourceNotFound"
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

        /// 密钥不存在。
        public static var invalidAccessKeyId: ResourceNotFound {
            ResourceNotFound(.invalidAccessKeyId)
        }

        /// ApiId错误。
        public static var invalidApi: ResourceNotFound {
            ResourceNotFound(.invalidApi)
        }

        /// 应用ID错误。
        public static var invalidApiApp: ResourceNotFound {
            ResourceNotFound(.invalidApiApp)
        }

        /// API文档不存在。
        public static var invalidApiDoc: ResourceNotFound {
            ResourceNotFound(.invalidApiDoc)
        }

        /// IP策略不存在。
        public static var invalidIPStrategy: ResourceNotFound {
            ResourceNotFound(.invalidIPStrategy)
        }

        /// OAuth业务API错误。
        public static var invalidOauthApi: ResourceNotFound {
            ResourceNotFound(.invalidOauthApi)
        }

        /// 插件不存在。
        public static var invalidPlugin: ResourceNotFound {
            ResourceNotFound(.invalidPlugin)
        }

        /// 对应服务不可见。
        public static var invalidService: ResourceNotFound {
            ResourceNotFound(.invalidService)
        }

        /// 使用计划不存在。
        public static var invalidUsagePlan: ResourceNotFound {
            ResourceNotFound(.invalidUsagePlan)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .invalidAccessKeyId:
                code = .resourceNotFound_InvalidAccessKeyId
            case .invalidApi:
                code = .resourceNotFound_InvalidApi
            case .invalidApiApp:
                code = .resourceNotFound_InvalidApiApp
            case .invalidApiDoc:
                code = .resourceNotFound_InvalidApiDoc
            case .invalidIPStrategy:
                code = .resourceNotFound_InvalidIPStrategy
            case .invalidOauthApi:
                code = .resourceNotFound_InvalidOauthApi
            case .invalidPlugin:
                code = .resourceNotFound_InvalidPlugin
            case .invalidService:
                code = .resourceNotFound_InvalidService
            case .invalidUsagePlan:
                code = .resourceNotFound_InvalidUsagePlan
            case .other:
                code = .resourceNotFound
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
