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

extension TCEcmError {
    public struct FailedOperation: TCEcmErrorType {
        enum Code: String {
            case blockBalance = "FailedOperation.BlockBalance"
            case dataOperationFailed = "FailedOperation.DataOperationFailed"
            case diskAttached = "FailedOperation.DiskAttached"
            case imageInUse = "FailedOperation.ImageInUse"
            case instanceInModule = "FailedOperation.InstanceInModule"
            case instanceNotAllStopped = "FailedOperation.InstanceNotAllStopped"
            case instanceOwnerCheckFailed = "FailedOperation.InstanceOwnerCheckFailed"
            case internalOperationFailure = "FailedOperation.InternalOperationFailure"
            case invalidStatus = "FailedOperation.InvalidStatus"
            case operationConflict = "FailedOperation.OperationConflict"
            case operationNotAllow = "FailedOperation.OperationNotAllow"
            case privateIpAddressBinded = "FailedOperation.PrivateIpAddressBinded"
            case privateIpAddressUnavailable = "FailedOperation.PrivateIpAddressUnavailable"
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

        /// 余额不足。
        public static var blockBalance: FailedOperation {
            FailedOperation(.blockBalance)
        }

        /// 数据操作失败。
        public static var dataOperationFailed: FailedOperation {
            FailedOperation(.dataOperationFailed)
        }

        /// FailedOperation.DiskAttached
        public static var diskAttached: FailedOperation {
            FailedOperation(.diskAttached)
        }

        /// 镜像正在使用中。
        public static var imageInUse: FailedOperation {
            FailedOperation(.imageInUse)
        }

        /// 模块下存在实例。
        public static var instanceInModule: FailedOperation {
            FailedOperation(.instanceInModule)
        }

        /// 实例没有全部关机。
        public static var instanceNotAllStopped: FailedOperation {
            FailedOperation(.instanceNotAllStopped)
        }

        /// 实例不属于当前模块。
        public static var instanceOwnerCheckFailed: FailedOperation {
            FailedOperation(.instanceOwnerCheckFailed)
        }

        /// 内部操作错误。
        public static var internalOperationFailure: FailedOperation {
            FailedOperation(.internalOperationFailure)
        }

        /// 当前状态无法执行该操作。
        public static var invalidStatus: FailedOperation {
            FailedOperation(.invalidStatus)
        }

        /// 其他操作正在运行，无法进行当前操作。
        public static var operationConflict: FailedOperation {
            FailedOperation(.operationConflict)
        }

        /// 不允许执行当前操作。
        public static var operationNotAllow: FailedOperation {
            FailedOperation(.operationNotAllow)
        }

        /// 该内网IP已经绑定了弹性IP。
        public static var privateIpAddressBinded: FailedOperation {
            FailedOperation(.privateIpAddressBinded)
        }

        /// 内网IP状态非可用状态。
        public static var privateIpAddressUnavailable: FailedOperation {
            FailedOperation(.privateIpAddressUnavailable)
        }

        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asEcmError() -> TCEcmError {
            let code: TCEcmError.Code
            switch self.error {
            case .blockBalance:
                code = .failedOperation_BlockBalance
            case .dataOperationFailed:
                code = .failedOperation_DataOperationFailed
            case .diskAttached:
                code = .failedOperation_DiskAttached
            case .imageInUse:
                code = .failedOperation_ImageInUse
            case .instanceInModule:
                code = .failedOperation_InstanceInModule
            case .instanceNotAllStopped:
                code = .failedOperation_InstanceNotAllStopped
            case .instanceOwnerCheckFailed:
                code = .failedOperation_InstanceOwnerCheckFailed
            case .internalOperationFailure:
                code = .failedOperation_InternalOperationFailure
            case .invalidStatus:
                code = .failedOperation_InvalidStatus
            case .operationConflict:
                code = .failedOperation_OperationConflict
            case .operationNotAllow:
                code = .failedOperation_OperationNotAllow
            case .privateIpAddressBinded:
                code = .failedOperation_PrivateIpAddressBinded
            case .privateIpAddressUnavailable:
                code = .failedOperation_PrivateIpAddressUnavailable
            case .other:
                code = .failedOperation
            }
            return TCEcmError(code, context: self.context)
        }
    }
}
