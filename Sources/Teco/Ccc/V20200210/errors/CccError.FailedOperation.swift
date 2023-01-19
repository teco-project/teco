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

extension TCCccError {
    public struct FailedOperation: TCCccErrorType {
        enum Code: String {
            case callOutFailed = "FailedOperation.CallOutFailed"
            case calleeIsLimited = "FailedOperation.CalleeIsLimited"
            case callerOverFrequency = "FailedOperation.CallerOverFrequency"
            case curStateNotAllowModify = "FailedOperation.CurStateNotAllowModify"
            case duplicatedAccount = "FailedOperation.DuplicatedAccount"
            case noCallOutNumber = "FailedOperation.NoCallOutNumber"
            case permissionDenied = "FailedOperation.PermissionDenied"
            case seatStatusBusy = "FailedOperation.SeatStatusBusy"
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

        /// 外呼失败。
        ///
        /// 外呼失败，请检查主叫或被叫号码是否正常。
        public static var callOutFailed: FailedOperation {
            FailedOperation(.callOutFailed)
        }

        public static var calleeIsLimited: FailedOperation {
            FailedOperation(.calleeIsLimited)
        }

        public static var callerOverFrequency: FailedOperation {
            FailedOperation(.callerOverFrequency)
        }

        public static var curStateNotAllowModify: FailedOperation {
            FailedOperation(.curStateNotAllowModify)
        }

        /// 重复账号。
        public static var duplicatedAccount: FailedOperation {
            FailedOperation(.duplicatedAccount)
        }

        public static var noCallOutNumber: FailedOperation {
            FailedOperation(.noCallOutNumber)
        }

        /// 权限不足。
        ///
        /// 检查账号权限
        public static var permissionDenied: FailedOperation {
            FailedOperation(.permissionDenied)
        }

        public static var seatStatusBusy: FailedOperation {
            FailedOperation(.seatStatusBusy)
        }

        public func asCccError() -> TCCccError {
            let code: TCCccError.Code
            switch self.error {
            case .callOutFailed:
                code = .failedOperation_CallOutFailed
            case .calleeIsLimited:
                code = .failedOperation_CalleeIsLimited
            case .callerOverFrequency:
                code = .failedOperation_CallerOverFrequency
            case .curStateNotAllowModify:
                code = .failedOperation_CurStateNotAllowModify
            case .duplicatedAccount:
                code = .failedOperation_DuplicatedAccount
            case .noCallOutNumber:
                code = .failedOperation_NoCallOutNumber
            case .permissionDenied:
                code = .failedOperation_PermissionDenied
            case .seatStatusBusy:
                code = .failedOperation_SeatStatusBusy
            }
            return TCCccError(code, context: self.context)
        }
    }
}
