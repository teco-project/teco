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

extension TCBtoeError {
    public struct InvalidParameterValue: TCBtoeErrorType {
        enum Code: String {
            case dataInfoTooLong = "InvalidParameterValue.DataInfoTooLong"
            case hashNoMatch = "InvalidParameterValue.HashNoMatch"
            case invalidFileSuffix = "InvalidParameterValue.InvalidFileSuffix"
            case invalidURL = "InvalidParameterValue.InvalidURL"
            case parameterError = "InvalidParameterValue.ParameterError"
            case tooLargeFileError = "InvalidParameterValue.TooLargeFileError"
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

        /// 数据明文内容过长。
        public static var dataInfoTooLong: InvalidParameterValue {
            InvalidParameterValue(.dataInfoTooLong)
        }

        /// 哈希不匹配。
        public static var hashNoMatch: InvalidParameterValue {
            InvalidParameterValue(.hashNoMatch)
        }

        /// 文件后缀不正确。
        public static var invalidFileSuffix: InvalidParameterValue {
            InvalidParameterValue(.invalidFileSuffix)
        }

        /// URL无效。
        public static var invalidURL: InvalidParameterValue {
            InvalidParameterValue(.invalidURL)
        }

        /// 参数值错误。
        public static var parameterError: InvalidParameterValue {
            InvalidParameterValue(.parameterError)
        }

        /// 文件内容太大。
        public static var tooLargeFileError: InvalidParameterValue {
            InvalidParameterValue(.tooLargeFileError)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asBtoeError() -> TCBtoeError {
            let code: TCBtoeError.Code
            switch self.error {
            case .dataInfoTooLong:
                code = .invalidParameterValue_DataInfoTooLong
            case .hashNoMatch:
                code = .invalidParameterValue_HashNoMatch
            case .invalidFileSuffix:
                code = .invalidParameterValue_InvalidFileSuffix
            case .invalidURL:
                code = .invalidParameterValue_InvalidURL
            case .parameterError:
                code = .invalidParameterValue_ParameterError
            case .tooLargeFileError:
                code = .invalidParameterValue_TooLargeFileError
            case .other:
                code = .invalidParameterValue
            }
            return TCBtoeError(code, context: self.context)
        }
    }
}
