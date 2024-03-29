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

extension TCMsError {
    public struct InvalidParameter: TCMsErrorType {
        enum Code: String {
            case missingServiceInfo = "InvalidParameter.MissingServiceInfo"
            case parameterError = "InvalidParameter.ParameterError"
            case planIdNotFound = "InvalidParameter.PlanIdNotFound"
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

        /// ServiceInfo结构体参数缺失。
        public static var missingServiceInfo: InvalidParameter {
            InvalidParameter(.missingServiceInfo)
        }

        /// 参数格式错误。
        public static var parameterError: InvalidParameter {
            InvalidParameter(.parameterError)
        }

        /// 不能找到指定的加固策略。
        public static var planIdNotFound: InvalidParameter {
            InvalidParameter(.planIdNotFound)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asMsError() -> TCMsError {
            let code: TCMsError.Code
            switch self.error {
            case .missingServiceInfo:
                code = .invalidParameter_MissingServiceInfo
            case .parameterError:
                code = .invalidParameter_ParameterError
            case .planIdNotFound:
                code = .invalidParameter_PlanIdNotFound
            case .other:
                code = .invalidParameter
            }
            return TCMsError(code, context: self.context)
        }
    }
}
