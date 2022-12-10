//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension TCIotexplorerError {
    public struct FailedOperation: TCErrorType {
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
        
        /// 动作消息不可达。
        public static var actionUnreachable: FailedOperation {
            FailedOperation(.actionUnreachable)
        }
        
        /// 广播任务正在执行。
        public static var broadcastTaskIsRunning: FailedOperation {
            FailedOperation(.broadcastTaskIsRunning)
        }
        
        /// 设备已经被禁用。
        public static var deviceAlreadyDisabled: FailedOperation {
            FailedOperation(.deviceAlreadyDisabled)
        }
        
        /// 设备已为目标升级版本。
        public static var deviceFirmwareIsUpdated: FailedOperation {
            FailedOperation(.deviceFirmwareIsUpdated)
        }
        
        /// 设备固件版本错误。
        public static var deviceInfoOutdated: FailedOperation {
            FailedOperation(.deviceInfoOutdated)
        }
        
        /// 返回:消息发送失败，设备未订阅Topic。
        public static var deviceNoSubscription: FailedOperation {
            FailedOperation(.deviceNoSubscription)
        }
        
        /// 设备处于离线状态。
        public static var deviceOffline: FailedOperation {
            FailedOperation(.deviceOffline)
        }
        
        /// 存在其他升级任务。
        public static var otherUpdateTaskExist: FailedOperation {
            FailedOperation(.otherUpdateTaskExist)
        }
        
        /// 产品尚未发布。
        public static var productNotReleased: FailedOperation {
            FailedOperation(.productNotReleased)
        }
        
        /// RRPC接口未收到设备端响应。
        public static var rrpcTimeout: FailedOperation {
            FailedOperation(.rrpcTimeout)
        }
        
        /// 转发已经停止。
        public static var ruleAlreadyDisabled: FailedOperation {
            FailedOperation(.ruleAlreadyDisabled)
        }
        
        /// 该规则已被启用。
        public static var ruleAlreadyEnabled: FailedOperation {
            FailedOperation(.ruleAlreadyEnabled)
        }
        
        /// 部分产品已经被绑定。
        public static var someProductIsAlreadyBinded: FailedOperation {
            FailedOperation(.someProductIsAlreadyBinded)
        }
        
        /// 超过时间。
        public static var timeout: FailedOperation {
            FailedOperation(.timeout)
        }
        
        /// 操作失败。
        public static var other: FailedOperation {
            FailedOperation(.other)
        }
    }
}

extension TCIotexplorerError.FailedOperation: Equatable {
    public static func == (lhs: TCIotexplorerError.FailedOperation, rhs: TCIotexplorerError.FailedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCIotexplorerError.FailedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCIotexplorerError.FailedOperation {
    public func toIotexplorerError() -> TCIotexplorerError {
        guard let code = TCIotexplorerError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCIotexplorerError(code, context: self.context)
    }
}