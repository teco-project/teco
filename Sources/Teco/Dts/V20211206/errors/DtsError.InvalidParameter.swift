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

extension TCDtsError {
    public struct InvalidParameter: TCDtsErrorType {
        enum Code: String {
            case controllerNotFoundError = "InvalidParameter.ControllerNotFoundError"
            case instanceNotFound = "InvalidParameter.InstanceNotFound"
            case invalidParameterError = "InvalidParameter.InvalidParameterError"
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

        /// 异常错误导致当前接口未注册。
        public static var controllerNotFoundError: InvalidParameter {
            InvalidParameter(.controllerNotFoundError)
        }

        /// 实例不存在。
        public static var instanceNotFound: InvalidParameter {
            InvalidParameter(.instanceNotFound)
        }

        /// 参数无效。
        public static var invalidParameterError: InvalidParameter {
            InvalidParameter(.invalidParameterError)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .controllerNotFoundError:
                code = .invalidParameter_ControllerNotFoundError
            case .instanceNotFound:
                code = .invalidParameter_InstanceNotFound
            case .invalidParameterError:
                code = .invalidParameter_InvalidParameterError
            case .other:
                code = .invalidParameter
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
