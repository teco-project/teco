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

extension TCMsError {
    public struct InvalidParameterValue: TCMsErrorType {
        enum Code: String {
            case invalidCoexistItemIdsFilters = "InvalidParameterValue.InvalidCoexistItemIdsFilters"
            case invalidFilter = "InvalidParameterValue.InvalidFilter"
            case invalidItemIds = "InvalidParameterValue.InvalidItemIds"
            case invalidLimit = "InvalidParameterValue.InvalidLimit"
            case invalidOffset = "InvalidParameterValue.InvalidOffset"
            case invalidOrderDirection = "InvalidParameterValue.InvalidOrderDirection"
            case invalidOrderField = "InvalidParameterValue.InvalidOrderField"
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

        /// 不能同时指定ItemIds和Filters。
        public static var invalidCoexistItemIdsFilters: InvalidParameterValue {
            InvalidParameterValue(.invalidCoexistItemIdsFilters)
        }

        /// 无效的过滤器。
        public static var invalidFilter: InvalidParameterValue {
            InvalidParameterValue(.invalidFilter)
        }

        /// ItemIds不合法。
        public static var invalidItemIds: InvalidParameterValue {
            InvalidParameterValue(.invalidItemIds)
        }

        /// Limit不是有效的数字。
        public static var invalidLimit: InvalidParameterValue {
            InvalidParameterValue(.invalidLimit)
        }

        /// Offset不是有效的数字。
        public static var invalidOffset: InvalidParameterValue {
            InvalidParameterValue(.invalidOffset)
        }

        /// OrderDirection参数。
        public static var invalidOrderDirection: InvalidParameterValue {
            InvalidParameterValue(.invalidOrderDirection)
        }

        /// OrderField取值不合法。
        public static var invalidOrderField: InvalidParameterValue {
            InvalidParameterValue(.invalidOrderField)
        }

        /// 参数取值错误。
        public static var other: InvalidParameterValue {
            InvalidParameterValue(.other)
        }

        public func asMsError() -> TCMsError {
            let code: TCMsError.Code
            switch self.error {
            case .invalidCoexistItemIdsFilters:
                code = .invalidParameterValue_InvalidCoexistItemIdsFilters
            case .invalidFilter:
                code = .invalidParameterValue_InvalidFilter
            case .invalidItemIds:
                code = .invalidParameterValue_InvalidItemIds
            case .invalidLimit:
                code = .invalidParameterValue_InvalidLimit
            case .invalidOffset:
                code = .invalidParameterValue_InvalidOffset
            case .invalidOrderDirection:
                code = .invalidParameterValue_InvalidOrderDirection
            case .invalidOrderField:
                code = .invalidParameterValue_InvalidOrderField
            case .other:
                code = .invalidParameterValue
            }
            return TCMsError(code, context: self.context)
        }
    }
}
