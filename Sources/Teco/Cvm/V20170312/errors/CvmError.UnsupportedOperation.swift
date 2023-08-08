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

import TecoCore

extension TCCvmError {
    public struct UnsupportedOperation: TCCvmErrorType {
        enum Code: String {
            case bandwidthPackageIdNotSupported = "UnsupportedOperation.BandwidthPackageIdNotSupported"
            case diskSnapCreateTimeTooOld = "UnsupportedOperation.DiskSnapCreateTimeTooOld"
            case edgeZoneInstance = "UnsupportedOperation.EdgeZoneInstance"
            case edgeZoneNotSupportCloudDisk = "UnsupportedOperation.EdgeZoneNotSupportCloudDisk"
            case elasticNetworkInterface = "UnsupportedOperation.ElasticNetworkInterface"
            case encryptedImagesNotSupported = "UnsupportedOperation.EncryptedImagesNotSupported"
            case heterogeneousChangeInstanceFamily = "UnsupportedOperation.HeterogeneousChangeInstanceFamily"
            case hibernationForNormalInstance = "UnsupportedOperation.HibernationForNormalInstance"
            case hibernationOsVersion = "UnsupportedOperation.HibernationOsVersion"
            case iPv6NotSupportVpcMigrate = "UnsupportedOperation.IPv6NotSupportVpcMigrate"
            case imageTooLargeExportUnsupported = "UnsupportedOperation.ImageTooLargeExportUnsupported"
            case instanceChargeType = "UnsupportedOperation.InstanceChargeType"
            case instanceMixedPricingModel = "UnsupportedOperation.InstanceMixedPricingModel"
            case instanceMixedZoneType = "UnsupportedOperation.InstanceMixedZoneType"
            case instanceOsWindows = "UnsupportedOperation.InstanceOsWindows"
            case instanceReinstallFailed = "UnsupportedOperation.InstanceReinstallFailed"
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
            case invalidDiskBackupQuota = "UnsupportedOperation.InvalidDiskBackupQuota"
            case invalidDiskFastRollback = "UnsupportedOperation.InvalidDiskFastRollback"
            case invalidImageLicenseTypeForReset = "UnsupportedOperation.InvalidImageLicenseTypeForReset"
            case invalidInstanceNotSupportedProtectedInstance = "UnsupportedOperation.InvalidInstanceNotSupportedProtectedInstance"
            case invalidInstanceWithSwapDisk = "UnsupportedOperation.InvalidInstanceWithSwapDisk"
            case invalidPermissionNonInternationalAccount = "UnsupportedOperation.InvalidPermissionNonInternationalAccount"
            case invalidRegionDiskEncrypt = "UnsupportedOperation.InvalidRegionDiskEncrypt"
            case invalidZone = "UnsupportedOperation.InvalidZone"
            case keyPairUnsupportedWindows = "UnsupportedOperation.KeyPairUnsupportedWindows"
            case localDataDiskChangeInstanceFamily = "UnsupportedOperation.LocalDataDiskChangeInstanceFamily"
            case localDiskMigratingToCloudDisk = "UnsupportedOperation.LocalDiskMigratingToCloudDisk"
            case marketImageExportUnsupported = "UnsupportedOperation.MarketImageExportUnsupported"
            case modifyEncryptionNotSupported = "UnsupportedOperation.ModifyEncryptionNotSupported"
            case modifyVPCWithCLB = "UnsupportedOperation.ModifyVPCWithCLB"
            case modifyVPCWithClassLink = "UnsupportedOperation.ModifyVPCWithClassLink"
            case noInstanceTypeSupportSpot = "UnsupportedOperation.NoInstanceTypeSupportSpot"
            case noVpcNetwork = "UnsupportedOperation.NoVpcNetwork"
            case notFpgaInstance = "UnsupportedOperation.NotFpgaInstance"
            case notSupportImportInstancesActionTimer = "UnsupportedOperation.NotSupportImportInstancesActionTimer"
            case notSupportInstanceImage = "UnsupportedOperation.NotSupportInstanceImage"
            case onlyForPrepaidAccount = "UnsupportedOperation.OnlyForPrepaidAccount"
            case originalInstanceTypeInvalid = "UnsupportedOperation.OriginalInstanceTypeInvalid"
            case preheatImage = "UnsupportedOperation.PreheatImage"
            case publicImageExportUnsupported = "UnsupportedOperation.PublicImageExportUnsupported"
            case rawLocalDiskInsReinstalltoQcow2 = "UnsupportedOperation.RawLocalDiskInsReinstalltoQcow2"
            case redHatImageExportUnsupported = "UnsupportedOperation.RedHatImageExportUnsupported"
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
            case systemDiskType = "UnsupportedOperation.SystemDiskType"
            case underwriteDiscountGreaterThanPrepaidDiscount = "UnsupportedOperation.UnderwriteDiscountGreaterThanPrepaidDiscount"
            case underwritingInstanceTypeOnlySupportAutoRenew = "UnsupportedOperation.UnderwritingInstanceTypeOnlySupportAutoRenew"
            case unsupportedARMChangeInstanceFamily = "UnsupportedOperation.UnsupportedARMChangeInstanceFamily"
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

