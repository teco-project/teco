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

extension TCChdfsError {
    public struct ResourceNotFound: TCChdfsErrorType {
        enum Code: String {
            case accessGroupNotExists = "ResourceNotFound.AccessGroupNotExists"
            case accessRuleNotExists = "ResourceNotFound.AccessRuleNotExists"
            case fileSystemNotExists = "ResourceNotFound.FileSystemNotExists"
            case mountPointNotExists = "ResourceNotFound.MountPointNotExists"
            case vpcNotExists = "ResourceNotFound.VpcNotExists"
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

        /// 权限组不存在。
        public static var accessGroupNotExists: ResourceNotFound {
            ResourceNotFound(.accessGroupNotExists)
        }

        /// 权限规则不存在。
        public static var accessRuleNotExists: ResourceNotFound {
            ResourceNotFound(.accessRuleNotExists)
        }

        /// 文件系统不存在。
        public static var fileSystemNotExists: ResourceNotFound {
            ResourceNotFound(.fileSystemNotExists)
        }

        /// 挂载点不存在。
        public static var mountPointNotExists: ResourceNotFound {
            ResourceNotFound(.mountPointNotExists)
        }

        /// VPC网络不存在。
        public static var vpcNotExists: ResourceNotFound {
            ResourceNotFound(.vpcNotExists)
        }

        /// 资源不存在。
        public static var other: ResourceNotFound {
            ResourceNotFound(.other)
        }

        public func asChdfsError() -> TCChdfsError {
            let code: TCChdfsError.Code
            switch self.error {
            case .accessGroupNotExists:
                code = .resourceNotFound_AccessGroupNotExists
            case .accessRuleNotExists:
                code = .resourceNotFound_AccessRuleNotExists
            case .fileSystemNotExists:
                code = .resourceNotFound_FileSystemNotExists
            case .mountPointNotExists:
                code = .resourceNotFound_MountPointNotExists
            case .vpcNotExists:
                code = .resourceNotFound_VpcNotExists
            case .other:
                code = .resourceNotFound
            }
            return TCChdfsError(code, context: self.context)
        }
    }
}
