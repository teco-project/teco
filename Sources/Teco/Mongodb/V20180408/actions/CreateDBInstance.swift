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

extension Mongodb {
    /// CreateDBInstance请求参数结构体
    public struct CreateDBInstanceRequest: TCRequestModel {
        /// 每个副本集内从节点个数
        public let secondaryNum: UInt64

        /// 实例内存大小，单位：GB
        public let memory: UInt64

        /// 实例硬盘大小，单位：GB
        public let volume: UInt64

        /// 版本号，当前支持 MONGO_3_WT、MONGO_3_ROCKS、MONGO_36_WT
        public let mongoVersion: String

        /// 机器类型，GIO：高IO版；TGIO：高IO万兆
        public let machineCode: String

        /// 实例数量，默认值为1, 最小值1，最大值为10
        public let goodsNum: UInt64

        /// 实例所属区域名称，格式如：ap-guangzhou-2
        public let zone: String

        /// 时长，购买月数
        public let timeSpan: UInt64

        /// 实例密码
        public let password: String

        /// 项目ID，不填为默认项目
        public let projectId: UInt64?

        /// 安全组参数
        public let securityGroup: [String]?

        /// 私有网络ID，如果不传则默认选择基础网络
        public let uniqVpcId: String?

        /// 私有网络下的子网ID，如果设置了 VpcId，则 SubnetId必填
        public let uniqSubnetId: String?

        public init(secondaryNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, timeSpan: UInt64, password: String, projectId: UInt64? = nil, securityGroup: [String]? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil) {
            self.secondaryNum = secondaryNum
            self.memory = memory
            self.volume = volume
            self.mongoVersion = mongoVersion
            self.machineCode = machineCode
            self.goodsNum = goodsNum
            self.zone = zone
            self.timeSpan = timeSpan
            self.password = password
            self.projectId = projectId
            self.securityGroup = securityGroup
            self.uniqVpcId = uniqVpcId
            self.uniqSubnetId = uniqSubnetId
        }

        enum CodingKeys: String, CodingKey {
            case secondaryNum = "SecondaryNum"
            case memory = "Memory"
            case volume = "Volume"
            case mongoVersion = "MongoVersion"
            case machineCode = "MachineCode"
            case goodsNum = "GoodsNum"
            case zone = "Zone"
            case timeSpan = "TimeSpan"
            case password = "Password"
            case projectId = "ProjectId"
            case securityGroup = "SecurityGroup"
            case uniqVpcId = "UniqVpcId"
            case uniqSubnetId = "UniqSubnetId"
        }
    }

    /// CreateDBInstance返回参数结构体
    public struct CreateDBInstanceResponse: TCResponseModel {
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

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。
    @inlinable
    public func createDBInstance(_ input: CreateDBInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.client.execute(action: "CreateDBInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。
    @inlinable
    public func createDBInstance(secondaryNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, timeSpan: UInt64, password: String, projectId: UInt64? = nil, securityGroup: [String]? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDBInstanceResponse> {
        self.createDBInstance(CreateDBInstanceRequest(secondaryNum: secondaryNum, memory: memory, volume: volume, mongoVersion: mongoVersion, machineCode: machineCode, goodsNum: goodsNum, zone: zone, timeSpan: timeSpan, password: password, projectId: projectId, securityGroup: securityGroup, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建云数据库实例（包年包月）
    ///
    /// 本接口(CreateDBInstance)用于创建包年包月的MongoDB云数据库实例。
    @inlinable
    public func createDBInstance(secondaryNum: UInt64, memory: UInt64, volume: UInt64, mongoVersion: String, machineCode: String, goodsNum: UInt64, zone: String, timeSpan: UInt64, password: String, projectId: UInt64? = nil, securityGroup: [String]? = nil, uniqVpcId: String? = nil, uniqSubnetId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDBInstanceResponse {
        try await self.createDBInstance(CreateDBInstanceRequest(secondaryNum: secondaryNum, memory: memory, volume: volume, mongoVersion: mongoVersion, machineCode: machineCode, goodsNum: goodsNum, zone: zone, timeSpan: timeSpan, password: password, projectId: projectId, securityGroup: securityGroup, uniqVpcId: uniqVpcId, uniqSubnetId: uniqSubnetId), region: region, logger: logger, on: eventLoop)
    }
}
