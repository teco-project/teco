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

extension TCIotcloudError {
    public struct FailedOperation: TCIotcloudErrorType {
        enum Code: String {
            case accountIsolated = "FailedOperation.AccountIsolated"
            case alreadyDistributionDevice = "FailedOperation.AlreadyDistributionDevice"
            case bindDeviceOverLimit = "FailedOperation.BindDeviceOverLimit"
            case broadcastTaskIsRunning = "FailedOperation.BroadcastTaskIsRunning"
            case deviceAlreadyDisabled = "FailedOperation.DeviceAlreadyDisabled"
            case deviceFirmwareTaskAlreadDone = "FailedOperation.DeviceFirmwareTaskAlreadDone"
            case deviceIsUpdating = "FailedOperation.DeviceIsUpdating"
            case deviceNoSubscription = "FailedOperation.DeviceNoSubscription"
            case deviceOffline = "FailedOperation.DeviceOffline"
            case deviceRunningOtherOtaTask = "FailedOperation.DeviceRunningOtherOtaTask"
            case duplicationOfFunctionItem = "FailedOperation.DuplicationOfFunctionItem"
            case functionFileNotExist = "FailedOperation.FunctionFileNotExist"
            case invalidMsgLen = "FailedOperation.InvalidMsgLen"
            case invalidTopicName = "FailedOperation.InvalidTopicName"
            case productNotBind = "FailedOperation.ProductNotBind"
            case productResourceDuplicate = "FailedOperation.ProductResourceDuplicate"
            case proxyIPIsNotEnough = "FailedOperation.ProxyIPIsNotEnough"
            case rrpcTimeout = "FailedOperation.RRPCTimeout"
            case ruleAlreadyDisabled = "FailedOperation.RuleAlreadyDisabled"
            case ruleAlreadyEnabled = "FailedOperation.RuleAlreadyEnabled"
            case tidWhiteListNotOpen = "FailedOperation.TidWhiteListNotOpen"
            case updateVersionNotMatch = "FailedOperation.UpdateVersionNotMatch"
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

        /// ???????????????????????????????????????
        ///
        /// ?????????????????????????????????????????????
        public static var accountIsolated: FailedOperation {
            FailedOperation(.accountIsolated)
        }

        /// ???????????????????????????????????????
        public static var alreadyDistributionDevice: FailedOperation {
            FailedOperation(.alreadyDistributionDevice)
        }

        /// ???????????????????????????
        public static var bindDeviceOverLimit: FailedOperation {
            FailedOperation(.bindDeviceOverLimit)
        }

        /// ???????????????????????????
        public static var broadcastTaskIsRunning: FailedOperation {
            FailedOperation(.broadcastTaskIsRunning)
        }

        /// ????????????????????????
        public static var deviceAlreadyDisabled: FailedOperation {
            FailedOperation(.deviceAlreadyDisabled)
        }

        /// ???????????????????????????????????????
        public static var deviceFirmwareTaskAlreadDone: FailedOperation {
            FailedOperation(.deviceFirmwareTaskAlreadDone)
        }

        /// ????????????????????????
        public static var deviceIsUpdating: FailedOperation {
            FailedOperation(.deviceIsUpdating)
        }

        /// ???????????????????????????topic???
        public static var deviceNoSubscription: FailedOperation {
            FailedOperation(.deviceNoSubscription)
        }

        /// ???????????????
        public static var deviceOffline: FailedOperation {
            FailedOperation(.deviceOffline)
        }

        /// ????????????????????????ota???????????????
        public static var deviceRunningOtherOtaTask: FailedOperation {
            FailedOperation(.deviceRunningOtherOtaTask)
        }

        /// ??????????????????????????????
        public static var duplicationOfFunctionItem: FailedOperation {
            FailedOperation(.duplicationOfFunctionItem)
        }

        /// ????????????????????????
        public static var functionFileNotExist: FailedOperation {
            FailedOperation(.functionFileNotExist)
        }

