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

extension TCDbdcError {
    public struct InvalidParameterValue: TCDbdcErrorType {
        enum Code: String {
            case invalidParameterValueError = "InvalidParameterValue.InvalidParameterValueError"
            case resourceParameterError = "InvalidParameterValue.ResourceParameterError"
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

        /// 参数值传入错误。
        ///
        /// 参数值传入错误，请检查相关参数。
        public static var invalidParameterValueError: InvalidParameterValue {
            InvalidParameterValue(.invalidParameterValueError)
        }

        /// 集群的参数非法。
        public static var resourceParameterError: InvalidParameterValue {
            InvalidParameterValue(.resourceParameterError)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asDbdcError() -> TCDbdcError {
            let code: TCDbdcError.Code
            switch self.error {
            case .invalidParameterValueError:
                code = .invalidParameterValue_InvalidParameterValueError
            case .resourceParameterError:
                code = .invalidParameterValue_ResourceParameterError
            case .other:
                code = .invalidParameterValue
            }
            return TCDbdcError(code, context: self.context)
        }
    }
}
