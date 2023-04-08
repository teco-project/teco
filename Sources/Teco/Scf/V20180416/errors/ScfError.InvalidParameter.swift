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

extension TCScfError {
    public struct InvalidParameter: TCScfErrorType {
        enum Code: String {
            case cls = "InvalidParameter.Cls"
            case functionName = "InvalidParameter.FunctionName"
            case paramError = "InvalidParameter.ParamError"
            case payload = "InvalidParameter.Payload"
            case requestTooLarge = "InvalidParameter.RequestTooLarge"
            case roleCheck = "InvalidParameter.RoleCheck"
            case routingConfig = "InvalidParameter.RoutingConfig"
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

        /// 日志参数有误。
        ///
        /// 请传递有效的日志相关参数。
        public static var cls: InvalidParameter {
            InvalidParameter(.cls)
        }

        /// FunctionName取值与规范不符，请修正后再试。可参考：https://tencentcs.com/5jXKFnBW。
        public static var functionName: InvalidParameter {
            InvalidParameter(.functionName)
        }

        /// 创建函数传参异常。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        /// 请求参数不合法。
        public static var payload: InvalidParameter {
            InvalidParameter(.payload)
        }

        /// 请求大小超限。
        ///
        /// 请求大小超限，请参照官方文档
        public static var requestTooLarge: InvalidParameter {
            InvalidParameter(.requestTooLarge)
        }

        /// RoleCheck 传参有误。
        public static var roleCheck: InvalidParameter {
            InvalidParameter(.roleCheck)
        }

        /// RoutingConfig参数传入错误。
        public static var routingConfig: InvalidParameter {
            InvalidParameter(.routingConfig)
        }

        public func asScfError() -> TCScfError {
            let code: TCScfError.Code
            switch self.error {
            case .cls:
                code = .invalidParameter_Cls
            case .functionName:
                code = .invalidParameter_FunctionName
            case .paramError:
                code = .invalidParameter_ParamError
            case .payload:
                code = .invalidParameter_Payload
            case .requestTooLarge:
                code = .invalidParameter_RequestTooLarge
            case .roleCheck:
                code = .invalidParameter_RoleCheck
            case .routingConfig:
                code = .invalidParameter_RoutingConfig
            }
            return TCScfError(code, context: self.context)
        }
    }
}
