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

extension TCCvmError {
    public struct UnsupportedOperation: TCErrorType {
        enum Code: String {
            case bandwidthPackageIdNotSupported = "UnsupportedOperation.BandwidthPackageIdNotSupported"
            case edgeZoneNotSupportCloudDisk = "UnsupportedOperation.EdgeZoneNotSupportCloudDisk"
            case elasticNetworkInterface = "UnsupportedOperation.ElasticNetworkInterface"
            case encryptedImagesNotSupported = "UnsupportedOperation.EncryptedImagesNotSupported"
            case heterogeneousChangeInstanceFamily = "UnsupportedOperation.HeterogeneousChangeInstanceFamily"
            case iPv6NotSupportVpcMigrate = "UnsupportedOperation.IPv6NotSupportVpcMigrate"
            case imageTooLargeExportUnsupported = "UnsupportedOperation.ImageTooLargeExportUnsupported"
            case instanceChargeType = "UnsupportedOperation.InstanceChargeType"
            case instanceMixedPricingModel = "UnsupportedOperation.InstanceMixedPricingModel"
            case instanceMixedZoneType = "UnsupportedOperation.InstanceMixedZoneType"
            case instanceOsWindows = "UnsupportedOperation.InstanceOsWindows"
            case instanceStateBanning = "UnsupportedOperation.InstanceStateBanning"
            case instanceStateCorrupted = "UnsupportedOperation.InstanceStateCorrupted"
            case instanceStateEnterRescueMode = "UnsupportedOperation.InstanceStateEnterRescueMode"
            case instanceStateEnterServiceLiveMigrate = "UnsupportedOperation.InstanceStateEnterServiceLiveMigrate"
            case instanceStateExitRescueMode = "UnsupportedOperation.InstanceStateExitRescueMode"
            case instanceStateExitServiceLiveMigrate = "UnsupportedOperation.InstanceStateExitServiceLiveMigrate"
            case instanceStateFreezing = "UnsupportedOperation.InstanceStateFreezing"
            case instanceStateIsolating = "UnsupportedOperation.InstanceStateIsolating"
            case instanceStateLaunchFailed = "UnsupportedOperation.InstanceStateLaunchFailed"
            case instanceStatePending = "UnsupportedOperation.InstanceStatePending"
            case instanceStateRebooting = "UnsupportedOperation.InstanceStateRebooting"
            case instanceStateRescueMode = "UnsupportedOperation.InstanceStateRescueMode"
            case instanceStateRunning = "UnsupportedOperation.InstanceStateRunning"
            case instanceStateServiceLiveMigrate = "UnsupportedOperation.InstanceStateServiceLiveMigrate"
            case instanceStateShutdown = "UnsupportedOperation.InstanceStateShutdown"
            case instanceStateStarting = "UnsupportedOperation.InstanceStateStarting"
            case instanceStateStopped = "UnsupportedOperation.InstanceStateStopped"
            case instanceStateStopping = "UnsupportedOperation.InstanceStateStopping"
            case instanceStateTerminated = "UnsupportedOperation.InstanceStateTerminated"
            case instanceStateTerminating = "UnsupportedOperation.InstanceStateTerminating"
            case instancesProtected = "UnsupportedOperation.InstancesProtected"
            case insufficientClusterQuota = "UnsupportedOperation.InsufficientClusterQuota"
            case invalidDataDisk = "UnsupportedOperation.InvalidDataDisk"
            case invalidDisk = "UnsupportedOperation.InvalidDisk"
            case invalidImageLicenseTypeForReset = "UnsupportedOperation.InvalidImageLicenseTypeForReset"
            case invalidInstanceNotSupportedProtectedInstance = "UnsupportedOperation.InvalidInstanceNotSupportedProtectedInstance"
            case invalidPermissionNonInternationalAccount = "UnsupportedOperation.InvalidPermissionNonInternationalAccount"
            case invalidRegionDiskEncrypt = "UnsupportedOperation.InvalidRegionDiskEncrypt"
            case invalidZone = "UnsupportedOperation.InvalidZone"
            case keyPairUnsupportedWindows = "UnsupportedOperation.KeyPairUnsupportedWindows"
            case localDataDiskChangeInstanceFamily = "UnsupportedOperation.LocalDataDiskChangeInstanceFamily"
            case localDiskMigratingToCloudDisk = "UnsupportedOperation.LocalDiskMigratingToCloudDisk"
            case marketImageExportUnsupported = "UnsupportedOperation.MarketImageExportUnsupported"
            case modifyEncryptionNotSupported = "UnsupportedOperation.ModifyEncryptionNotSupported"
            case modifyVPCWithCLB = "UnsupportedOperation.ModifyVPCWithCLB"
            case noInstanceTypeSupportSpot = "UnsupportedOperation.NoInstanceTypeSupportSpot"
            case noVpcNetwork = "UnsupportedOperation.NoVpcNetwork"
            case notFpgaInstance = "UnsupportedOperation.NotFpgaInstance"
            case notSupportImportInstancesActionTimer = "UnsupportedOperation.NotSupportImportInstancesActionTimer"
            case notSupportInstanceImage = "UnsupportedOperation.NotSupportInstanceImage"
            case onlyForPrepaidAccount = "UnsupportedOperation.OnlyForPrepaidAccount"
            case originalInstanceTypeInvalid = "UnsupportedOperation.OriginalInstanceTypeInvalid"
            case publicImageExportUnsupported = "UnsupportedOperation.PublicImageExportUnsupported"
            case rawLocalDiskInsReinstalltoQcow2 = "UnsupportedOperation.RawLocalDiskInsReinstalltoQcow2"
            case redHatInstanceTerminateUnsupported = "UnsupportedOperation.RedHatInstanceTerminateUnsupported"
            case redHatInstanceUnsupported = "UnsupportedOperation.RedHatInstanceUnsupported"
            case region = "UnsupportedOperation.Region"
            case reservedInstanceInvisibleForUser = "UnsupportedOperation.ReservedInstanceInvisibleForUser"
            case reservedInstanceOutofQuata = "UnsupportedOperation.ReservedInstanceOutofQuata"
            case sharedImageExportUnsupported = "UnsupportedOperation.SharedImageExportUnsupported"
            case specialInstanceType = "UnsupportedOperation.SpecialInstanceType"
            case spotUnsupportedRegion = "UnsupportedOperation.SpotUnsupportedRegion"
            case stoppedModeStopCharging = "UnsupportedOperation.StoppedModeStopCharging"
            case stoppedModeStopChargingSameFamily = "UnsupportedOperation.StoppedModeStopChargingSameFamily"
            case underwritingInstanceTypeOnlySupportAutoRenew = "UnsupportedOperation.UnderwritingInstanceTypeOnlySupportAutoRenew"
            case unsupportedChangeInstanceFamily = "UnsupportedOperation.UnsupportedChangeInstanceFamily"
            case unsupportedChangeInstanceFamilyToARM = "UnsupportedOperation.UnsupportedChangeInstanceFamilyToARM"
            case unsupportedChangeInstanceToThisInstanceFamily = "UnsupportedOperation.UnsupportedChangeInstanceToThisInstanceFamily"
            case unsupportedInternationalUser = "UnsupportedOperation.UnsupportedInternationalUser"
            case userLimitOperationExceedQuota = "UnsupportedOperation.UserLimitOperationExceedQuota"
            case windowsImageExportUnsupported = "UnsupportedOperation.WindowsImageExportUnsupported"
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
        
