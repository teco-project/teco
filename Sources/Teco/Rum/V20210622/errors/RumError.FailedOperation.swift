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

extension TCRumError {
    public struct FailedOperation: TCRumErrorType {
        enum Code: String {
            case chargeNoBalance = "FailedOperation.ChargeNoBalance"
            case chargeNoPayRight = "FailedOperation.ChargeNoPayRight"
            case chargeParamInvalid = "FailedOperation.ChargeParamInvalid"
            case clsCallFail = "FailedOperation.ClsCallFail"
            case dataBaseException = "FailedOperation.DataBaseException"
            case infrastructureError = "FailedOperation.InfrastructureError"
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

        /// 购买资源时账户余额不足，请先充值再进行购买。
        public static var chargeNoBalance: FailedOperation {
            FailedOperation(.chargeNoBalance)
        }

        /// 该账号没有付费权限，请联系对应账号管理员。
        public static var chargeNoPayRight: FailedOperation {
            FailedOperation(.chargeNoPayRight)
        }

        /// 请联系腾讯云助手与产品开发
        public static var chargeParamInvalid: FailedOperation {
            FailedOperation(.chargeParamInvalid)
        }

        /// CLS调用失败
        public static var clsCallFail: FailedOperation {
            FailedOperation(.clsCallFail)
        }

        /// 数据操作异常
        public static var dataBaseException: FailedOperation {
            FailedOperation(.dataBaseException)
        }

        /// 第三方依赖异常。
        public static var infrastructureError: FailedOperation {
            FailedOperation(.infrastructureError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asRumError() -> TCRumError {
            let code: TCRumError.Code
            switch self.error {
            case .chargeNoBalance:
                code = .failedOperation_ChargeNoBalance
            case .chargeNoPayRight:
                code = .failedOperation_ChargeNoPayRight
            case .chargeParamInvalid:
                code = .failedOperation_ChargeParamInvalid
            case .clsCallFail:
                code = .failedOperation_ClsCallFail
            case .dataBaseException:
                code = .failedOperation_DataBaseException
            case .infrastructureError:
                code = .failedOperation_InfrastructureError
            case .other:
                code = .failedOperation
            }
            return TCRumError(code, context: self.context)
        }
    }
}
