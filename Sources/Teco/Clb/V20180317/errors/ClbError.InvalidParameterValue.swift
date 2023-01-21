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

extension TCClbError {
    public struct InvalidParameterValue: TCClbErrorType {
        enum Code: String {
            case duplicate = "InvalidParameterValue.Duplicate"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case length = "InvalidParameterValue.Length"
            case range = "InvalidParameterValue.Range"
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

        /// 参数值有重复。
        public static var duplicate: InvalidParameterValue {
            InvalidParameterValue(.duplicate)
        }

        /// Filter参数输入错误。
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }

        /// 参数长度错误。
        public static var length: InvalidParameterValue {
            InvalidParameterValue(.length)
        }

        /// 参数取值范围错误。
        public static var range: InvalidParameterValue {
            InvalidParameterValue(.range)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asClbError() -> TCClbError {
            let code: TCClbError.Code
            switch self.error {
            case .duplicate:
                code = .invalidParameterValue_Duplicate
            case .invalidFilter:
                code = .invalidParameterValue_InvalidFilter
            case .length:
                code = .invalidParameterValue_Length
            case .range:
                code = .invalidParameterValue_Range
            case .other:
                code = .invalidParameterValue
            }
            return TCClbError(code, context: self.context)
        }
    }
}
