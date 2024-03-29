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

extension TCCfsError {
    public struct FailedOperation: TCCfsErrorType {
        enum Code: String {
            case bindResourcePkgFailed = "FailedOperation.BindResourcePkgFailed"
            case clientTokenInUse = "FailedOperation.ClientTokenInUse"
            case mountTargetExists = "FailedOperation.MountTargetExists"
            case pgroupInUse = "FailedOperation.PgroupInUse"
            case pgroupIsUpdating = "FailedOperation.PgroupIsUpdating"
            case pgroupLinkCfsv10 = "FailedOperation.PgroupLinkCfsv10"
            case untagResourceFailed = "FailedOperation.UntagResourceFailed"
            case other = "FailedOperation"
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

        /// 文件系统绑定资源包失败。
        public static var bindResourcePkgFailed: FailedOperation {
            FailedOperation(.bindResourcePkgFailed)
        }

        /// 资源正在创建中。
        public static var clientTokenInUse: FailedOperation {
            FailedOperation(.clientTokenInUse)
        }

        /// 文件系统存在挂载点。
        public static var mountTargetExists: FailedOperation {
            FailedOperation(.mountTargetExists)
        }

        /// 权限组已绑定文件系统。
        public static var pgroupInUse: FailedOperation {
            FailedOperation(.pgroupInUse)
        }

        /// 权限组正在更新中。
        public static var pgroupIsUpdating: FailedOperation {
            FailedOperation(.pgroupIsUpdating)
        }

        /// 该权限组关联了旧版本实例，请解除关联后重试。
        public static var pgroupLinkCfsv10: FailedOperation {
            FailedOperation(.pgroupLinkCfsv10)
        }

        /// 解绑资源标签失败。
        public static var untagResourceFailed: FailedOperation {
            FailedOperation(.untagResourceFailed)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCfsError() -> TCCfsError {
            let code: TCCfsError.Code
            switch self.error {
            case .bindResourcePkgFailed:
                code = .failedOperation_BindResourcePkgFailed
            case .clientTokenInUse:
                code = .failedOperation_ClientTokenInUse
            case .mountTargetExists:
                code = .failedOperation_MountTargetExists
            case .pgroupInUse:
                code = .failedOperation_PgroupInUse
            case .pgroupIsUpdating:
                code = .failedOperation_PgroupIsUpdating
            case .pgroupLinkCfsv10:
                code = .failedOperation_PgroupLinkCfsv10
            case .untagResourceFailed:
                code = .failedOperation_UntagResourceFailed
            case .other:
                code = .failedOperation
            }
            return TCCfsError(code, context: self.context)
        }
    }
}