        /// 指定的实例付费模式或者网络付费模式不支持共享带宽包
        ///
        /// 无
        public static var bandwidthPackageIdNotSupported: UnsupportedOperation {
            UnsupportedOperation(.bandwidthPackageIdNotSupported)
        }
        
        public static var edgeZoneNotSupportCloudDisk: UnsupportedOperation {
            UnsupportedOperation(.edgeZoneNotSupportCloudDisk)
        }
        
        public static var elasticNetworkInterface: UnsupportedOperation {
            UnsupportedOperation(.elasticNetworkInterface)
        }
        
        public static var encryptedImagesNotSupported: UnsupportedOperation {
            UnsupportedOperation(.encryptedImagesNotSupported)
        }
        
        /// 异构机型不支持跨机型调整。
        public static var heterogeneousChangeInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.heterogeneousChangeInstanceFamily)
        }
        
        /// IPv6实例不支持VPC迁移
        ///
        /// 无
        public static var iPv6NotSupportVpcMigrate: UnsupportedOperation {
            UnsupportedOperation(.iPv6NotSupportVpcMigrate)
        }
        
        /// 镜像大小超出限制，不支持导出。
        public static var imageTooLargeExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.imageTooLargeExportUnsupported)
        }
        
        /// 请求不支持该实例计费模式
        ///
        /// 无
        public static var instanceChargeType: UnsupportedOperation {
            UnsupportedOperation(.instanceChargeType)
        }
        
        /// 不支持混合付费模式。
        public static var instanceMixedPricingModel: UnsupportedOperation {
            UnsupportedOperation(.instanceMixedPricingModel)
        }
        
        /// 请单独选择中心可用区实例或者边缘可用区实例进行批量操作。
        public static var instanceMixedZoneType: UnsupportedOperation {
            UnsupportedOperation(.instanceMixedZoneType)
        }
        
        /// 请求不支持操作系统为<code>Xserver windows2012cndatacenterx86_64</code>的实例<code>ins-xxxxxx</code> 。
        ///
        /// 暂无
        public static var instanceOsWindows: UnsupportedOperation {
            UnsupportedOperation(.instanceOsWindows)
        }
        
        /// 该子机处于封禁状态，请联系相关人员处理。
        public static var instanceStateBanning: UnsupportedOperation {
            UnsupportedOperation(.instanceStateBanning)
        }
        
        /// 请求不支持永久故障的实例。
        public static var instanceStateCorrupted: UnsupportedOperation {
            UnsupportedOperation(.instanceStateCorrupted)
        }
        
        /// 请求不支持进入救援模式的实例
        ///
        /// 无
        public static var instanceStateEnterRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateEnterRescueMode)
        }
        
        /// 不支持状态为 <code>ENTER_SERVICE_LIVE_MIGRATE</code>.的实例 <code>ins-xxxxxx</code> 。
        ///
        /// 无
        public static var instanceStateEnterServiceLiveMigrate: UnsupportedOperation {
            UnsupportedOperation(.instanceStateEnterServiceLiveMigrate)
        }
        
        /// 请求不支持正在退出救援模式的实例
        ///
        /// 无
        public static var instanceStateExitRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateExitRescueMode)
        }
        
        /// 不支持状态为 <code>EXIT_SERVICE_LIVE_MIGRATE</code>.的实例 <code>ins-xxxxxx</code> 。
        public static var instanceStateExitServiceLiveMigrate: UnsupportedOperation {
            UnsupportedOperation(.instanceStateExitServiceLiveMigrate)
        }
        
        /// 操作不支持已冻结的实例。
        public static var instanceStateFreezing: UnsupportedOperation {
            UnsupportedOperation(.instanceStateFreezing)
        }
        
        /// 请求不支持正在隔离状态的实例。
        public static var instanceStateIsolating: UnsupportedOperation {
            UnsupportedOperation(.instanceStateIsolating)
        }
        
        public static var instanceStateLaunchFailed: UnsupportedOperation {
            UnsupportedOperation(.instanceStateLaunchFailed)
        }
        
        /// 请求不支持创建未完成的实例
        ///
        /// 无
        public static var instanceStatePending: UnsupportedOperation {
            UnsupportedOperation(.instanceStatePending)
        }
        
        /// 请求不支持正在重启的实例
        ///
        /// 无
        public static var instanceStateRebooting: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRebooting)
        }
        
        /// 请求不支持救援模式的实例
        ///
        /// 无
        public static var instanceStateRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRescueMode)
        }
        
        /// 请求不支持开机状态的实例
        ///
        /// 无
        public static var instanceStateRunning: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRunning)
        }
        
        /// 不支持正在服务迁移的实例，请稍后再试
        ///
        /// 无
        public static var instanceStateServiceLiveMigrate: UnsupportedOperation {
            UnsupportedOperation(.instanceStateServiceLiveMigrate)
        }
        
        /// 请求不支持隔离状态的实例
        ///
        /// 无
        public static var instanceStateShutdown: UnsupportedOperation {
            UnsupportedOperation(.instanceStateShutdown)
        }
        
        /// 实例开机中，不允许该操作。
        public static var instanceStateStarting: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStarting)
        }
        
        /// 请求不支持已关机的实例
        ///
        /// 无
        public static var instanceStateStopped: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStopped)
        }
        
        /// 请求不支持正在关机的实例
        ///
        /// 无
        public static var instanceStateStopping: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStopping)
        }
        
        /// 不支持已销毁的实例
        ///
        /// 无
        public static var instanceStateTerminated: UnsupportedOperation {
            UnsupportedOperation(.instanceStateTerminated)
        }
        
        /// 请求不支持正在销毁的实例
        ///
        /// 无
        public static var instanceStateTerminating: UnsupportedOperation {
            UnsupportedOperation(.instanceStateTerminating)
        }
        
        /// 不支持已启用销毁保护的实例，请先到设置实例销毁保护，关闭实例销毁保护，然后重试。
        public static var instancesProtected: UnsupportedOperation {
            UnsupportedOperation(.instancesProtected)
        }
        
        /// 用户创建高性能集群配额已达上限。
        public static var insufficientClusterQuota: UnsupportedOperation {
            UnsupportedOperation(.insufficientClusterQuota)
        }
        
        /// 不支持调整数据盘。
        public static var invalidDataDisk: UnsupportedOperation {
            UnsupportedOperation(.invalidDataDisk)
        }
        
        /// 不支持指定的磁盘
        ///
        /// 无
        public static var invalidDisk: UnsupportedOperation {
            UnsupportedOperation(.invalidDisk)
        }
        
        public static var invalidImageLicenseTypeForReset: UnsupportedOperation {
            UnsupportedOperation(.invalidImageLicenseTypeForReset)
        }
        
        /// 不支持已经设置了释放时间的实例，请在实例详情页撤销实例定时销毁后再试。
        public static var invalidInstanceNotSupportedProtectedInstance: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceNotSupportedProtectedInstance)
        }
        
        /// 当前操作只支持国际版用户。
        public static var invalidPermissionNonInternationalAccount: UnsupportedOperation {
            UnsupportedOperation(.invalidPermissionNonInternationalAccount)
        }
        
        /// 指定的地域不支持加密盘。
        public static var invalidRegionDiskEncrypt: UnsupportedOperation {
            UnsupportedOperation(.invalidRegionDiskEncrypt)
        }
        
        public static var invalidZone: UnsupportedOperation {
            UnsupportedOperation(.invalidZone)
        }
        
        /// 密钥不支持Windows操作系统
        ///
        /// 无
        public static var keyPairUnsupportedWindows: UnsupportedOperation {
            UnsupportedOperation(.keyPairUnsupportedWindows)
        }
        
        /// 机型数据盘全为本地盘不支持跨机型调整。
        public static var localDataDiskChangeInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.localDataDiskChangeInstanceFamily)
        }
        
        /// 不支持正在本地盘转云盘的磁盘，请稍后发起请求。
        public static var localDiskMigratingToCloudDisk: UnsupportedOperation {
            UnsupportedOperation(.localDiskMigratingToCloudDisk)
        }
        
        /// 从市场镜像创建的自定义镜像不支持导出。
        public static var marketImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.marketImageExportUnsupported)
        }
        
        public static var modifyEncryptionNotSupported: UnsupportedOperation {
            UnsupportedOperation(.modifyEncryptionNotSupported)
        }
        
        /// 绑定负载均衡的实例，不支持修改vpc属性。
        ///
        /// 实例已绑定CLB，不支持修改VPC，请自行解绑内外网 CLB 以及弹性网卡，并释放主网卡的辅助 IP，迁移后再进行绑定。
        public static var modifyVPCWithCLB: UnsupportedOperation {
            UnsupportedOperation(.modifyVPCWithCLB)
        }
        
        /// 该实例类型不支持竞价计费
        ///
        /// 无
        public static var noInstanceTypeSupportSpot: UnsupportedOperation {
            UnsupportedOperation(.noInstanceTypeSupportSpot)
        }
        
        /// 不支持物理网络的实例。
        public static var noVpcNetwork: UnsupportedOperation {
            UnsupportedOperation(.noVpcNetwork)
        }
        
        /// 当前实例不是FPGA机型。
        ///
        /// 检查实例的类型。
        public static var notFpgaInstance: UnsupportedOperation {
            UnsupportedOperation(.notFpgaInstance)
        }
        
        /// 针对当前实例设置定时任务失败。
        ///
        /// 可联系腾讯云助手解决。
        public static var notSupportImportInstancesActionTimer: UnsupportedOperation {
            UnsupportedOperation(.notSupportImportInstancesActionTimer)
        }
        
        /// 操作不支持当前实例
        ///
        /// 无
        public static var notSupportInstanceImage: UnsupportedOperation {
            UnsupportedOperation(.notSupportInstanceImage)
        }
        
        /// 该操作仅支持预付费账户
        ///
        /// 无
        public static var onlyForPrepaidAccount: UnsupportedOperation {
            UnsupportedOperation(.onlyForPrepaidAccount)
        }
        
        /// 无效的原机型。
        public static var originalInstanceTypeInvalid: UnsupportedOperation {
            UnsupportedOperation(.originalInstanceTypeInvalid)
        }
        
        /// 公共镜像或市场镜像不支持导出。
        public static var publicImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.publicImageExportUnsupported)
        }
        
        /// 当前镜像不支持对该实例的重装操作。
        public static var rawLocalDiskInsReinstalltoQcow2: UnsupportedOperation {
            UnsupportedOperation(.rawLocalDiskInsReinstalltoQcow2)
        }
        
        public static var redHatInstanceTerminateUnsupported: UnsupportedOperation {
            UnsupportedOperation(.redHatInstanceTerminateUnsupported)
        }
        
        public static var redHatInstanceUnsupported: UnsupportedOperation {
            UnsupportedOperation(.redHatInstanceUnsupported)
        }
        
        /// 不支持该地域
        ///
        /// 无
        public static var region: UnsupportedOperation {
            UnsupportedOperation(.region)
        }
        
        /// 当前用户暂不支持购买预留实例计费。
        public static var reservedInstanceInvisibleForUser: UnsupportedOperation {
            UnsupportedOperation(.reservedInstanceInvisibleForUser)
        }
        
        /// 用户预留实例计费配额已达上限。
        public static var reservedInstanceOutofQuata: UnsupportedOperation {
            UnsupportedOperation(.reservedInstanceOutofQuata)
        }
        
        /// 共享镜像不支持导出。
        public static var sharedImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.sharedImageExportUnsupported)
        }
        
        /// 请求不支持特殊机型的实例
        ///
        /// 无
        public static var specialInstanceType: UnsupportedOperation {
            UnsupportedOperation(.specialInstanceType)
        }
        
        public static var spotUnsupportedRegion: UnsupportedOperation {
            UnsupportedOperation(.spotUnsupportedRegion)
        }
        
        /// 不支持关机不收费特性
        ///
        /// 无
        public static var stoppedModeStopCharging: UnsupportedOperation {
            UnsupportedOperation(.stoppedModeStopCharging)
        }
        
        /// 不支持关机不收费机器做同类型变配操作。
        public static var stoppedModeStopChargingSameFamily: UnsupportedOperation {
            UnsupportedOperation(.stoppedModeStopChargingSameFamily)
        }
        
        /// 该机型为包销机型，RenewFlag的值只允许设置为NOTIFY_AND_AUTO_RENEW。
        ///
        /// 无
        public static var underwritingInstanceTypeOnlySupportAutoRenew: UnsupportedOperation {
            UnsupportedOperation(.underwritingInstanceTypeOnlySupportAutoRenew)
        }
        
        /// 指定机型不支持跨机型调整配置。
        ///
        /// 暂无
        public static var unsupportedChangeInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.unsupportedChangeInstanceFamily)
        }
        
        /// 非ARM机型不支持调整到ARM机型。
        public static var unsupportedChangeInstanceFamilyToARM: UnsupportedOperation {
            UnsupportedOperation(.unsupportedChangeInstanceFamilyToARM)
        }
        
        /// 不支持实例变配到此类型机型。
        public static var unsupportedChangeInstanceToThisInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.unsupportedChangeInstanceToThisInstanceFamily)
        }
        
        /// 请求不支持国际版账号
        ///
        /// 无
        public static var unsupportedInternationalUser: UnsupportedOperation {
            UnsupportedOperation(.unsupportedInternationalUser)
        }
        
        /// 用户限额操作的配额不足。
        ///
        /// 请联系腾讯云助手处理。
        public static var userLimitOperationExceedQuota: UnsupportedOperation {
            UnsupportedOperation(.userLimitOperationExceedQuota)
        }
        
        /// Windows镜像不支持导出。
        public static var windowsImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.windowsImageExportUnsupported)
        }
        
        /// 操作不支持。
        public static var other: UnsupportedOperation {
            UnsupportedOperation(.other)
        }
    }
}

extension TCCvmError.UnsupportedOperation: Equatable {
    public static func == (lhs: TCCvmError.UnsupportedOperation, rhs: TCCvmError.UnsupportedOperation) -> Bool {
        lhs.error == rhs.error
    }
}

extension TCCvmError.UnsupportedOperation: CustomStringConvertible {
    public var description: String {
        return "\(self.error.rawValue): \(message ?? "")"
    }
}

extension TCCvmError.UnsupportedOperation {
    /// - Returns: ``TCCvmError`` that holds the same error and context.
    public func toCvmError() -> TCCvmError {
        guard let code = TCCvmError.Code(rawValue: self.error.rawValue) else {
            fatalError("Unexpected internal conversion error!\nPlease file a bug at https://github.com/teco-project/teco to help address the problem.")
        }
        return TCCvmError(code, context: self.context)
    }
}

extension TCCvmError.UnsupportedOperation {
    /// - Returns: ``TCCommonError`` that holds the same error and context.
    public func toCommonError() -> TCCommonError? {
        if let context = self.context, let error = TCCommonError(errorCode: self.error.rawValue, context: context) {
            return error
        }
        return nil
    }
}