        /// 指定的实例付费模式或者网络付费模式不支持共享带宽包
        public static var bandwidthPackageIdNotSupported: UnsupportedOperation {
            UnsupportedOperation(.bandwidthPackageIdNotSupported)
        }

        /// 实例创建快照的时间距今不到24小时。
        public static var diskSnapCreateTimeTooOld: UnsupportedOperation {
            UnsupportedOperation(.diskSnapCreateTimeTooOld)
        }

        /// 边缘可用区实例不支持此项操作。
        public static var edgeZoneInstance: UnsupportedOperation {
            UnsupportedOperation(.edgeZoneInstance)
        }

        /// 所选择的边缘可用区不支持云盘操作。
        public static var edgeZoneNotSupportCloudDisk: UnsupportedOperation {
            UnsupportedOperation(.edgeZoneNotSupportCloudDisk)
        }

        /// 云服务器绑定了弹性网卡，请解绑弹性网卡后再切换私有网络。
        public static var elasticNetworkInterface: UnsupportedOperation {
            UnsupportedOperation(.elasticNetworkInterface)
        }

        /// 不支持加密镜像。
        public static var encryptedImagesNotSupported: UnsupportedOperation {
            UnsupportedOperation(.encryptedImagesNotSupported)
        }

        /// 异构机型不支持跨机型调整。
        public static var heterogeneousChangeInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.heterogeneousChangeInstanceFamily)
        }

        /// 不支持未开启休眠功能的实例。
        public static var hibernationForNormalInstance: UnsupportedOperation {
            UnsupportedOperation(.hibernationForNormalInstance)
        }

        /// 当前的镜像不支持休眠。
        public static var hibernationOsVersion: UnsupportedOperation {
            UnsupportedOperation(.hibernationOsVersion)
        }

        /// IPv6实例不支持VPC迁移
        public static var iPv6NotSupportVpcMigrate: UnsupportedOperation {
            UnsupportedOperation(.iPv6NotSupportVpcMigrate)
        }

