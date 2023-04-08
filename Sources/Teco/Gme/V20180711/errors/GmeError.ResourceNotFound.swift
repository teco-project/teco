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

extension TCGmeError {
    public struct ResourceNotFound: TCGmeErrorType {
        enum Code: String {
            case bizidIsNotFound = "ResourceNotFound.BizidIsNotFound"
            case roomNotFound = "ResourceNotFound.RoomNotFound"
            case taskNotFound = "ResourceNotFound.TaskNotFound"
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

        /// 应用ID不正确
        public static var bizidIsNotFound: ResourceNotFound {
            ResourceNotFound(.bizidIsNotFound)
        }

        /// 房间不存在
        public static var roomNotFound: ResourceNotFound {
            ResourceNotFound(.roomNotFound)
        }

        /// 任务ID不存在
        public static var taskNotFound: ResourceNotFound {
            ResourceNotFound(.taskNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asGmeError() -> TCGmeError {
            let code: TCGmeError.Code
            switch self.error {
            case .bizidIsNotFound:
                code = .resourceNotFound_BizidIsNotFound
            case .roomNotFound:
                code = .resourceNotFound_RoomNotFound
            case .taskNotFound:
                code = .resourceNotFound_TaskNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCGmeError(code, context: self.context)
        }
    }
}
