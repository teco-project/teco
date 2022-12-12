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

extension TCTmtError {
    public struct FailedOperation: TCTmtErrorType {
        enum Code: String {
            case insertErr = "FailedOperation.InsertErr"
            case noFreeAmount = "FailedOperation.NoFreeAmount"
            case requestAiLabErr = "FailedOperation.RequestAiLabErr"
            case serviceIsolate = "FailedOperation.ServiceIsolate"
            case userNotRegistered = "FailedOperation.UserNotRegistered"
            case other = "FailedOperation"
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
        
        public static var insertErr: FailedOperation {
            FailedOperation(.insertErr)
        }
        
        /// 本月免费额度已用完，如需继续使用您可以在机器翻译控制台升级为付费使用。
        public static var noFreeAmount: FailedOperation {
            FailedOperation(.noFreeAmount)
        }
        
        public static var requestAiLabErr: FailedOperation {
            FailedOperation(.requestAiLabErr)
        }
        
        /// 账号因为欠费停止服务，请在腾讯云账户充值。
        public static var serviceIsolate: FailedOperation {
            FailedOperation(.serviceIsolate)
        }
        
        /// 服务未开通，请在腾讯云官网机器翻译控制台开通服务。
        public static var userNotRegistered: FailedOperation {
            FailedOperation(.userNotRegistered)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
        
        public func asTmtError() -> TCTmtError {
            let code: TCTmtError.Code
            switch self.error {
            case .insertErr: 
                code = .failedOperation_InsertErr
            case .noFreeAmount: 
                code = .failedOperation_NoFreeAmount
            case .requestAiLabErr: 
                code = .failedOperation_RequestAiLabErr
            case .serviceIsolate: 
                code = .failedOperation_ServiceIsolate
            case .userNotRegistered: 
                code = .failedOperation_UserNotRegistered
            case .other: 
                code = .failedOperation
            }
            return TCTmtError(code, context: self.context)
        }
    }
}
