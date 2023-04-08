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

extension TCDtsError {
    public struct UnknownParameter: TCDtsErrorType {
        enum Code: String {
            case unknownParameterError = "UnknownParameter.UnknownParameterError"
            case other = "UnknownParameter"
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

        /// 未知参数。
        public static var unknownParameterError: UnknownParameter {
            UnknownParameter(.unknownParameterError)
        }

        /// 未知参数错误。
        public static var other: UnknownParameter {
            UnknownParameter(.other)
        }

        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .unknownParameterError:
                code = .unknownParameter_UnknownParameterError
            case .other:
                code = .unknownParameter
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
