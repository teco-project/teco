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

extension TCTemError {
    public struct ResourceUnavailable: TCTemErrorType {
        enum Code: String {
            case applicationNotDeletable = "ResourceUnavailable.ApplicationNotDeletable"
            case applicationStopped = "ResourceUnavailable.ApplicationStopped"
            case waitForKruise = "ResourceUnavailable.WaitForKruise"
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

        /// 有资源依赖，无法直接删除应用。
        public static var applicationNotDeletable: ResourceUnavailable {
            ResourceUnavailable(.applicationNotDeletable)
        }

        /// 应用已停止。
        public static var applicationStopped: ResourceUnavailable {
            ResourceUnavailable(.applicationStopped)
        }

        /// 等待组件安装。
        public static var waitForKruise: ResourceUnavailable {
            ResourceUnavailable(.waitForKruise)
        }

        public func asTemError() -> TCTemError {
            let code: TCTemError.Code
            switch self.error {
            case .applicationNotDeletable:
                code = .resourceUnavailable_ApplicationNotDeletable
            case .applicationStopped:
                code = .resourceUnavailable_ApplicationStopped
            case .waitForKruise:
                code = .resourceUnavailable_WaitForKruise
            }
            return TCTemError(code, context: self.context)
        }
    }
}
