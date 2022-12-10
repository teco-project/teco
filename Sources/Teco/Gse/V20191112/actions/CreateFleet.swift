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

@_exported import struct Foundation.Date

extension Gse {
    /// 创建服务器舰队
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateFleet）用于创建服务器舰队。
    @inlinable
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateFleetResponse > {
        self.client.execute(action: "CreateFleet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建服务器舰队
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（CreateFleet）用于创建服务器舰队。
    @inlinable
    public func createFleet(_ input: CreateFleetRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateFleetResponse {
        try await self.client.execute(action: "CreateFleet", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateFleet请求参数结构体
    public struct CreateFleetRequest: TCRequestModel {
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
        
        /// VPC 网络 Id，对等连接已不再使用
        public let peerVpcId: String?
        
        /// 资源创建限制策略
        public let resourceCreationLimitPolicy: ResourceCreationLimitPolicy
        
        /// 进程配置
        public let runtimeConfiguration: RuntimeConfiguration
        
        /// VPC 子网，对等连接已不再使用
        public let subNetId: String?
        
        /// 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        public let gameServerSessionProtectionTimeLimit: Int64?
        
        /// 标签列表，最大长度50组
        public let tags: [Tag]?
        
        /// 系统盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-500GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，50-500GB；容量以1为单位
        public let systemDiskInfo: DiskInfo
        
        /// 数据盘，储存类型为 SSD 云硬盘（CLOUD_SSD）时，100-32000GB；储存类型为高性能云硬盘（CLOUD_PREMIUM）时，10-32000GB；容量以10为单位
        public let dataDiskInfo: [DiskInfo]?
        
        /// 云联网信息，包含对应的账号信息及所属id
        public let ccnInfos: [CcnInfo]?
        
        /// fleet公网出带宽最大值，默认100Mbps，范围1-200Mbps
        public let internetMaxBandwidthOut: Int64?
        
        public init (assetId: String?, description: String?, inboundPermissions: [InboundPermission]?, instanceType: String?, fleetType: String?, name: String?, newGameServerSessionProtectionPolicy: String?, peerVpcId: String?, resourceCreationLimitPolicy: ResourceCreationLimitPolicy, runtimeConfiguration: RuntimeConfiguration, subNetId: String?, gameServerSessionProtectionTimeLimit: Int64?, tags: [Tag]?, systemDiskInfo: DiskInfo, dataDiskInfo: [DiskInfo]?, ccnInfos: [CcnInfo]?, internetMaxBandwidthOut: Int64?) {
            self.assetId = assetId
            self.description = description
            self.inboundPermissions = inboundPermissions
            self.instanceType = instanceType
            self.fleetType = fleetType
            self.name = name
            self.newGameServerSessionProtectionPolicy = newGameServerSessionProtectionPolicy
            self.peerVpcId = peerVpcId
            self.resourceCreationLimitPolicy = resourceCreationLimitPolicy
            self.runtimeConfiguration = runtimeConfiguration
            self.subNetId = subNetId
            self.gameServerSessionProtectionTimeLimit = gameServerSessionProtectionTimeLimit
            self.tags = tags
            self.systemDiskInfo = systemDiskInfo
            self.dataDiskInfo = dataDiskInfo
            self.ccnInfos = ccnInfos
            self.internetMaxBandwidthOut = internetMaxBandwidthOut
        }
        
        enum CodingKeys: String, CodingKey {
            case assetId = "AssetId"
            case description = "Description"
            case inboundPermissions = "InboundPermissions"
            case instanceType = "InstanceType"
            case fleetType = "FleetType"
            case name = "Name"
            case newGameServerSessionProtectionPolicy = "NewGameServerSessionProtectionPolicy"
            case peerVpcId = "PeerVpcId"
            case resourceCreationLimitPolicy = "ResourceCreationLimitPolicy"
            case runtimeConfiguration = "RuntimeConfiguration"
            case subNetId = "SubNetId"
            case gameServerSessionProtectionTimeLimit = "GameServerSessionProtectionTimeLimit"
            case tags = "Tags"
            case systemDiskInfo = "SystemDiskInfo"
            case dataDiskInfo = "DataDiskInfo"
            case ccnInfos = "CcnInfos"
            case internetMaxBandwidthOut = "InternetMaxBandwidthOut"
        }
    }
    
    /// CreateFleet返回参数结构体
    public struct CreateFleetResponse: TCResponseModel {
        /// 服务器舰队属性
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetAttributes: FleetAttributes
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case fleetAttributes = "FleetAttributes"
            case requestId = "RequestId"
        }
    }
}