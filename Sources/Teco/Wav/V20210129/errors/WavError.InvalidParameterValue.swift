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

extension TCWavError {
    public struct InvalidParameterValue: TCWavErrorType {
        enum Code: String {
            case timeSpanLimitExceeded = "InvalidParameterValue.TimeSpanLimitExceeded"
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

        /// 参数值时间跨度超出接口限制。
        ///
        /// 请将参数值[StartTime, EndTime] 最大保持在365天内。
        public static var timeSpanLimitExceeded: InvalidParameterValue {
            InvalidParameterValue(.timeSpanLimitExceeded)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asWavError() -> TCWavError {
            let code: TCWavError.Code
            switch self.error {
            case .timeSpanLimitExceeded:
                code = .invalidParameterValue_TimeSpanLimitExceeded
            case .other:
                code = .invalidParameterValue
            }
            return TCWavError(code, context: self.context)
        }
    }
}