        /// ?????????????????????
        public static var invalidMsgLen: FailedOperation {
            FailedOperation(.invalidMsgLen)
        }

        /// ??????topic?????????
        public static var invalidTopicName: FailedOperation {
            FailedOperation(.invalidTopicName)
        }

        /// ???????????????????????????????????????
        public static var productNotBind: FailedOperation {
            FailedOperation(.productNotBind)
        }

        /// ??????????????????????????????
        public static var productResourceDuplicate: FailedOperation {
            FailedOperation(.productResourceDuplicate)
        }

        /// ??????ip????????????????????????
        public static var proxyIPIsNotEnough: FailedOperation {
            FailedOperation(.proxyIPIsNotEnough)
        }

        /// RRPC?????????????????????????????????
        public static var rrpcTimeout: FailedOperation {
            FailedOperation(.rrpcTimeout)
        }

        /// ???????????????????????????????????????????????????????????????
        public static var ruleAlreadyDisabled: FailedOperation {
            FailedOperation(.ruleAlreadyDisabled)
        }

        /// ??????????????????????????????
        public static var ruleAlreadyEnabled: FailedOperation {
            FailedOperation(.ruleAlreadyEnabled)
        }

        /// ??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????
        public static var tidWhiteListNotOpen: FailedOperation {
            FailedOperation(.tidWhiteListNotOpen)
        }

        /// ????????????????????????
        public static var updateVersionNotMatch: FailedOperation {
            FailedOperation(.updateVersionNotMatch)
        }

        /// ???????????????
        public static var other: FailedOperation {
            FailedOperation(.other)
        }

        public func asIotcloudError() -> TCIotcloudError {
            let code: TCIotcloudError.Code
            switch self.error {
            case .accountIsolated: 
                code = .failedOperation_AccountIsolated
            case .alreadyDistributionDevice: 
                code = .failedOperation_AlreadyDistributionDevice
            case .bindDeviceOverLimit: 
                code = .failedOperation_BindDeviceOverLimit
            case .broadcastTaskIsRunning: 
                code = .failedOperation_BroadcastTaskIsRunning
            case .deviceAlreadyDisabled: 
                code = .failedOperation_DeviceAlreadyDisabled
            case .deviceFirmwareTaskAlreadDone: 
                code = .failedOperation_DeviceFirmwareTaskAlreadDone
            case .deviceIsUpdating: 
                code = .failedOperation_DeviceIsUpdating
            case .deviceNoSubscription: 
                code = .failedOperation_DeviceNoSubscription
            case .deviceOffline: 
                code = .failedOperation_DeviceOffline
            case .deviceRunningOtherOtaTask: 
                code = .failedOperation_DeviceRunningOtherOtaTask
            case .duplicationOfFunctionItem: 
                code = .failedOperation_DuplicationOfFunctionItem
            case .functionFileNotExist: 
                code = .failedOperation_FunctionFileNotExist
            case .invalidMsgLen: 
                code = .failedOperation_InvalidMsgLen
            case .invalidTopicName: 
                code = .failedOperation_InvalidTopicName
            case .productNotBind: 
                code = .failedOperation_ProductNotBind
            case .productResourceDuplicate: 
                code = .failedOperation_ProductResourceDuplicate
            case .proxyIPIsNotEnough: 
                code = .failedOperation_ProxyIPIsNotEnough
            case .rrpcTimeout: 
                code = .failedOperation_RRPCTimeout
            case .ruleAlreadyDisabled: 
                code = .failedOperation_RuleAlreadyDisabled
            case .ruleAlreadyEnabled: 
                code = .failedOperation_RuleAlreadyEnabled
            case .tidWhiteListNotOpen: 
                code = .failedOperation_TidWhiteListNotOpen
            case .updateVersionNotMatch: 
                code = .failedOperation_UpdateVersionNotMatch
            case .other: 
                code = .failedOperation
            }
            return TCIotcloudError(code, context: self.context)
        }
    }
}
