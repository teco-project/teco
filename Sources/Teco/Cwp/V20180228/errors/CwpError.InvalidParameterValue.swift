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

extension TCCwpError {
    public struct InvalidParameterValue: TCCwpErrorType {
        enum Code: String {
            case tagNameLengthLimit = "InvalidParameterValue.TagNameLengthLimit"
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

        /// 标签名称长度不能超过15个字符。
        public static var tagNameLengthLimit: InvalidParameterValue {
            InvalidParameterValue(.tagNameLengthLimit)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asCwpError() -> TCCwpError {
            let code: TCCwpError.Code
            switch self.error {
            case .tagNameLengthLimit:
                code = .invalidParameterValue_TagNameLengthLimit
            case .other:
                code = .invalidParameterValue
            }
            return TCCwpError(code, context: self.context)
        }
    }
}
