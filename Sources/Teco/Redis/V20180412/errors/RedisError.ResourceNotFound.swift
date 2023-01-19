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

extension TCRedisError {
    public struct ResourceNotFound: TCRedisErrorType {
        enum Code: String {
            case accountDoesNotExists = "ResourceNotFound.AccountDoesNotExists"
            case instanceNotExists = "ResourceNotFound.InstanceNotExists"
            case instanceNotFound = "ResourceNotFound.InstanceNotFound"
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

        /// uin 值为空。
        public static var accountDoesNotExists: ResourceNotFound {
            ResourceNotFound(.accountDoesNotExists)
        }

        /// 根据 serialId 没有找到对应 redis。
        public static var instanceNotExists: ResourceNotFound {
            ResourceNotFound(.instanceNotExists)
        }

        /// 找不到该实例。
        public static var instanceNotFound: ResourceNotFound {
            ResourceNotFound(.instanceNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asRedisError() -> TCRedisError {
            let code: TCRedisError.Code
            switch self.error {
            case .accountDoesNotExists:
                code = .resourceNotFound_AccountDoesNotExists
            case .instanceNotExists:
                code = .resourceNotFound_InstanceNotExists
            case .instanceNotFound:
                code = .resourceNotFound_InstanceNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCRedisError(code, context: self.context)
        }
    }
}
