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

extension TCTbaasError {
    public struct InvalidParameterValue: TCTbaasErrorType {
        enum Code: String {
            case illegalFormat = "InvalidParameterValue.IllegalFormat"
            case illegalValue = "InvalidParameterValue.IllegalValue"
            case parameterEmpty = "InvalidParameterValue.ParameterEmpty"
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

        /// 参数格式不正确。
        public static var illegalFormat: InvalidParameterValue {
            InvalidParameterValue(.illegalFormat)
        }

        /// 参数取值不合法。
        public static var illegalValue: InvalidParameterValue {
            InvalidParameterValue(.illegalValue)
        }

        /// 参数值为空。
        public static var parameterEmpty: InvalidParameterValue {
            InvalidParameterValue(.parameterEmpty)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTbaasError() -> TCTbaasError {
            let code: TCTbaasError.Code
            switch self.error {
            case .illegalFormat:
                code = .invalidParameterValue_IllegalFormat
            case .illegalValue:
                code = .invalidParameterValue_IllegalValue
            case .parameterEmpty:
                code = .invalidParameterValue_ParameterEmpty
            case .other:
                code = .invalidParameterValue
            }
            return TCTbaasError(code, context: self.context)
        }
    }
}
