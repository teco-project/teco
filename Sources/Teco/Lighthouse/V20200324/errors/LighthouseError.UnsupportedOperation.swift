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

extension TCLighthouseError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case attachCcnConditionUnsatisfied = "UnsupportedOperation.AttachCcnConditionUnsatisfied"
            case attachCcnFailed = "UnsupportedOperation.AttachCcnFailed"
            case blueprintCurStateInvalid = "UnsupportedOperation.BlueprintCurStateInvalid"
            case blueprintOccupied = "UnsupportedOperation.BlueprintOccupied"
            case ccnAlreadyAttached = "UnsupportedOperation.CcnAlreadyAttached"
            case ccnNotAttached = "UnsupportedOperation.CcnNotAttached"
            case describeCcnAttachedInstancesFailed = "UnsupportedOperation.DescribeCcnAttachedInstancesFailed"
            case detachCcnFailed = "UnsupportedOperation.DetachCcnFailed"
            case diskBusy = "UnsupportedOperation.DiskBusy"
            case diskLatestOperationUnfinished = "UnsupportedOperation.DiskLatestOperationUnfinished"
            case firewallBusy = "UnsupportedOperation.FirewallBusy"
            case firewallVersionMismatch = "UnsupportedOperation.FirewallVersionMismatch"
            case instanceExpired = "UnsupportedOperation.InstanceExpired"
            case instanceLinuxUnixCreatingNotSupportPassword = "UnsupportedOperation.InstanceLinuxUnixCreatingNotSupportPassword"
            case invalidDiskState = "UnsupportedOperation.InvalidDiskState"
            case invalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
            case invalidSnapshotState = "UnsupportedOperation.InvalidSnapshotState"
            case keyPairBindDuplicate = "UnsupportedOperation.KeyPairBindDuplicate"
            case keyPairBindToBlueprints = "UnsupportedOperation.KeyPairBindToBlueprints"
            case keyPairNotBoundToInstance = "UnsupportedOperation.KeyPairNotBoundToInstance"
            case latestOperationUnfinished = "UnsupportedOperation.LatestOperationUnfinished"
            case notSupportSharedBlueprint = "UnsupportedOperation.NotSupportSharedBlueprint"
            case postDestroyResourceFailed = "UnsupportedOperation.PostDestroyResourceFailed"
            case resetAttachCcnFailed = "UnsupportedOperation.ResetAttachCcnFailed"
            case resourceNotReturnable = "UnsupportedOperation.ResourceNotReturnable"
            case snapshotBusy = "UnsupportedOperation.SnapshotBusy"
            case systemBusy = "UnsupportedOperation.SystemBusy"
            case windowsNotAllowToAssociateKeyPair = "UnsupportedOperation.WindowsNotAllowToAssociateKeyPair"
            case windowsNotSupportKeyPair = "UnsupportedOperation.WindowsNotSupportKeyPair"
            case other = "UnsupportedOperation"
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
        
        /// 没有实例不支持关联到云联网。
        public static var attachCcnConditionUnsatisfied: UnsupportedOperation {
            UnsupportedOperation(.attachCcnConditionUnsatisfied)
        }
        
        /// 关联云联网失败。请检查云联网状态并稍后再试。
        public static var attachCcnFailed: UnsupportedOperation {
            UnsupportedOperation(.attachCcnFailed)
        }
        
        /// 镜像当前状态不支持该操作。
        public static var blueprintCurStateInvalid: UnsupportedOperation {
            UnsupportedOperation(.blueprintCurStateInvalid)
        }
        
        /// 镜像被使用中，不支持该操作。
        public static var blueprintOccupied: UnsupportedOperation {
            UnsupportedOperation(.blueprintOccupied)
        }
        
        /// 已经关联云联网，不支持再次关联。
        public static var ccnAlreadyAttached: UnsupportedOperation {
            UnsupportedOperation(.ccnAlreadyAttached)
        }
        
        /// 云联网 尚未关联。不支持此操作。
        public static var ccnNotAttached: UnsupportedOperation {
            UnsupportedOperation(.ccnNotAttached)
        }
        
        /// 查询云联网关联的实例状态失败。请稍后再试。
        public static var describeCcnAttachedInstancesFailed: UnsupportedOperation {
            UnsupportedOperation(.describeCcnAttachedInstancesFailed)
        }
        
        /// 解关联云联网失败。请检查云联网状态并稍后再试。
        public static var detachCcnFailed: UnsupportedOperation {
            UnsupportedOperation(.detachCcnFailed)
        }
        
        /// 磁盘忙。
        public static var diskBusy: UnsupportedOperation {
            UnsupportedOperation(.diskBusy)
        }
        
        /// 不支持的操作，磁盘最近一次的操作尚未完成。
        public static var diskLatestOperationUnfinished: UnsupportedOperation {
            UnsupportedOperation(.diskLatestOperationUnfinished)
        }
        
        /// 防火墙忙。
        public static var firewallBusy: UnsupportedOperation {
            UnsupportedOperation(.firewallBusy)
        }
        
        /// 指定的防火墙版本号和当前版本不一致。
        public static var firewallVersionMismatch: UnsupportedOperation {
            UnsupportedOperation(.firewallVersionMismatch)
        }
        
        /// 实例已到期，不支持该操作。
        public static var instanceExpired: UnsupportedOperation {
            UnsupportedOperation(.instanceExpired)
        }
        
        /// LinuxUnix实例在创建时不支持设置密码。
        public static var instanceLinuxUnixCreatingNotSupportPassword: UnsupportedOperation {
            UnsupportedOperation(.instanceLinuxUnixCreatingNotSupportPassword)
        }
        
        /// 磁盘状态不支持该操作。
        public static var invalidDiskState: UnsupportedOperation {
            UnsupportedOperation(.invalidDiskState)
        }
        
        /// 不支持的操作，实例状态不合法。
        public static var invalidInstanceState: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceState)
        }
        
        /// 不支持的操作，快照状态不合法。
        public static var invalidSnapshotState: UnsupportedOperation {
            UnsupportedOperation(.invalidSnapshotState)
        }
        
        /// 不支持的操作，不支持将同一个密钥对重复绑定到同一个实例上。
        public static var keyPairBindDuplicate: UnsupportedOperation {
            UnsupportedOperation(.keyPairBindDuplicate)
        }
        
        /// 不支持该操作。KeyPair 与镜像存在绑定关系。在进行该操作前请删除与密钥对有绑定关系的自定义镜像。
        public static var keyPairBindToBlueprints: UnsupportedOperation {
            UnsupportedOperation(.keyPairBindToBlueprints)
        }
        
        /// 不支持的操作，不支持将未绑定到实例的密钥对从实例解绑。
        public static var keyPairNotBoundToInstance: UnsupportedOperation {
            UnsupportedOperation(.keyPairNotBoundToInstance)
        }
        
        /// 不支持的操作，实例最近一次的操作尚未完成。
        public static var latestOperationUnfinished: UnsupportedOperation {
            UnsupportedOperation(.latestOperationUnfinished)
        }
        
        /// 共享镜像不支持此操作。
        public static var notSupportSharedBlueprint: UnsupportedOperation {
            UnsupportedOperation(.notSupportSharedBlueprint)
        }
        
        /// 计费资源中心删除资源失败。
        public static var postDestroyResourceFailed: UnsupportedOperation {
            UnsupportedOperation(.postDestroyResourceFailed)
        }
        
        /// 重新申请关联云联网失败。请检查云联网状态并稍后再试。
        public static var resetAttachCcnFailed: UnsupportedOperation {
            UnsupportedOperation(.resetAttachCcnFailed)
        }
        
        /// 资源不支持退换。
        public static var resourceNotReturnable: UnsupportedOperation {
            UnsupportedOperation(.resourceNotReturnable)
        }
        
        /// 快照忙。
        public static var snapshotBusy: UnsupportedOperation {
            UnsupportedOperation(.snapshotBusy)
        }
        
        public static var systemBusy: UnsupportedOperation {
            UnsupportedOperation(.systemBusy)
        }
        
        /// Windows实例不支持绑定密钥对。
        public static var windowsNotAllowToAssociateKeyPair: UnsupportedOperation {
            UnsupportedOperation(.windowsNotAllowToAssociateKeyPair)
        }
        
        public static var windowsNotSupportKeyPair: UnsupportedOperation {
            UnsupportedOperation(.windowsNotSupportKeyPair)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCLighthouseError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCLighthouseError.UnsupportedOperation, rhs: TCLighthouseError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCLighthouseError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCLighthouseError.UnsupportedOperation {
    public func toLighthouseError() -> TCLighthouseError {
        guard let code = TCLighthouseError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCLighthouseError(code, context: self.context)
    }
}