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

extension TCCdbError {
    public struct ResourceNotFound: TCCdbErrorType {
        enum Code: String {
            case cdbInstanceNotFoundError = "ResourceNotFound.CdbInstanceNotFoundError"
            case instanceNotFundError = "ResourceNotFound.InstanceNotFundError"
            case other = "ResourceNotFound"
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

        /// 未找到数据库实例，请确认您的实例状态是否正常。
        public static var cdbInstanceNotFoundError: ResourceNotFound {
            ResourceNotFound(.cdbInstanceNotFoundError)
        }

        /// 该实例不存在。
        public static var instanceNotFundError: ResourceNotFound {
            ResourceNotFound(.instanceNotFundError)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .cdbInstanceNotFoundError:
                code = .resourceNotFound_CdbInstanceNotFoundError
            case .instanceNotFundError:
                code = .resourceNotFound_InstanceNotFundError
            case .other:
                code = .resourceNotFound
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
