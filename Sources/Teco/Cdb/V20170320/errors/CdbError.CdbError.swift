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

extension TCCdbError {
    public struct CdbError: TCCdbErrorType {
        enum Code: String {
            case backupError = "CdbError.BackupError"
            case databaseError = "CdbError.DatabaseError"
            case importError = "CdbError.ImportError"
            case taskError = "CdbError.TaskError"
            case other = "CdbError"
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

        /// 备份错误。
        public static var backupError: CdbError {
            CdbError(.backupError)
        }

        /// 后端数据库错误。
        public static var databaseError: CdbError {
            CdbError(.databaseError)
        }

        /// 导入任务错误。
        public static var importError: CdbError {
            CdbError(.importError)
        }

        /// 后端任务错误。
        public static var taskError: CdbError {
            CdbError(.taskError)
        }

        /// 后端错误或者流程错误。
        public static var other: CdbError {
            CdbError(.other)
        }

        public func asCdbError() -> TCCdbError {
            let code: TCCdbError.Code
            switch self.error {
            case .backupError:
                code = .cdbError_BackupError
            case .databaseError:
                code = .cdbError_DatabaseError
            case .importError:
                code = .cdbError_ImportError
            case .taskError:
                code = .cdbError_TaskError
            case .other:
                code = .cdbError
            }
            return TCCdbError(code, context: self.context)
        }
    }
}
