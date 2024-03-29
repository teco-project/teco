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

extension Sqlserver {
    /// UpgradeDBInstance请求参数结构体
    public struct UpgradeDBInstanceRequest: TCRequest {
        /// 实例ID，形如mssql-j8kv137v
        public let instanceId: String

        /// 实例升级后内存大小，单位GB，其值不能小于当前实例内存大小
        public let memory: Int64?

        /// 实例升级后磁盘大小，单位GB，其值不能小于当前实例磁盘大小
        public let storage: Int64?

        /// 是否自动使用代金券，0 - 不使用；1 - 默认使用。取值默认为0
        public let autoVoucher: Int64?

        /// 代金券ID，目前单个订单只能使用一张代金券
        public let voucherIds: [String]?

        /// 实例升级后的CPU核心数
        public let cpu: Int64?

        /// 升级sqlserver的版本，目前支持：2008R2（SQL Server 2008 Enterprise），2012SP3（SQL Server 2012 Enterprise）版本等。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息，版本不支持降级，不填则不修改版本
        public let dbVersion: String?

        /// 升级sqlserver的高可用架构,从镜像容灾升级到always on集群容灾，仅支持2017及以上版本且支持always on高可用的实例，不支持降级到镜像方式容灾，CLUSTER-升级为always on容灾，不填则不修改高可用架构
        public let haType: String?

        /// 修改实例是否为跨可用区容灾，SameZones-修改为同可用区 MultiZones-修改为跨可用区
        public let multiZones: String?

        /// 执行变配的方式，默认为 1。支持值包括：0 - 立刻执行，1 - 维护时间窗执行
        public let waitSwitch: Int64?

        public init(instanceId: String, memory: Int64? = nil, storage: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, cpu: Int64? = nil, dbVersion: String? = nil, haType: String? = nil, multiZones: String? = nil, waitSwitch: Int64? = nil) {
            self.instanceId = instanceId
            self.memory = memory
            self.storage = storage
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.cpu = cpu
            self.dbVersion = dbVersion
            self.haType = haType
            self.multiZones = multiZones
            self.waitSwitch = waitSwitch
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memory = "Memory"
            case storage = "Storage"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case cpu = "Cpu"
            case dbVersion = "DBVersion"
            case haType = "HAType"
            case multiZones = "MultiZones"
            case waitSwitch = "WaitSwitch"
        }
    }

    /// UpgradeDBInstance返回参数结构体
    public struct UpgradeDBInstanceResponse: TCResponse {
        /// 订单名称
        public let dealName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 升级实例
    ///
    /// 本接口（UpgradeDBInstance）用于升级实例
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceResponse> {
        self.client.execute(action: "UpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级实例
    ///
    /// 本接口（UpgradeDBInstance）用于升级实例
    @inlinable
    public func upgradeDBInstance(_ input: UpgradeDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceResponse {
        try await self.client.execute(action: "UpgradeDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级实例
    ///
    /// 本接口（UpgradeDBInstance）用于升级实例
    @inlinable
    public func upgradeDBInstance(instanceId: String, memory: Int64? = nil, storage: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, cpu: Int64? = nil, dbVersion: String? = nil, haType: String? = nil, multiZones: String? = nil, waitSwitch: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeDBInstanceResponse> {
        self.upgradeDBInstance(.init(instanceId: instanceId, memory: memory, storage: storage, autoVoucher: autoVoucher, voucherIds: voucherIds, cpu: cpu, dbVersion: dbVersion, haType: haType, multiZones: multiZones, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }

    /// 升级实例
    ///
    /// 本接口（UpgradeDBInstance）用于升级实例
    @inlinable
    public func upgradeDBInstance(instanceId: String, memory: Int64? = nil, storage: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, cpu: Int64? = nil, dbVersion: String? = nil, haType: String? = nil, multiZones: String? = nil, waitSwitch: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeDBInstanceResponse {
        try await self.upgradeDBInstance(.init(instanceId: instanceId, memory: memory, storage: storage, autoVoucher: autoVoucher, voucherIds: voucherIds, cpu: cpu, dbVersion: dbVersion, haType: haType, multiZones: multiZones, waitSwitch: waitSwitch), region: region, logger: logger, on: eventLoop)
    }
}
