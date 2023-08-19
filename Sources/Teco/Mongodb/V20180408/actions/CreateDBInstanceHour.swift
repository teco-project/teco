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

extension Mongodb {
    /// CreateDBInstanceHour请求参数结构体
    public struct CreateDBInstanceHourRequest: TCRequest {
        /// 实例内存大小，单位：GB
        public let memory: UInt64

        /// 实例硬盘大小，单位：GB
        public let volume: UInt64

        /// 副本集个数，1为单副本集实例，大于1为分片集群实例，最大不超过10
        public let replicateSetNum: UInt64

        /// 每个副本集内从节点个数，目前只支持从节点数为2
        public let secondaryNum: UInt64

        /// MongoDB引擎版本，值包括MONGO_3_WT 、MONGO_3_ROCKS和MONGO_36_WT
        public let engineVersion: String

        /// 实例类型，GIO：高IO版；TGIO：高IO万兆
        public let machine: String

        /// 实例数量，默认值为1, 最小值1，最大值为10
        public let goodsNum: UInt64

        /// 可用区信息，格式如：ap-guangzhou-2
        public let zone: String

        /// 实例角色，支持值包括：MASTER-表示主实例，DR-表示灾备实例，RO-表示只读实例
        public let instanceRole: String

        /// 实例类型，REPLSET-副本集，SHARD-分片集群
        public let instanceType: String

        /// 数据是否加密，当且仅当引擎版本为MONGO_3_ROCKS，可以选择加密
        public let encrypt: UInt64?

        /// 私有网络ID，如果不传则默认选择基础网络
        public let vpcId: String?

        /// 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        public let subnetId: String?

        /// 项目ID，不填为默认项目
        public let projectId: Int64?

        /// 安全组参数
        public let securityGroup: [String]?

        public init(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, secondaryNum: UInt64, engineVersion: String, machine: String, goodsNum: UInt64, zone: String, instanceRole: String, instanceType: String, encrypt: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, securityGroup: [String]? = nil) {
            self.memory = memory
            self.volume = volume
            self.replicateSetNum = replicateSetNum
            self.secondaryNum = secondaryNum
            self.engineVersion = engineVersion
            self.machine = machine
            self.goodsNum = goodsNum
            self.zone = zone
            self.instanceRole = instanceRole
            self.instanceType = instanceType
            self.encrypt = encrypt
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.projectId = projectId
            self.securityGroup = securityGroup
        }

        enum CodingKeys: String, CodingKey {
            case memory = "Memory"
            case volume = "Volume"
            case replicateSetNum = "ReplicateSetNum"
            case secondaryNum = "SecondaryNum"
            case engineVersion = "EngineVersion"
            case machine = "Machine"
            case goodsNum = "GoodsNum"
            case zone = "Zone"
            case instanceRole = "InstanceRole"
            case instanceType = "InstanceType"
            case encrypt = "Encrypt"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case projectId = "ProjectId"
            case securityGroup = "SecurityGroup"
        }
    }

    /// CreateDBInstanceHour返回参数结构体
    public struct CreateDBInstanceHourResponse: TCResponse {
        /// 订单ID
        public let dealId: String

        /// 创建的实例ID列表
        public let instanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例（包括主实例、灾备实例和只读实例），可通过传入实例规格、实例类型、MongoDB版本、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceHourResponse> {
        self.client.execute(action: "CreateDBInstanceHour", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例（包括主实例、灾备实例和只读实例），可通过传入实例规格、实例类型、MongoDB版本、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstanceHour(_ input: CreateDBInstanceHourRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.client.execute(action: "CreateDBInstanceHour", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例（包括主实例、灾备实例和只读实例），可通过传入实例规格、实例类型、MongoDB版本、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstanceHour(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, secondaryNum: UInt64, engineVersion: String, machine: String, goodsNum: UInt64, zone: String, instanceRole: String, instanceType: String, encrypt: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, securityGroup: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceHourResponse> {
        self.createDBInstanceHour(.init(memory: memory, volume: volume, replicateSetNum: replicateSetNum, secondaryNum: secondaryNum, engineVersion: engineVersion, machine: machine, goodsNum: goodsNum, zone: zone, instanceRole: instanceRole, instanceType: instanceType, encrypt: encrypt, vpcId: vpcId, subnetId: subnetId, projectId: projectId, securityGroup: securityGroup), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（按量计费）
    ///
    /// 本接口(CreateDBInstanceHour)用于创建按量计费的MongoDB云数据库实例（包括主实例、灾备实例和只读实例），可通过传入实例规格、实例类型、MongoDB版本、购买时长和数量等信息创建云数据库实例。
    @inlinable
    public func createDBInstanceHour(memory: UInt64, volume: UInt64, replicateSetNum: UInt64, secondaryNum: UInt64, engineVersion: String, machine: String, goodsNum: UInt64, zone: String, instanceRole: String, instanceType: String, encrypt: UInt64? = nil, vpcId: String? = nil, subnetId: String? = nil, projectId: Int64? = nil, securityGroup: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceHourResponse {
        try await self.createDBInstanceHour(.init(memory: memory, volume: volume, replicateSetNum: replicateSetNum, secondaryNum: secondaryNum, engineVersion: engineVersion, machine: machine, goodsNum: goodsNum, zone: zone, instanceRole: instanceRole, instanceType: instanceType, encrypt: encrypt, vpcId: vpcId, subnetId: subnetId, projectId: projectId, securityGroup: securityGroup), region: region, logger: logger, on: eventLoop)
    }
}
