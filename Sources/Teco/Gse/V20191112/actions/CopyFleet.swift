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

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// CopyFleet请求参数结构体
    public struct CopyFleetRequest: TCRequest {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 复制数量，最小值1，最大值为剩余配额，可以根据[获取用户配额](https://cloud.tencent.com/document/product/1165/48732)接口获取。
        public let copyNumber: Int64

        /// 生成包 Id
        public let assetId: String?

        /// 描述，最小长度0，最大长度100
        public let description: String?

        /// 网络配置
        public let inboundPermissions: [InboundPermission]?

        /// 服务器类型，参数根据[获取服务器实例类型列表](https://cloud.tencent.com/document/product/1165/48732)接口获取。
        public let instanceType: String?

        /// 服务器舰队类型，目前只支持ON_DEMAND类型
        public let fleetType: String?

        /// 服务器舰队名称，最小长度1，最大长度50
        public let name: String?

        /// 保护策略：不保护NoProtection、完全保护FullProtection、时限保护TimeLimitProtection
        public let newGameServerSessionProtectionPolicy: String?

        /// 资源创建限制策略
        public let resourceCreationLimitPolicy: ResourceCreationLimitPolicy?

        /// 进程配置
        public let runtimeConfiguration: RuntimeConfiguration?

        /// 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        public let gameServerSessionProtectionTimeLimit: Int64?

        /// 是否选择扩缩容：SCALING_SELECTED 或者 SCALING_UNSELECTED；默认是 SCALING_UNSELECTED
        public let selectedScalingType: String?

        /// 是否选择云联网：CCN_SELECTED_BEFORE_CREATE（创建前关联）， CCN_SELECTED_AFTER_CREATE（创建后关联）或者 CCN_UNSELECTED（不关联）；默认是 CCN_UNSELECTED
        public let selectedCcnType: String?

        /// 标签列表，最大长度50组
        public let tags: [Tag]?

        /// 系统盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-500GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，50-500GB；容量以1为单位
        public let systemDiskInfo: DiskInfo?

        /// 数据盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-32000GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，10-32000GB；容量以10为单位
        public let dataDiskInfo: [DiskInfo]?

        /// 是否选择复制定时器策略：TIMER_SELECTED 或者 TIMER_UNSELECTED；默认是 TIMER_UNSELECTED
        public let selectedTimerType: String?

        /// 云联网信息，包含对应的账号信息及所属id
        public let ccnInfos: [CcnInfo]?

        /// fleet公网出带宽最大值，默认100Mbps，范围1-200Mbps
        public let internetMaxBandwidthOut: Int64?

        public init(fleetId: String, copyNumber: Int64, assetId: String? = nil, description: String? = nil, inboundPermissions: [InboundPermission]? = nil, instanceType: String? = nil, fleetType: String? = nil, name: String? = nil, newGameServerSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, runtimeConfiguration: RuntimeConfiguration? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil, selectedScalingType: String? = nil, selectedCcnType: String? = nil, tags: [Tag]? = nil, systemDiskInfo: DiskInfo? = nil, dataDiskInfo: [DiskInfo]? = nil, selectedTimerType: String? = nil, ccnInfos: [CcnInfo]? = nil, internetMaxBandwidthOut: Int64? = nil) {
            self.fleetId = fleetId
            self.copyNumber = copyNumber
            self.assetId = assetId
            self.description = description
            self.inboundPermissions = inboundPermissions
            self.instanceType = instanceType
            self.fleetType = fleetType
            self.name = name
            self.newGameServerSessionProtectionPolicy = newGameServerSessionProtectionPolicy
            self.resourceCreationLimitPolicy = resourceCreationLimitPolicy
            self.runtimeConfiguration = runtimeConfiguration
            self.gameServerSessionProtectionTimeLimit = gameServerSessionProtectionTimeLimit
            self.selectedScalingType = selectedScalingType
            self.selectedCcnType = selectedCcnType
            self.tags = tags
            self.systemDiskInfo = systemDiskInfo
            self.dataDiskInfo = dataDiskInfo
            self.selectedTimerType = selectedTimerType
            self.ccnInfos = ccnInfos
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case copyNumber = "CopyNumber"
            case assetId = "AssetId"
            case description = "Description"
            case inboundPermissions = "InboundPermissions"
            case instanceType = "InstanceType"
            case fleetType = "FleetType"
            case name = "Name"
            case newGameServerSessionProtectionPolicy = "NewGameServerSessionProtectionPolicy"
            case resourceCreationLimitPolicy = "ResourceCreationLimitPolicy"
            case runtimeConfiguration = "RuntimeConfiguration"
            case gameServerSessionProtectionTimeLimit = "GameServerSessionProtectionTimeLimit"
            case selectedScalingType = "SelectedScalingType"
            case selectedCcnType = "SelectedCcnType"
            case tags = "Tags"
            case systemDiskInfo = "SystemDiskInfo"
            case dataDiskInfo = "DataDiskInfo"
            case selectedTimerType = "SelectedTimerType"
            case ccnInfos = "CcnInfos"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
        }
    }

    /// CopyFleet返回参数结构体
    public struct CopyFleetResponse: TCResponse {
        /// 服务器舰队属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetAttributes: [FleetAttributes]?

        /// 服务器舰队数量
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetAttributes = "FleetAttributes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 复制服务器舰队
    ///
    /// 本接口（CopyFleet）用于复制服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func copyFleet(_ input: CopyFleetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyFleetResponse> {
        fatalError("'CopyFleet' is no longer available.")
    }

    /// 复制服务器舰队
    ///
    /// 本接口（CopyFleet）用于复制服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func copyFleet(_ input: CopyFleetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyFleetResponse {
        fatalError("'CopyFleet' is no longer available.")
    }

    /// 复制服务器舰队
    ///
    /// 本接口（CopyFleet）用于复制服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func copyFleet(fleetId: String, copyNumber: Int64, assetId: String? = nil, description: String? = nil, inboundPermissions: [InboundPermission]? = nil, instanceType: String? = nil, fleetType: String? = nil, name: String? = nil, newGameServerSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, runtimeConfiguration: RuntimeConfiguration? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil, selectedScalingType: String? = nil, selectedCcnType: String? = nil, tags: [Tag]? = nil, systemDiskInfo: DiskInfo? = nil, dataDiskInfo: [DiskInfo]? = nil, selectedTimerType: String? = nil, ccnInfos: [CcnInfo]? = nil, internetMaxBandwidthOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CopyFleetResponse> {
        fatalError("'CopyFleet' is no longer available.")
    }

    /// 复制服务器舰队
    ///
    /// 本接口（CopyFleet）用于复制服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func copyFleet(fleetId: String, copyNumber: Int64, assetId: String? = nil, description: String? = nil, inboundPermissions: [InboundPermission]? = nil, instanceType: String? = nil, fleetType: String? = nil, name: String? = nil, newGameServerSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, runtimeConfiguration: RuntimeConfiguration? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil, selectedScalingType: String? = nil, selectedCcnType: String? = nil, tags: [Tag]? = nil, systemDiskInfo: DiskInfo? = nil, dataDiskInfo: [DiskInfo]? = nil, selectedTimerType: String? = nil, ccnInfos: [CcnInfo]? = nil, internetMaxBandwidthOut: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CopyFleetResponse {
        fatalError("'CopyFleet' is no longer available.")
    }
}
