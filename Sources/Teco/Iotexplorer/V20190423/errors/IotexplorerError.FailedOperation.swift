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

extension TCIotexplorerError {
    public struct FailedOperation: TCIotexplorerErrorType {
        enum Code: String {
            case actionUnreachable = "FailedOperation.ActionUnreachable"
            case broadcastTaskIsRunning = "FailedOperation.BroadcastTaskIsRunning"
            case deviceAlreadyDisabled = "FailedOperation.DeviceAlreadyDisabled"
            case deviceFirmwareIsUpdated = "FailedOperation.DeviceFirmwareIsUpdated"
            case deviceInfoOutdated = "FailedOperation.DeviceInfoOutdated"
            case deviceNoSubscription = "FailedOperation.DeviceNoSubscription"
            case deviceOffline = "FailedOperation.DeviceOffline"
            case otherUpdateTaskExist = "FailedOperation.OtherUpdateTaskExist"
            case productNotReleased = "FailedOperation.ProductNotReleased"
            case rrpcTimeout = "FailedOperation.RRPCTimeout"
            case ruleAlreadyDisabled = "FailedOperation.RuleAlreadyDisabled"
            case ruleAlreadyEnabled = "FailedOperation.RuleAlreadyEnabled"
            case someProductIsAlreadyBinded = "FailedOperation.SomeProductIsAlreadyBinded"
            case timeout = "FailedOperation.Timeout"
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

        /// ????????????????????????
        public static var actionUnreachable: FailedOperation {
            FailedOperation(.actionUnreachable)
        }

        /// ???????????????????????????
        public static var broadcastTaskIsRunning: FailedOperation {
            FailedOperation(.broadcastTaskIsRunning)
        }

        /// ????????????????????????
        public static var deviceAlreadyDisabled: FailedOperation {
            FailedOperation(.deviceAlreadyDisabled)
        }

        /// ?????????????????????????????????
        public static var deviceFirmwareIsUpdated: FailedOperation {
            FailedOperation(.deviceFirmwareIsUpdated)
        }

        /// ???????????????????????????
        public static var deviceInfoOutdated: FailedOperation {
            FailedOperation(.deviceInfoOutdated)
        }

        /// ??????:????????????????????????????????????Topic???
        public static var deviceNoSubscription: FailedOperation {
            FailedOperation(.deviceNoSubscription)
        }

        /// ???????????????????????????
        public static var deviceOffline: FailedOperation {
            FailedOperation(.deviceOffline)
        }

        /// ???????????????????????????
        public static var otherUpdateTaskExist: FailedOperation {
            FailedOperation(.otherUpdateTaskExist)
        }

        /// ?????????????????????
        public static var productNotReleased: FailedOperation {
            FailedOperation(.productNotReleased)
        }

        /// RRPC?????????????????????????????????
        public static var rrpcTimeout: FailedOperation {
            FailedOperation(.rrpcTimeout)
        }

        /// ?????????????????????
        public static var ruleAlreadyDisabled: FailedOperation {
            FailedOperation(.ruleAlreadyDisabled)
        }

        /// ????????????????????????
        public static var ruleAlreadyEnabled: FailedOperation {
            FailedOperation(.ruleAlreadyEnabled)
        }

        /// ??????????????????????????????
        public static var someProductIsAlreadyBinded: FailedOperation {
            FailedOperation(.someProductIsAlreadyBinded)
        }

        /// ???????????????
        public static var timeout: FailedOperation {
            FailedOperation(.timeout)
        }

        /// ???????????????
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asIotexplorerError() -> TCIotexplorerError {
            let code: TCIotexplorerError.Code
            switch self.error {
            case .actionUnreachable: 
                code = .failedOperation_ActionUnreachable
            case .broadcastTaskIsRunning: 
                code = .failedOperation_BroadcastTaskIsRunning
            case .deviceAlreadyDisabled: 
                code = .failedOperation_DeviceAlreadyDisabled
            case .deviceFirmwareIsUpdated: 
                code = .failedOperation_DeviceFirmwareIsUpdated
            case .deviceInfoOutdated: 
                code = .failedOperation_DeviceInfoOutdated
            case .deviceNoSubscription: 
                code = .failedOperation_DeviceNoSubscription
            case .deviceOffline: 
                code = .failedOperation_DeviceOffline
            case .otherUpdateTaskExist: 
                code = .failedOperation_OtherUpdateTaskExist
            case .productNotReleased: 
                code = .failedOperation_ProductNotReleased
            case .rrpcTimeout: 
                code = .failedOperation_RRPCTimeout
            case .ruleAlreadyDisabled: 
                code = .failedOperation_RuleAlreadyDisabled
            case .ruleAlreadyEnabled: 
                code = .failedOperation_RuleAlreadyEnabled
            case .someProductIsAlreadyBinded: 
                code = .failedOperation_SomeProductIsAlreadyBinded
            case .timeout: 
                code = .failedOperation_Timeout
            case .other: 
                code = .failedOperation
            }
            return TCIotexplorerError(code, context: self.context)
        }
    }
}
