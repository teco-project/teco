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

extension TCTcssError {
    public struct InvalidParameterValue: TCTcssErrorType {
        enum Code: String {
            case dataNotFound = "InvalidParameterValue.DataNotFound"
            case dataRange = "InvalidParameterValue.DataRange"
            case lengthLimit = "InvalidParameterValue.LengthLimit"
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

        /// 当前数据未能查询到。
        public static var dataNotFound: InvalidParameterValue {
            InvalidParameterValue(.dataNotFound)
        }

        /// 当前数据区间错误。
        public static var dataRange: InvalidParameterValue {
            InvalidParameterValue(.dataRange)
        }

        /// 参数长度受限。
        public static var lengthLimit: InvalidParameterValue {
            InvalidParameterValue(.lengthLimit)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTcssError() -> TCTcssError {
            let code: TCTcssError.Code
            switch self.error {
            case .dataNotFound:
                code = .invalidParameterValue_DataNotFound
            case .dataRange:
                code = .invalidParameterValue_DataRange
            case .lengthLimit:
                code = .invalidParameterValue_LengthLimit
            case .other:
                code = .invalidParameterValue
            }
            return TCTcssError(code, context: self.context)
        }
    }
}
