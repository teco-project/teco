//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCDtsError {
    public struct FailedOperation: TCDtsErrorType {
        enum Code: String {
            case failedOperationError = "FailedOperation.FailedOperationError"
            case notAllowOperation = "FailedOperation.NotAllowOperation"
            case startJobFailed = "FailedOperation.StartJobFailed"
            case statusInConflict = "FailedOperation.StatusInConflict"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        public init ?(errorCode: String, context: TCErrorContext) {
            guard let error = Code(rawValue: errorCode) else {
                return nil
            }
            self.error = error
            self.context = context
        }
        
        internal init (_ error: Code, context: TCErrorContext? = nil) {
            self.error = error
            self.context = context
        }
        
        public static var failedOperationError: FailedOperation {
            FailedOperation(.failedOperationError)
        }
        
        /// 禁止该操作。
        public static var notAllowOperation: FailedOperation {
            FailedOperation(.notAllowOperation)
        }
        
        /// 任务开始失败。
        public static var startJobFailed: FailedOperation {
            FailedOperation(.startJobFailed)
        }
        
        /// 当前状态冲突，不能执行该操作。
        public static var statusInConflict: FailedOperation {
            FailedOperation(.statusInConflict)
        }
        
        public func asDtsError() -> TCDtsError {
            let code: TCDtsError.Code
            switch self.error {
            case .failedOperationError: 
                code = .failedOperation_FailedOperationError
            case .notAllowOperation: 
                code = .failedOperation_NotAllowOperation
            case .startJobFailed: 
                code = .failedOperation_StartJobFailed
            case .statusInConflict: 
                code = .failedOperation_StatusInConflict
            }
            return TCDtsError(code, context: self.context)
        }
    }
}
