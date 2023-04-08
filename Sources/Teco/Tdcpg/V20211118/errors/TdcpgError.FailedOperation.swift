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

extension TCTdcpgError {
    public struct FailedOperation: TCTdcpgErrorType {
        enum Code: String {
            case databaseAccessError = "FailedOperation.DatabaseAccessError"
            case flowError = "FailedOperation.FlowError"
            case getVpcFailed = "FailedOperation.GetVpcFailed"
            case internalServiceAccessError = "FailedOperation.InternalServiceAccessError"
            case payModeInvalid = "FailedOperation.PayModeInvalid"
            case specNotChange = "FailedOperation.SpecNotChange"
            case specStorageLack = "FailedOperation.SpecStorageLack"
            case statusError = "FailedOperation.StatusError"
            case storagePayModeInvalid = "FailedOperation.StoragePayModeInvalid"
            case taskConflict = "FailedOperation.TaskConflict"
            case tradeAccessError = "FailedOperation.TradeAccessError"
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

        /// 元数据库访问失败，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var databaseAccessError: FailedOperation {
            FailedOperation(.databaseAccessError)
        }

        /// 创建流程失败,请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var flowError: FailedOperation {
            FailedOperation(.flowError)
        }

        /// 获取VPC信息异常，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var getVpcFailed: FailedOperation {
            FailedOperation(.getVpcFailed)
        }

        /// 内部服务访问失败，请稍后重试。如果持续不成功，请联系客服。
        public static var internalServiceAccessError: FailedOperation {
            FailedOperation(.internalServiceAccessError)
        }

        /// 当前的付费模式不支持此操作。
        public static var payModeInvalid: FailedOperation {
            FailedOperation(.payModeInvalid)
        }

        /// 规格没有变化，CPU/Memory至少升级一项。
        public static var specNotChange: FailedOperation {
            FailedOperation(.specNotChange)
        }

        /// 对应规格的存储上限不够，无法满足当前集群的数据存储。
        public static var specStorageLack: FailedOperation {
            FailedOperation(.specStorageLack)
        }

        /// 状态异常，不允许操作。
        public static var statusError: FailedOperation {
            FailedOperation(.statusError)
        }

        /// 当前存储的付费模式不支持此操作。
        public static var storagePayModeInvalid: FailedOperation {
            FailedOperation(.storagePayModeInvalid)
        }

        /// 任务冲突，请稍后重试。如果持续不成功，请联系客服。
        public static var taskConflict: FailedOperation {
            FailedOperation(.taskConflict)
        }

        /// 请求计费服务异常，请稍后重试。如果持续不成功，请联系客服进行处理。
        public static var tradeAccessError: FailedOperation {
            FailedOperation(.tradeAccessError)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asTdcpgError() -> TCTdcpgError {
            let code: TCTdcpgError.Code
            switch self.error {
            case .databaseAccessError:
                code = .failedOperation_DatabaseAccessError
            case .flowError:
                code = .failedOperation_FlowError
            case .getVpcFailed:
                code = .failedOperation_GetVpcFailed
            case .internalServiceAccessError:
                code = .failedOperation_InternalServiceAccessError
            case .payModeInvalid:
                code = .failedOperation_PayModeInvalid
            case .specNotChange:
                code = .failedOperation_SpecNotChange
            case .specStorageLack:
                code = .failedOperation_SpecStorageLack
            case .statusError:
                code = .failedOperation_StatusError
            case .storagePayModeInvalid:
                code = .failedOperation_StoragePayModeInvalid
            case .taskConflict:
                code = .failedOperation_TaskConflict
            case .tradeAccessError:
                code = .failedOperation_TradeAccessError
            case .other:
                code = .failedOperation
            }
            return TCTdcpgError(code, context: self.context)
        }
    }
}
