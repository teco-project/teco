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
    public struct InvalidParameter: TCApigatewayErrorType {
        enum Code: String {
            case basicServiceNotAllowAttachPlugin = "InvalidParameter.BasicServiceNotAllowAttachPlugin"
            case duplicatePluginConfig = "InvalidParameter.DuplicatePluginConfig"
            case formatError = "InvalidParameter.FormatError"
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

        /// 基础版服务不能绑定插件。
        public static var basicServiceNotAllowAttachPlugin: InvalidParameter {
            InvalidParameter(.basicServiceNotAllowAttachPlugin)
        }

        /// 当前绑定插件和已有插件冲突。
        public static var duplicatePluginConfig: InvalidParameter {
            InvalidParameter(.duplicatePluginConfig)
        }

        /// 参数格式错误。
        public static var formatError: InvalidParameter {
            InvalidParameter(.formatError)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asApigatewayError() -> TCApigatewayError {
            let code: TCApigatewayError.Code
            switch self.error {
            case .basicServiceNotAllowAttachPlugin:
                code = .invalidParameter_BasicServiceNotAllowAttachPlugin
            case .duplicatePluginConfig:
                code = .invalidParameter_DuplicatePluginConfig
            case .formatError:
                code = .invalidParameter_FormatError
            case .other:
                code = .invalidParameter
            }
            return TCApigatewayError(code, context: self.context)
        }
    }
}
