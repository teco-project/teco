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

extension TCEcmError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case addressIdNotFound = "UnsupportedOperation.AddressIdNotFound"
            case alreadyBindEip = "UnsupportedOperation.AlreadyBindEip"
            case attachmentAlreadyExists = "UnsupportedOperation.AttachmentAlreadyExists"
            case attachmentNotFound = "UnsupportedOperation.AttachmentNotFound"
            case delDefaultRoute = "UnsupportedOperation.DelDefaultRoute"
            case delRouteWithSubnet = "UnsupportedOperation.DelRouteWithSubnet"
            case duplicatePolicy = "UnsupportedOperation.DuplicatePolicy"
            case ecmp = "UnsupportedOperation.Ecmp"
            case ecmpWithCcnRoute = "UnsupportedOperation.EcmpWithCcnRoute"
            case ecmpWithUserRoute = "UnsupportedOperation.EcmpWithUserRoute"
            case instanceIdNotFound = "UnsupportedOperation.InstanceIdNotFound"
            case instanceIdNotSupported = "UnsupportedOperation.InstanceIdNotSupported"
            case instanceTypeNotSupportImage = "UnsupportedOperation.InstanceTypeNotSupportImage"
            case invalidInstanceState = "UnsupportedOperation.InvalidInstanceState"
            case invalidNetworkInterfaceIdNotFound = "UnsupportedOperation.InvalidNetworkInterfaceIdNotFound"
            case invalidPrivateIpAddressAlreadyBindEip = "UnsupportedOperation.InvalidPrivateIpAddressAlreadyBindEip"
            case invalidState = "UnsupportedOperation.InvalidState"
            case malformed = "UnsupportedOperation.Malformed"
            case mutexOperationTaskRunning = "UnsupportedOperation.MutexOperationTaskRunning"
            case quotaLimitExceeded = "UnsupportedOperation.QuotaLimitExceeded"
            case snapHasShared = "UnsupportedOperation.SnapHasShared"
            case snapshotHasBindedImage = "UnsupportedOperation.SnapshotHasBindedImage"
            case statusNotPermit = "UnsupportedOperation.StatusNotPermit"
            case systemRoute = "UnsupportedOperation.SystemRoute"
            case versionMismatch = "UnsupportedOperation.VersionMismatch"
            case vpcMismatch = "UnsupportedOperation.VpcMismatch"
            case other = "UnsupportedOperation"
        }
        
        private let error: Code
        
        public let context: TCErrorContext?
        
        public var errorCode: String {
            self.error.rawValue
        }
        
        /// Initializer used by ``TCClient`` to match an error of this type.
        ///
        /// You should not use this initializer directly as there are no public initializers for ``TCErrorContext``.
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
        
        /// 未找到相关IP。
        public static var addressIdNotFound: UnsupportedOperation {
            UnsupportedOperation(.addressIdNotFound)
        }
        
        /// 指定实例已经绑定了EIP。需先解绑当前的EIP才能再次进行绑定操作。
        public static var alreadyBindEip: UnsupportedOperation {
            UnsupportedOperation(.alreadyBindEip)
        }
        
        /// 弹性网卡与实例是已关联的。
        public static var attachmentAlreadyExists: UnsupportedOperation {
            UnsupportedOperation(.attachmentAlreadyExists)
        }
        
        /// 实例是未关联的。
        public static var attachmentNotFound: UnsupportedOperation {
            UnsupportedOperation(.attachmentNotFound)
        }
        
        /// 禁止删除默认路由表。
        public static var delDefaultRoute: UnsupportedOperation {
            UnsupportedOperation(.delDefaultRoute)
        }
        
        /// 禁止删除已关联子网的路由表。
        public static var delRouteWithSubnet: UnsupportedOperation {
            UnsupportedOperation(.delRouteWithSubnet)
        }
        
        /// 安全组规则重复。
        public static var duplicatePolicy: UnsupportedOperation {
            UnsupportedOperation(.duplicatePolicy)
        }
        
        /// 不支持ECMP。
        public static var ecmp: UnsupportedOperation {
            UnsupportedOperation(.ecmp)
        }
        
        /// 和云联网的路由形成ECMP。
        public static var ecmpWithCcnRoute: UnsupportedOperation {
            UnsupportedOperation(.ecmpWithCcnRoute)
        }
        
        /// 和用户自定义的路由形成ECMP。
        public static var ecmpWithUserRoute: UnsupportedOperation {
            UnsupportedOperation(.ecmpWithUserRoute)
        }
        
        /// 无效实例ID。指定的实例ID不存在。
        public static var instanceIdNotFound: UnsupportedOperation {
            UnsupportedOperation(.instanceIdNotFound)
        }
        
        /// 不被支持的实例。
        public static var instanceIdNotSupported: UnsupportedOperation {
            UnsupportedOperation(.instanceIdNotSupported)
        }
        
        /// 当前机型不支持所选镜像。
        public static var instanceTypeNotSupportImage: UnsupportedOperation {
            UnsupportedOperation(.instanceTypeNotSupportImage)
        }
        
        /// 当前状态不能进行该操作。
        public static var invalidInstanceState: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceState)
        }
        
        /// 指定 NetworkInterfaceId 不存在或指定的PrivateIpAddress不在NetworkInterfaceId上。
        public static var invalidNetworkInterfaceIdNotFound: UnsupportedOperation {
            UnsupportedOperation(.invalidNetworkInterfaceIdNotFound)
        }
        
        /// 指定弹性网卡的指定内网IP已经绑定了EIP，不能重复绑定。
        public static var invalidPrivateIpAddressAlreadyBindEip: UnsupportedOperation {
            UnsupportedOperation(.invalidPrivateIpAddressAlreadyBindEip)
        }
        
        /// 资源状态不合法。
        public static var invalidState: UnsupportedOperation {
            UnsupportedOperation(.invalidState)
        }
        
        /// 请确认提供的IP地址是否完整。
        public static var malformed: UnsupportedOperation {
            UnsupportedOperation(.malformed)
        }
        
        /// 资源互斥操作任务正在执行。
        public static var mutexOperationTaskRunning: UnsupportedOperation {
            UnsupportedOperation(.mutexOperationTaskRunning)
        }
        
        /// 实例规格仅支持绑定三个EIP。
        public static var quotaLimitExceeded: UnsupportedOperation {
            UnsupportedOperation(.quotaLimitExceeded)
        }
        
        /// UnsupportedOperation.SnapHasShared
        public static var snapHasShared: UnsupportedOperation {
            UnsupportedOperation(.snapHasShared)
        }
        
        /// UnsupportedOperation.SnapshotHasBindedImage
        public static var snapshotHasBindedImage: UnsupportedOperation {
            UnsupportedOperation(.snapshotHasBindedImage)
        }
        
        /// 当前状态不能进行此操作。
        public static var statusNotPermit: UnsupportedOperation {
            UnsupportedOperation(.statusNotPermit)
        }
        
        /// 系统路由，禁止操作。
        public static var systemRoute: UnsupportedOperation {
            UnsupportedOperation(.systemRoute)
        }
        
        /// 指定安全组规则版本号和当前最新版本不一致。
        public static var versionMismatch: UnsupportedOperation {
            UnsupportedOperation(.versionMismatch)
        }
        
        /// 资源不属于同一个VPC。
        public static var vpcMismatch: UnsupportedOperation {
            UnsupportedOperation(.vpcMismatch)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCEcmError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCEcmError.UnsupportedOperation, rhs: TCEcmError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCEcmError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCEcmError.UnsupportedOperation {
    /// - Returns: ``TCEcmError`` that holds the same error and context.
    public func toEcmError() -> TCEcmError {
        guard let code = TCEcmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCEcmError(code, context: self.context)
    }
}

extension TCEcmError.UnsupportedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
