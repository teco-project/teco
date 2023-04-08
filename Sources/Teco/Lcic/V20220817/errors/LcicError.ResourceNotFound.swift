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

extension TCLcicError {
    public struct ResourceNotFound: TCLcicErrorType {
        enum Code: String {
            case document = "ResourceNotFound.Document"
            case groupNotExist = "ResourceNotFound.GroupNotExist"
            case groupPartUsersNotExist = "ResourceNotFound.GroupPartUsersNotExist"
            case room = "ResourceNotFound.Room"
            case user = "ResourceNotFound.User"
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

        /// 文档不存在。
        public static var document: ResourceNotFound {
            ResourceNotFound(.document)
        }

        /// 群组不存在
        ///
        /// 检测群组ID参数，或先创建群组
        public static var groupNotExist: ResourceNotFound {
            ResourceNotFound(.groupNotExist)
        }

        /// 用户ID不存在
        ///
        /// 检查用户ID是否已注册
        public static var groupPartUsersNotExist: ResourceNotFound {
            ResourceNotFound(.groupPartUsersNotExist)
        }

        /// 房间不存在。
        public static var room: ResourceNotFound {
            ResourceNotFound(.room)
        }

        /// 用户不存在。
        public static var user: ResourceNotFound {
            ResourceNotFound(.user)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asLcicError() -> TCLcicError {
            let code: TCLcicError.Code
            switch self.error {
            case .document:
                code = .resourceNotFound_Document
            case .groupNotExist:
                code = .resourceNotFound_GroupNotExist
            case .groupPartUsersNotExist:
                code = .resourceNotFound_GroupPartUsersNotExist
            case .room:
                code = .resourceNotFound_Room
            case .user:
                code = .resourceNotFound_User
            case .other:
                code = .resourceNotFound
            }
            return TCLcicError(code, context: self.context)
        }
    }
}
