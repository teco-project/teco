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

extension Cdb {
    /// UpgradeDBInstance请求参数结构体
    public struct UpgradeDBInstanceRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv 或者 cdbro-c1nl9rpv。与云数据库控制台页面中显示的实例 ID 相同，可使用 [查询实例列表](https://cloud.tencent.com/document/api/236/15872) 接口获取，其值为输出参数中字段 InstanceId 的值。
        public let instanceId: String

        /// 升级后的内存大小，单位：MB，为保证传入 Memory 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的内存规格。
        public let memory: Int64

        /// 升级后的硬盘大小，单位：GB，为保证传入 Volume 值有效，请使用 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口获取可升级的硬盘范围。
        public let volume: Int64

        /// 数据复制方式，支持值包括：0 - 异步复制，1 - 半同步复制，2 - 强同步复制，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        public let protectMode: Int64?

        /// 部署模式，默认为 0，支持值包括：0 - 单可用区部署，1 - 多可用区部署，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        public let deployMode: Int64?

        /// 备库1的可用区信息，默认和实例的 Zone 参数一致，升级主实例为多可用区部署时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。可通过 [获取云数据库可售卖规格](https://cloud.tencent.com/document/product/236/17229) 接口查询支持的可用区。
        public let slaveZone: String?

        /// 主实例数据库引擎版本，支持值包括：5.5、5.6 和 5.7。
        public let engineVersion: String?

        /// 切换访问新实例的方式，默认为 0。支持值包括：0 - 立刻切换，1 - 时间窗切换；当该值为 1 时，升级中过程中，切换访问新实例的流程将会在时间窗内进行，或者用户主动调用接口 [切换访问新实例](https://cloud.tencent.com/document/product/236/15864) 触发该流程。
        public let waitSwitch: Int64?

        /// 备库 2 的可用区信息，默认为空，升级主实例时可指定该参数，升级只读实例或者灾备实例时指定该参数无意义。
        public let backupZone: String?

        /// 实例类型，默认为 master，支持值包括：master - 表示主实例，dr - 表示灾备实例，ro - 表示只读实例。
        public let instanceRole: String?

        /// 实例隔离类型。支持值包括： "UNIVERSAL" - 通用型实例， "EXCLUSIVE" - 独享型实例， "BASIC" - 基础版实例。
        public let deviceType: String?

        /// 升级后的实例cpu核数， 如果不传将根据 Memory 指定的内存值自动填充对应的cpu值。
        public let cpu: Int64?

        /// 是否极速变配。0-普通升级，1-极速变配。选择极速变配会根据资源状况校验是否可以进行极速变配，满足条件则进行极速变配，不满足条件会返回报错信息。
        public let fastUpgrade: Int64?

        /// 延迟阈值。取值范围1~10，默认值为10。
        public let maxDelayTime: Int64?

        /// 是否跨区迁移。0-普通迁移，1-跨区迁移，默认值为0。该值为1时支持变更实例主节点可用区。
        public let crossCluster: Int64?

        /// 主节点可用区，该值仅在跨区迁移时生效。仅支持同地域下的可用区进行迁移。
        public let zoneId: String?

        public init(instanceId: String, memory: Int64, volume: Int64, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, engineVersion: String? = nil, waitSwitch: Int64? = nil, backupZone: String? = nil, instanceRole: String? = nil, deviceType: String? = nil, cpu: Int64? = nil, fastUpgrade: Int64? = nil, maxDelayTime: Int64? = nil, crossCluster: Int64? = nil, zoneId: String? = nil) {
            self.instanceId = instanceId
            self.memory = memory
            self.volume = volume
            self.protectMode = protectMode
            self.deployMode = deployMode
            self.slaveZone = slaveZone
            self.engineVersion = engineVersion
            self.waitSwitch = waitSwitch
            self.backupZone = backupZone
            self.instanceRole = instanceRole
            self.deviceType = deviceType
            self.cpu = cpu
            self.fastUpgrade = fastUpgrade
            self.maxDelayTime = maxDelayTime
            self.crossCluster = crossCluster
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case volume = "Volume"
            case protectMode = "ProtectMode"
            case deployMode = "DeployMode"
            case slaveZone = "SlaveZone"
            case engineVersion = "EngineVersion"
            case waitSwitch = "WaitSwitch"
            case backupZone = "BackupZone"
            case instanceRole = "InstanceRole"
            case deviceType = "DeviceType"
            case cpu = "Cpu"
            case fastUpgrade = "FastUpgrade"
            case maxDelayTime = "MaxDelayTime"
            case crossCluster = "CrossCluster"
            case zoneId = "ZoneId"
        }
    }

    /// UpgradeDBInstance返回参数结构体
    public struct UpgradeDBInstanceResponse: TCResponseModel {
        /// 订单 ID。
        public let dealIds: [String]

        /// 异步任务的请求 ID，可使用此 ID 查询异步任务的执行结果。
        public let asyncRequestId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealIds = "DealIds"
            case asyncRequestId = "AsyncRequestId"
            case requestId = "RequestId"
        }
    }

    /// 调整云数据库实例的配置
    ///
    /// 本接口(UpgradeDBInstance)用于升级或降级云数据库实例的配置，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceResponse> {
        self.client.execute(action: "UpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整云数据库实例的配置
    ///
    /// 本接口(UpgradeDBInstance)用于升级或降级云数据库实例的配置，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceResponse {
        try await self.client.execute(action: "UpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整云数据库实例的配置
    ///
    /// 本接口(UpgradeDBInstance)用于升级或降级云数据库实例的配置，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstance(instanceId: String, memory: Int64, volume: Int64, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, engineVersion: String? = nil, waitSwitch: Int64? = nil, backupZone: String? = nil, instanceRole: String? = nil, deviceType: String? = nil, cpu: Int64? = nil, fastUpgrade: Int64? = nil, maxDelayTime: Int64? = nil, crossCluster: Int64? = nil, zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceResponse> {
        self.upgradeDBInstance(UpgradeDBInstanceRequest(instanceId: instanceId, memory: memory, volume: volume, protectMode: protectMode, deployMode: deployMode, slaveZone: slaveZone, engineVersion: engineVersion, waitSwitch: waitSwitch, backupZone: backupZone, instanceRole: instanceRole, deviceType: deviceType, cpu: cpu, fastUpgrade: fastUpgrade, maxDelayTime: maxDelayTime, crossCluster: crossCluster, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 调整云数据库实例的配置
    ///
    /// 本接口(UpgradeDBInstance)用于升级或降级云数据库实例的配置，实例类型支持主实例、灾备实例和只读实例。
    @inlinable
    public func upgradeDBInstance(instanceId: String, memory: Int64, volume: Int64, protectMode: Int64? = nil, deployMode: Int64? = nil, slaveZone: String? = nil, engineVersion: String? = nil, waitSwitch: Int64? = nil, backupZone: String? = nil, instanceRole: String? = nil, deviceType: String? = nil, cpu: Int64? = nil, fastUpgrade: Int64? = nil, maxDelayTime: Int64? = nil, crossCluster: Int64? = nil, zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceResponse {
        try await self.upgradeDBInstance(UpgradeDBInstanceRequest(instanceId: instanceId, memory: memory, volume: volume, protectMode: protectMode, deployMode: deployMode, slaveZone: slaveZone, engineVersion: engineVersion, waitSwitch: waitSwitch, backupZone: backupZone, instanceRole: instanceRole, deviceType: deviceType, cpu: cpu, fastUpgrade: fastUpgrade, maxDelayTime: maxDelayTime, crossCluster: crossCluster, zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
