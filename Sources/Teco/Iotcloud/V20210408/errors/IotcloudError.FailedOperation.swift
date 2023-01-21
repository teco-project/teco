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

        /// 操作失败，账号已欠费隔离。
        ///
        /// 请检查账号余额情况，及时充值。
        public static var accountIsolated: FailedOperation {
            FailedOperation(.accountIsolated)
        }

        /// 已分发设备，不能再次创建。
        public static var alreadyDistributionDevice: FailedOperation {
            FailedOperation(.alreadyDistributionDevice)
        }

        /// 绑定设备超过限制。
        public static var bindDeviceOverLimit: FailedOperation {
            FailedOperation(.bindDeviceOverLimit)
        }

        /// 广播任务正在执行。
        public static var broadcastTaskIsRunning: FailedOperation {
            FailedOperation(.broadcastTaskIsRunning)
        }

        /// 设备已经被禁用。
        public static var deviceAlreadyDisabled: FailedOperation {
            FailedOperation(.deviceAlreadyDisabled)
        }

        /// 设备固件升级任务已经完成。
        public static var deviceFirmwareTaskAlreadDone: FailedOperation {
            FailedOperation(.deviceFirmwareTaskAlreadDone)
        }

        /// 设备正在升级中。
        public static var deviceIsUpdating: FailedOperation {
            FailedOperation(.deviceIsUpdating)
        }

        /// 设备没有订阅相应的topic。
        public static var deviceNoSubscription: FailedOperation {
            FailedOperation(.deviceNoSubscription)
        }

        /// 设备离线。
        public static var deviceOffline: FailedOperation {
            FailedOperation(.deviceOffline)
        }

        /// 设备已经运行其他ota升级任务。
        public static var deviceRunningOtherOtaTask: FailedOperation {
            FailedOperation(.deviceRunningOtherOtaTask)
        }

        /// 不能创建重复的函数。
        public static var duplicationOfFunctionItem: FailedOperation {
            FailedOperation(.duplicationOfFunctionItem)
        }

        /// 函数文件不存在。
        public static var functionFileNotExist: FailedOperation {
            FailedOperation(.functionFileNotExist)
        }

        /// 消息长度非法。
        public static var invalidMsgLen: FailedOperation {
            FailedOperation(.invalidMsgLen)
        }

        /// 消息topic非法。
        public static var invalidTopicName: FailedOperation {
            FailedOperation(.invalidTopicName)
        }

        /// 产品未绑定，无法代理订阅。
        public static var productNotBind: FailedOperation {
            FailedOperation(.productNotBind)
        }

        /// 同名产品资源已存在。
        public static var productResourceDuplicate: FailedOperation {
            FailedOperation(.productResourceDuplicate)
        }

        /// 代理ip或端口资源不足。
        public static var proxyIPIsNotEnough: FailedOperation {
            FailedOperation(.proxyIPIsNotEnough)
        }

        /// RRPC接口未收到设备端响应。
        public static var rrpcTimeout: FailedOperation {
            FailedOperation(.rrpcTimeout)
        }

        /// 该规则引擎已经是禁用状态，不需要再被禁用。
        public static var ruleAlreadyDisabled: FailedOperation {
            FailedOperation(.ruleAlreadyDisabled)
        }

        /// 规则已经是启用状态。
        public static var ruleAlreadyEnabled: FailedOperation {
            FailedOperation(.ruleAlreadyEnabled)
        }

        /// 白名单校验未开启，用户不可创建设备，平台会根据设备认证时携带的设备名称自动创建设备。
        public static var tidWhiteListNotOpen: FailedOperation {
            FailedOperation(.tidWhiteListNotOpen)
        }

        /// 更新版本不匹配。
        public static var updateVersionNotMatch: FailedOperation {
            FailedOperation(.updateVersionNotMatch)
        }

        /// 操作失败。
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
