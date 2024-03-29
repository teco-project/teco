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

extension TCSslpodError {
    public struct InvalidParameterValue: TCSslpodErrorType {
        enum Code: String {
            case invalidNoticeType = "InvalidParameterValue.InvalidNoticeType"
            case invalidSearchType = "InvalidParameterValue.InvalidSearchType"
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

        /// 无效的通知类型。
        public static var invalidNoticeType: InvalidParameterValue {
            InvalidParameterValue(.invalidNoticeType)
        }

        /// 无效的搜索类型。
        public static var invalidSearchType: InvalidParameterValue {
            InvalidParameterValue(.invalidSearchType)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asSslpodError() -> TCSslpodError {
            let code: TCSslpodError.Code
            switch self.error {
            case .invalidNoticeType:
                code = .invalidParameterValue_InvalidNoticeType
            case .invalidSearchType:
                code = .invalidParameterValue_InvalidSearchType
            case .other:
                code = .invalidParameterValue
            }
            return TCSslpodError(code, context: self.context)
        }
    }
}
