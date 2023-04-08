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

extension TCRkpError {
    public struct InvalidParameter: TCRkpErrorType {
        enum Code: String {
            case devTokenInvalid = "InvalidParameter.DevTokenInvalid"
            case paramError = "InvalidParameter.ParamError"
            case parameterError = "InvalidParameter.ParameterError"
            case tokenInvalid = "InvalidParameter.TokenInvalid"
            case urlError = "InvalidParameter.UrlError"
            case versionError = "InvalidParameter.VersionError"
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

        /// DevToken不可用、过期或与当前场景不匹配。
        public static var devTokenInvalid: InvalidParameter {
            InvalidParameter(.devTokenInvalid)
        }

        /// 参数错误。
        public static var paramError: InvalidParameter {
            InvalidParameter(.paramError)
        }

        /// 参数校验错误。
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }

        /// token不可用或过期。
        public static var tokenInvalid: InvalidParameter {
            InvalidParameter(.tokenInvalid)
        }

        /// URL错误。
        public static var urlError: InvalidParameter {
            InvalidParameter(.urlError)
        }

        /// 版本错误。
        public static var versionError: InvalidParameter {
            InvalidParameter(.versionError)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asRkpError() -> TCRkpError {
            let code: TCRkpError.Code
            switch self.error {
            case .devTokenInvalid:
                code = .invalidParameter_DevTokenInvalid
            case .paramError:
                code = .invalidParameter_ParamError
            case .parameterError:
                code = .invalidParameter_ParameterError
            case .tokenInvalid:
                code = .invalidParameter_TokenInvalid
            case .urlError:
                code = .invalidParameter_UrlError
            case .versionError:
                code = .invalidParameter_VersionError
            case .other:
                code = .invalidParameter
            }
            return TCRkpError(code, context: self.context)
        }
    }
}
