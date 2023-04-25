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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension TCTiaError {
    public struct InvalidParameterValue: TCTiaErrorType {
        enum Code: String {
            case order = "InvalidParameterValue.Order"
            case orderby = "InvalidParameterValue.Orderby"
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

        /// Order传入错误。
        public static var order: InvalidParameterValue {
            InvalidParameterValue(.order)
        }

        /// Orderby传入错误。
        public static var orderby: InvalidParameterValue {
            InvalidParameterValue(.orderby)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asTiaError() -> TCTiaError {
            let code: TCTiaError.Code
            switch self.error {
            case .order:
                code = .invalidParameterValue_Order
            case .orderby:
                code = .invalidParameterValue_Orderby
            case .other:
                code = .invalidParameterValue
            }
            return TCTiaError(code, context: self.context)
        }
    }
}
