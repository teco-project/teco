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

extension TCTcrError {
    public struct ResourceNotFound: TCTcrErrorType {
        enum Code: String {
            case errNoNamespace = "ResourceNotFound.ErrNoNamespace"
            case errNoRepo = "ResourceNotFound.ErrNoRepo"
            case errNoTag = "ResourceNotFound.ErrNoTag"
            case errNoTrigger = "ResourceNotFound.ErrNoTrigger"
            case errNoUser = "ResourceNotFound.ErrNoUser"
            case tcrResourceNotFound = "ResourceNotFound.TcrResourceNotFound"
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

        /// 用户没有创建命名空间。
        public static var errNoNamespace: ResourceNotFound {
            ResourceNotFound(.errNoNamespace)
        }

        /// 仓库不存在。
        public static var errNoRepo: ResourceNotFound {
            ResourceNotFound(.errNoRepo)
        }

        /// tag不存在。
        public static var errNoTag: ResourceNotFound {
            ResourceNotFound(.errNoTag)
        }

        /// 触发器不存在。
        public static var errNoTrigger: ResourceNotFound {
            ResourceNotFound(.errNoTrigger)
        }

        /// 用户不存在（未注册）。
        public static var errNoUser: ResourceNotFound {
            ResourceNotFound(.errNoUser)
        }

        /// Tcr实例中的资源未找到。
        public static var tcrResourceNotFound: ResourceNotFound {
            ResourceNotFound(.tcrResourceNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asTcrError() -> TCTcrError {
            let code: TCTcrError.Code
            switch self.error {
            case .errNoNamespace:
                code = .resourceNotFound_ErrNoNamespace
            case .errNoRepo:
                code = .resourceNotFound_ErrNoRepo
            case .errNoTag:
                code = .resourceNotFound_ErrNoTag
            case .errNoTrigger:
                code = .resourceNotFound_ErrNoTrigger
            case .errNoUser:
                code = .resourceNotFound_ErrNoUser
            case .tcrResourceNotFound:
                code = .resourceNotFound_TcrResourceNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCTcrError(code, context: self.context)
        }
    }
}
