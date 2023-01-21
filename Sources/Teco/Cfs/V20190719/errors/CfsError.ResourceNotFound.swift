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

extension TCCfsError {
    public struct ResourceNotFound: TCCfsErrorType {
        enum Code: String {
            case fileSystemNotFound = "ResourceNotFound.FileSystemNotFound"
            case mountTargetNotFound = "ResourceNotFound.MountTargetNotFound"
            case pgroupNotFound = "ResourceNotFound.PgroupNotFound"
            case ruleNotFound = "ResourceNotFound.RuleNotFound"
            case snapshotNotFound = "ResourceNotFound.SnapshotNotFound"
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

        /// 该文件系统不存在。
        public static var fileSystemNotFound: ResourceNotFound {
            ResourceNotFound(.fileSystemNotFound)
        }

        /// 挂载点不存在。
        public static var mountTargetNotFound: ResourceNotFound {
            ResourceNotFound(.mountTargetNotFound)
        }

        /// 权限组不存在。
        public static var pgroupNotFound: ResourceNotFound {
            ResourceNotFound(.pgroupNotFound)
        }

        /// 权限规则不存在。
        public static var ruleNotFound: ResourceNotFound {
            ResourceNotFound(.ruleNotFound)
        }

        /// 快照ID 不存在。
        ///
        /// 检测快照ID 是否正确输入
        public static var snapshotNotFound: ResourceNotFound {
            ResourceNotFound(.snapshotNotFound)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asCfsError() -> TCCfsError {
            let code: TCCfsError.Code
            switch self.error {
            case .fileSystemNotFound:
                code = .resourceNotFound_FileSystemNotFound
            case .mountTargetNotFound:
                code = .resourceNotFound_MountTargetNotFound
            case .pgroupNotFound:
                code = .resourceNotFound_PgroupNotFound
            case .ruleNotFound:
                code = .resourceNotFound_RuleNotFound
            case .snapshotNotFound:
                code = .resourceNotFound_SnapshotNotFound
            case .other:
                code = .resourceNotFound
            }
            return TCCfsError(code, context: self.context)
        }
    }
}
