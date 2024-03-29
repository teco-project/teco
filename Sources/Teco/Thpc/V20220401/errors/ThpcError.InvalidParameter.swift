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

extension TCThpcError {
    public struct InvalidParameter: TCThpcErrorType {
        enum Code: String {
            case malformed = "InvalidParameter.Malformed"
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

        /// 参数格式有误。
        public static var malformed: InvalidParameter {
            InvalidParameter(.malformed)
        }

        /// 参数错误。
        public static var other: InvalidParameter {
            InvalidParameter(.other)
        }

        public func asThpcError() -> TCThpcError {
            let code: TCThpcError.Code
            switch self.error {
            case .malformed:
                code = .invalidParameter_Malformed
            case .other:
                code = .invalidParameter
            }
            return TCThpcError(code, context: self.context)
        }
    }
}
