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
    /// CreateBusinessDBInstances请求参数结构体
    public struct CreateBusinessDBInstancesRequest: TCRequestModel {
        /// 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        public let zone: String

        /// 实例内存大小，单位GB
        public let memory: Int64

        /// 实例磁盘大小，单位GB
        public let storage: Int64

        /// 预购买实例的CPU核心数
        public let cpu: Int64

        /// 购买实例的宿主机类型，CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘
        public let machineType: String

        /// 项目ID
        public let projectId: Int64?

        /// 本次购买几个实例，默认值为1
        public let goodsNum: Int64?

        /// VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        public let subnetId: String?

        /// VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        public let vpcId: String?

        /// 商业智能服务器版本，目前只支持：201603（SQL Server 2016 Integration Services），201703（SQL Server 2017 Integration Services），201903（SQL Server 2019 Integration Services）版本。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本201903。
        public let dbVersion: String?

        /// 安全组列表，填写形如sg-xxx的安全组ID
        public let securityGroupList: [String]?

        /// 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        public let weekly: [Int64]?

        /// 可维护时间窗配置，每天可维护的开始时间
        public let startTime: String?

        /// 可维护时间窗配置，持续时间，单位：小时
        public let span: Int64?

        /// 新建实例绑定的标签集合
        public let resourceTags: [ResourceTag]?

        public init(zone: String, memory: Int64, storage: Int64, cpu: Int64, machineType: String, projectId: Int64? = nil, goodsNum: Int64? = nil, subnetId: String? = nil, vpcId: String? = nil, dbVersion: String? = nil, securityGroupList: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil) {
            self.zone = zone
            self.memory = memory
            self.storage = storage
            self.cpu = cpu
            self.machineType = machineType
            self.projectId = projectId
            self.goodsNum = goodsNum
            self.subnetId = subnetId
            self.vpcId = vpcId
            self.dbVersion = dbVersion
            self.securityGroupList = securityGroupList
            self.weekly = weekly
            self.startTime = startTime
            self.span = span
            self.resourceTags = resourceTags
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case memory = "Memory"
            case storage = "Storage"
            case cpu = "Cpu"
            case machineType = "MachineType"
            case projectId = "ProjectId"
            case goodsNum = "GoodsNum"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case dbVersion = "DBVersion"
            case securityGroupList = "SecurityGroupList"
            case weekly = "Weekly"
            case startTime = "StartTime"
            case span = "Span"
            case resourceTags = "ResourceTags"
        }
    }

    /// CreateBusinessDBInstances返回参数结构体
    public struct CreateBusinessDBInstancesResponse: TCResponseModel {
        /// 订单名称
        public let dealName: String

        /// 流程ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?

        /// 实例ID集合
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let instanceIdSet: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case flowId = "FlowId"
            case instanceIdSet = "InstanceIdSet"
            case requestId = "RequestId"
        }
    }

    /// 创建商业智能服务实例
    ///
    /// 本接口（CreateBusinessDBInstances）用于创建商业智能服务实例。
    @inlinable
    public func createBusinessDBInstances(_ input: CreateBusinessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBusinessDBInstancesResponse> {
        self.client.execute(action: "CreateBusinessDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建商业智能服务实例
    ///
    /// 本接口（CreateBusinessDBInstances）用于创建商业智能服务实例。
    @inlinable
    public func createBusinessDBInstances(_ input: CreateBusinessDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBusinessDBInstancesResponse {
        try await self.client.execute(action: "CreateBusinessDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建商业智能服务实例
    ///
    /// 本接口（CreateBusinessDBInstances）用于创建商业智能服务实例。
    @inlinable
    public func createBusinessDBInstances(zone: String, memory: Int64, storage: Int64, cpu: Int64, machineType: String, projectId: Int64? = nil, goodsNum: Int64? = nil, subnetId: String? = nil, vpcId: String? = nil, dbVersion: String? = nil, securityGroupList: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBusinessDBInstancesResponse> {
        self.createBusinessDBInstances(.init(zone: zone, memory: memory, storage: storage, cpu: cpu, machineType: machineType, projectId: projectId, goodsNum: goodsNum, subnetId: subnetId, vpcId: vpcId, dbVersion: dbVersion, securityGroupList: securityGroupList, weekly: weekly, startTime: startTime, span: span, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建商业智能服务实例
    ///
    /// 本接口（CreateBusinessDBInstances）用于创建商业智能服务实例。
    @inlinable
    public func createBusinessDBInstances(zone: String, memory: Int64, storage: Int64, cpu: Int64, machineType: String, projectId: Int64? = nil, goodsNum: Int64? = nil, subnetId: String? = nil, vpcId: String? = nil, dbVersion: String? = nil, securityGroupList: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBusinessDBInstancesResponse {
        try await self.createBusinessDBInstances(.init(zone: zone, memory: memory, storage: storage, cpu: cpu, machineType: machineType, projectId: projectId, goodsNum: goodsNum, subnetId: subnetId, vpcId: vpcId, dbVersion: dbVersion, securityGroupList: securityGroupList, weekly: weekly, startTime: startTime, span: span, resourceTags: resourceTags), region: region, logger: logger, on: eventLoop)
    }
}
