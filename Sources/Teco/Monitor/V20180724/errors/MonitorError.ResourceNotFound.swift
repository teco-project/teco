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

extension TCMonitorError {
    public struct ResourceNotFound: TCMonitorErrorType {
        enum Code: String {
            case notExistTask = "ResourceNotFound.NotExistTask"
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

        /// 任务不存在。
        public static var notExistTask: ResourceNotFound {
            ResourceNotFound(.notExistTask)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asMonitorError() -> TCMonitorError {
            let code: TCMonitorError.Code
            switch self.error {
            case .notExistTask:
                code = .resourceNotFound_NotExistTask
            case .other:
                code = .resourceNotFound
            }
            return TCMonitorError(code, context: self.context)
        }
    }
}
