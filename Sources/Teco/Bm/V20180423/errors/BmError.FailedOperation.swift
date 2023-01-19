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

extension TCBmError {
    public struct FailedOperation: TCBmErrorType {
        enum Code: String {
            case existRepairTask = "FailedOperation.ExistRepairTask"
            case tscAgentOffline = "FailedOperation.TscAgentOffline"
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

        /// 存在未结束故障单，操作失败。
        ///
        /// 设备仍处于故障状态中，请前往 维护平台-维修任务 进行故障处理，处理完毕稍后再试。
        public static var existRepairTask: FailedOperation {
            FailedOperation(.existRepairTask)
        }

        /// Tsc Agent不在线。
        public static var tscAgentOffline: FailedOperation {
            FailedOperation(.tscAgentOffline)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asBmError() -> TCBmError {
            let code: TCBmError.Code
            switch self.error {
            case .existRepairTask:
                code = .failedOperation_ExistRepairTask
            case .tscAgentOffline:
                code = .failedOperation_TscAgentOffline
            case .other:
                code = .failedOperation
            }
            return TCBmError(code, context: self.context)
        }
    }
}