        /// 镜像大小超出限制，不支持导出。
        public static var imageTooLargeExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.imageTooLargeExportUnsupported)
        }

        /// 请求不支持该实例计费模式
        public static var instanceChargeType: UnsupportedOperation {
            UnsupportedOperation(.instanceChargeType)
        }

        /// 不支持混合付费模式。
        public static var instanceMixedPricingModel: UnsupportedOperation {
            UnsupportedOperation(.instanceMixedPricingModel)
        }

        /// 中心可用区和边缘可用区实例不能混用批量操作。
        ///
        /// 请单独选择中心可用区实例或者边缘可用区实例进行批量操作。
        public static var instanceMixedZoneType: UnsupportedOperation {
            UnsupportedOperation(.instanceMixedZoneType)
        }

        /// 请求不支持操作系统为`Xserver windows2012cndatacenterx86_64`的实例`ins-xxxxxx` 。
        public static var instanceOsWindows: UnsupportedOperation {
            UnsupportedOperation(.instanceOsWindows)
        }

        /// 推荐您再次重装系统，也可以销毁/退还实例或提交工单（https://cloud.tencent.com/online-service?from=connect-us）反馈
        public static var instanceReinstallFailed: UnsupportedOperation {
            UnsupportedOperation(.instanceReinstallFailed)
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
        public static var instanceStateEnterRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateEnterRescueMode)
        }

        /// 不支持状态为 `ENTER_SERVICE_LIVE_MIGRATE`.的实例 `ins-xxxxxx` 。
        public static var instanceStateEnterServiceLiveMigrate: UnsupportedOperation {
            UnsupportedOperation(.instanceStateEnterServiceLiveMigrate)
        }

        /// 请求不支持正在退出救援模式的实例
        public static var instanceStateExitRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateExitRescueMode)
        }

        /// 不支持状态为 `EXIT_SERVICE_LIVE_MIGRATE`.的实例 `ins-xxxxxx` 。
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

        /// 不支持操作创建失败的实例。
        public static var instanceStateLaunchFailed: UnsupportedOperation {
            UnsupportedOperation(.instanceStateLaunchFailed)
        }

        /// 请求不支持创建未完成的实例
        public static var instanceStatePending: UnsupportedOperation {
            UnsupportedOperation(.instanceStatePending)
        }

        /// 请求不支持正在重启的实例
        public static var instanceStateRebooting: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRebooting)
        }

        /// 请求不支持救援模式的实例
        public static var instanceStateRescueMode: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRescueMode)
        }

        /// 请求不支持开机状态的实例
        public static var instanceStateRunning: UnsupportedOperation {
            UnsupportedOperation(.instanceStateRunning)
        }

        /// 不支持正在服务迁移的实例，请稍后再试
        public static var instanceStateServiceLiveMigrate: UnsupportedOperation {
            UnsupportedOperation(.instanceStateServiceLiveMigrate)
        }

        /// 请求不支持隔离状态的实例
        public static var instanceStateShutdown: UnsupportedOperation {
            UnsupportedOperation(.instanceStateShutdown)
        }

        /// 实例开机中，不允许该操作。
        public static var instanceStateStarting: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStarting)
        }

        /// 请求不支持已关机的实例
        public static var instanceStateStopped: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStopped)
        }

        /// 请求不支持正在关机的实例
        public static var instanceStateStopping: UnsupportedOperation {
            UnsupportedOperation(.instanceStateStopping)
        }

        /// 不支持已销毁的实例
        public static var instanceStateTerminated: UnsupportedOperation {
            UnsupportedOperation(.instanceStateTerminated)
        }

        /// 请求不支持正在销毁的实例
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
        public static var invalidDisk: UnsupportedOperation {
            UnsupportedOperation(.invalidDisk)
        }

        /// 不支持带有云硬盘备份点。
        public static var invalidDiskBackupQuota: UnsupportedOperation {
            UnsupportedOperation(.invalidDiskBackupQuota)
        }

        /// 不支持极速回滚。
        public static var invalidDiskFastRollback: UnsupportedOperation {
            UnsupportedOperation(.invalidDiskFastRollback)
        }

        /// 镜像许可类型与实例不符，请选择其他镜像。
        public static var invalidImageLicenseTypeForReset: UnsupportedOperation {
            UnsupportedOperation(.invalidImageLicenseTypeForReset)
        }

        /// 不支持已经设置了释放时间的实例，请在实例详情页撤销实例定时销毁后再试。
        public static var invalidInstanceNotSupportedProtectedInstance: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceNotSupportedProtectedInstance)
        }

        /// 不支持有swap盘的实例。
        public static var invalidInstanceWithSwapDisk: UnsupportedOperation {
            UnsupportedOperation(.invalidInstanceWithSwapDisk)
        }

        /// 当前操作只支持国际版用户。
        public static var invalidPermissionNonInternationalAccount: UnsupportedOperation {
            UnsupportedOperation(.invalidPermissionNonInternationalAccount)
        }

        /// 指定的地域不支持加密盘。
        public static var invalidRegionDiskEncrypt: UnsupportedOperation {
            UnsupportedOperation(.invalidRegionDiskEncrypt)
        }

        /// 该可用区不可售卖。
        public static var invalidZone: UnsupportedOperation {
            UnsupportedOperation(.invalidZone)
        }

        /// 密钥不支持Windows操作系统
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

        /// 不支持修改系统盘的加密属性，例如使用非加密镜像重装加密系统盘。
        public static var modifyEncryptionNotSupported: UnsupportedOperation {
            UnsupportedOperation(.modifyEncryptionNotSupported)
        }

        /// 绑定负载均衡的实例，不支持修改vpc属性。
        ///
        /// 实例已绑定CLB，不支持修改VPC，请自行解绑内外网 CLB 以及弹性网卡，并释放主网卡的辅助 IP，迁移后再进行绑定。
        public static var modifyVPCWithCLB: UnsupportedOperation {
            UnsupportedOperation(.modifyVPCWithCLB)
        }

        /// 实例基础网络已互通VPC网络，请自行解除关联，再进行切换VPC。
        public static var modifyVPCWithClassLink: UnsupportedOperation {
            UnsupportedOperation(.modifyVPCWithClassLink)
        }

        /// 该实例类型不支持竞价计费
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
        public static var notSupportInstanceImage: UnsupportedOperation {
            UnsupportedOperation(.notSupportInstanceImage)
        }

        /// 该操作仅支持预付费账户
        public static var onlyForPrepaidAccount: UnsupportedOperation {
            UnsupportedOperation(.onlyForPrepaidAccount)
        }

        /// 无效的原机型。
        public static var originalInstanceTypeInvalid: UnsupportedOperation {
            UnsupportedOperation(.originalInstanceTypeInvalid)
        }

        /// 您的账户不支持镜像预热
        public static var preheatImage: UnsupportedOperation {
            UnsupportedOperation(.preheatImage)
        }

        /// 公共镜像或市场镜像不支持导出。
        public static var publicImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.publicImageExportUnsupported)
        }

        /// 当前镜像不支持对该实例的重装操作。
        public static var rawLocalDiskInsReinstalltoQcow2: UnsupportedOperation {
            UnsupportedOperation(.rawLocalDiskInsReinstalltoQcow2)
        }

        /// RedHat镜像不支持导出。
        public static var redHatImageExportUnsupported: UnsupportedOperation {
            UnsupportedOperation(.redHatImageExportUnsupported)
        }

        /// 实例使用商业操作系统，不支持退还。
        public static var redHatInstanceTerminateUnsupported: UnsupportedOperation {
            UnsupportedOperation(.redHatInstanceTerminateUnsupported)
        }

        /// 请求不支持操作系统为RedHat的实例。
        public static var redHatInstanceUnsupported: UnsupportedOperation {
            UnsupportedOperation(.redHatInstanceUnsupported)
        }

        /// 不支持该地域
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
        public static var specialInstanceType: UnsupportedOperation {
            UnsupportedOperation(.specialInstanceType)
        }

        /// 该地域不支持竞价实例。
        public static var spotUnsupportedRegion: UnsupportedOperation {
            UnsupportedOperation(.spotUnsupportedRegion)
        }

        /// 不支持关机不收费特性
        public static var stoppedModeStopCharging: UnsupportedOperation {
            UnsupportedOperation(.stoppedModeStopCharging)
        }

        /// 不支持关机不收费机器做同类型变配操作。
        public static var stoppedModeStopChargingSameFamily: UnsupportedOperation {
            UnsupportedOperation(.stoppedModeStopChargingSameFamily)
        }

        /// 请求不支持该类型系统盘。
        public static var systemDiskType: UnsupportedOperation {
            UnsupportedOperation(.systemDiskType)
        }

        public static var underwriteDiscountGreaterThanPrepaidDiscount: UnsupportedOperation {
            UnsupportedOperation(.underwriteDiscountGreaterThanPrepaidDiscount)
        }

        /// 该机型为包销机型，RenewFlag的值只允许设置为NOTIFY_AND_AUTO_RENEW。
        public static var underwritingInstanceTypeOnlySupportAutoRenew: UnsupportedOperation {
            UnsupportedOperation(.underwritingInstanceTypeOnlySupportAutoRenew)
        }

        /// 当前实例不允许变配到非ARM机型。
        public static var unsupportedARMChangeInstanceFamily: UnsupportedOperation {
            UnsupportedOperation(.unsupportedARMChangeInstanceFamily)
        }

        /// 指定机型不支持跨机型调整配置。
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

        public func asCvmError() -> TCCvmError {
            let code: TCCvmError.Code
            switch self.error {
            case .bandwidthPackageIdNotSupported:
                code = .unsupportedOperation_BandwidthPackageIdNotSupported
            case .diskSnapCreateTimeTooOld:
                code = .unsupportedOperation_DiskSnapCreateTimeTooOld
            case .edgeZoneInstance:
                code = .unsupportedOperation_EdgeZoneInstance
            case .edgeZoneNotSupportCloudDisk:
                code = .unsupportedOperation_EdgeZoneNotSupportCloudDisk
            case .elasticNetworkInterface:
                code = .unsupportedOperation_ElasticNetworkInterface
            case .encryptedImagesNotSupported:
                code = .unsupportedOperation_EncryptedImagesNotSupported
            case .heterogeneousChangeInstanceFamily:
                code = .unsupportedOperation_HeterogeneousChangeInstanceFamily
            case .hibernationForNormalInstance:
                code = .unsupportedOperation_HibernationForNormalInstance
            case .hibernationOsVersion:
                code = .unsupportedOperation_HibernationOsVersion
            case .iPv6NotSupportVpcMigrate:
                code = .unsupportedOperation_IPv6NotSupportVpcMigrate
            case .imageTooLargeExportUnsupported:
                code = .unsupportedOperation_ImageTooLargeExportUnsupported
            case .instanceChargeType:
                code = .unsupportedOperation_InstanceChargeType
            case .instanceMixedPricingModel:
                code = .unsupportedOperation_InstanceMixedPricingModel
            case .instanceMixedZoneType:
                code = .unsupportedOperation_InstanceMixedZoneType
            case .instanceOsWindows:
                code = .unsupportedOperation_InstanceOsWindows
            case .instanceReinstallFailed:
                code = .unsupportedOperation_InstanceReinstallFailed
            case .instanceStateBanning:
                code = .unsupportedOperation_InstanceStateBanning
            case .instanceStateCorrupted:
                code = .unsupportedOperation_InstanceStateCorrupted
            case .instanceStateEnterRescueMode:
                code = .unsupportedOperation_InstanceStateEnterRescueMode
            case .instanceStateEnterServiceLiveMigrate:
                code = .unsupportedOperation_InstanceStateEnterServiceLiveMigrate
            case .instanceStateExitRescueMode:
                code = .unsupportedOperation_InstanceStateExitRescueMode
            case .instanceStateExitServiceLiveMigrate:
                code = .unsupportedOperation_InstanceStateExitServiceLiveMigrate
            case .instanceStateFreezing:
                code = .unsupportedOperation_InstanceStateFreezing
            case .instanceStateIsolating:
                code = .unsupportedOperation_InstanceStateIsolating
            case .instanceStateLaunchFailed:
                code = .unsupportedOperation_InstanceStateLaunchFailed
            case .instanceStatePending:
                code = .unsupportedOperation_InstanceStatePending
            case .instanceStateRebooting:
                code = .unsupportedOperation_InstanceStateRebooting
            case .instanceStateRescueMode:
                code = .unsupportedOperation_InstanceStateRescueMode
            case .instanceStateRunning:
                code = .unsupportedOperation_InstanceStateRunning
            case .instanceStateServiceLiveMigrate:
                code = .unsupportedOperation_InstanceStateServiceLiveMigrate
            case .instanceStateShutdown:
                code = .unsupportedOperation_InstanceStateShutdown
            case .instanceStateStarting:
                code = .unsupportedOperation_InstanceStateStarting
            case .instanceStateStopped:
                code = .unsupportedOperation_InstanceStateStopped
            case .instanceStateStopping:
                code = .unsupportedOperation_InstanceStateStopping
            case .instanceStateTerminated:
                code = .unsupportedOperation_InstanceStateTerminated
            case .instanceStateTerminating:
                code = .unsupportedOperation_InstanceStateTerminating
            case .instancesProtected:
                code = .unsupportedOperation_InstancesProtected
            case .insufficientClusterQuota:
                code = .unsupportedOperation_InsufficientClusterQuota
            case .invalidDataDisk:
                code = .unsupportedOperation_InvalidDataDisk
            case .invalidDisk:
                code = .unsupportedOperation_InvalidDisk
            case .invalidDiskBackupQuota:
                code = .unsupportedOperation_InvalidDiskBackupQuota
            case .invalidDiskFastRollback:
                code = .unsupportedOperation_InvalidDiskFastRollback
            case .invalidImageLicenseTypeForReset:
                code = .unsupportedOperation_InvalidImageLicenseTypeForReset
            case .invalidInstanceNotSupportedProtectedInstance:
                code = .unsupportedOperation_InvalidInstanceNotSupportedProtectedInstance
            case .invalidInstanceWithSwapDisk:
                code = .unsupportedOperation_InvalidInstanceWithSwapDisk
            case .invalidPermissionNonInternationalAccount:
                code = .unsupportedOperation_InvalidPermissionNonInternationalAccount
            case .invalidRegionDiskEncrypt:
                code = .unsupportedOperation_InvalidRegionDiskEncrypt
            case .invalidZone:
                code = .unsupportedOperation_InvalidZone
            case .keyPairUnsupportedWindows:
                code = .unsupportedOperation_KeyPairUnsupportedWindows
            case .localDataDiskChangeInstanceFamily:
                code = .unsupportedOperation_LocalDataDiskChangeInstanceFamily
            case .localDiskMigratingToCloudDisk:
                code = .unsupportedOperation_LocalDiskMigratingToCloudDisk
            case .marketImageExportUnsupported:
                code = .unsupportedOperation_MarketImageExportUnsupported
            case .modifyEncryptionNotSupported:
                code = .unsupportedOperation_ModifyEncryptionNotSupported
            case .modifyVPCWithCLB:
                code = .unsupportedOperation_ModifyVPCWithCLB
            case .modifyVPCWithClassLink:
                code = .unsupportedOperation_ModifyVPCWithClassLink
            case .noInstanceTypeSupportSpot:
                code = .unsupportedOperation_NoInstanceTypeSupportSpot
            case .noVpcNetwork:
                code = .unsupportedOperation_NoVpcNetwork
            case .notFpgaInstance:
                code = .unsupportedOperation_NotFpgaInstance
            case .notSupportImportInstancesActionTimer:
                code = .unsupportedOperation_NotSupportImportInstancesActionTimer
            case .notSupportInstanceImage:
                code = .unsupportedOperation_NotSupportInstanceImage
            case .onlyForPrepaidAccount:
                code = .unsupportedOperation_OnlyForPrepaidAccount
            case .originalInstanceTypeInvalid:
                code = .unsupportedOperation_OriginalInstanceTypeInvalid
            case .preheatImage:
                code = .unsupportedOperation_PreheatImage
            case .publicImageExportUnsupported:
                code = .unsupportedOperation_PublicImageExportUnsupported
            case .rawLocalDiskInsReinstalltoQcow2:
                code = .unsupportedOperation_RawLocalDiskInsReinstalltoQcow2
            case .redHatImageExportUnsupported:
                code = .unsupportedOperation_RedHatImageExportUnsupported
            case .redHatInstanceTerminateUnsupported:
                code = .unsupportedOperation_RedHatInstanceTerminateUnsupported
            case .redHatInstanceUnsupported:
                code = .unsupportedOperation_RedHatInstanceUnsupported
            case .region:
                code = .unsupportedOperation_Region
            case .reservedInstanceInvisibleForUser:
                code = .unsupportedOperation_ReservedInstanceInvisibleForUser
            case .reservedInstanceOutofQuata:
                code = .unsupportedOperation_ReservedInstanceOutofQuata
            case .sharedImageExportUnsupported:
                code = .unsupportedOperation_SharedImageExportUnsupported
            case .specialInstanceType:
                code = .unsupportedOperation_SpecialInstanceType
            case .spotUnsupportedRegion:
                code = .unsupportedOperation_SpotUnsupportedRegion
            case .stoppedModeStopCharging:
                code = .unsupportedOperation_StoppedModeStopCharging
            case .stoppedModeStopChargingSameFamily:
                code = .unsupportedOperation_StoppedModeStopChargingSameFamily
            case .systemDiskType:
                code = .unsupportedOperation_SystemDiskType
            case .underwriteDiscountGreaterThanPrepaidDiscount:
                code = .unsupportedOperation_UnderwriteDiscountGreaterThanPrepaidDiscount
            case .underwritingInstanceTypeOnlySupportAutoRenew:
                code = .unsupportedOperation_UnderwritingInstanceTypeOnlySupportAutoRenew
            case .unsupportedARMChangeInstanceFamily:
                code = .unsupportedOperation_UnsupportedARMChangeInstanceFamily
            case .unsupportedChangeInstanceFamily:
                code = .unsupportedOperation_UnsupportedChangeInstanceFamily
            case .unsupportedChangeInstanceFamilyToARM:
                code = .unsupportedOperation_UnsupportedChangeInstanceFamilyToARM
            case .unsupportedChangeInstanceToThisInstanceFamily:
                code = .unsupportedOperation_UnsupportedChangeInstanceToThisInstanceFamily
            case .unsupportedInternationalUser:
                code = .unsupportedOperation_UnsupportedInternationalUser
            case .userLimitOperationExceedQuota:
                code = .unsupportedOperation_UserLimitOperationExceedQuota
            case .windowsImageExportUnsupported:
                code = .unsupportedOperation_WindowsImageExportUnsupported
            case .other:
                code = .unsupportedOperation
            }
            return TCCvmError(code, context: self.context)
        }
    }
}
