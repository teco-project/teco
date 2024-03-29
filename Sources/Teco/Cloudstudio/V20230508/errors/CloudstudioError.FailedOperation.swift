//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension TCCloudstudioError {
    public struct FailedOperation: TCCloudstudioErrorType {
        enum Code: String {
            case workspaceNameDuplicate = "FailedOperation.WorkspaceNameDuplicate"
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

        /// 工作空间名称重复
        ///
        /// 更换工作名称入参后重试
        public static var workspaceNameDuplicate: FailedOperation {
            FailedOperation(.workspaceNameDuplicate)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asCloudstudioError() -> TCCloudstudioError {
            let code: TCCloudstudioError.Code
            switch self.error {
            case .workspaceNameDuplicate:
                code = .failedOperation_WorkspaceNameDuplicate
            case .other:
                code = .failedOperation
            }
            return TCCloudstudioError(code, context: self.context)
        }
    }
}
