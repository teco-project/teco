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
    /// CreateBasicDBInstances请求参数结构体
    public struct CreateBasicDBInstancesRequest: TCRequest {
        /// 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        public let zone: String

        /// 实例的CPU核心数
        public let cpu: UInt64

        /// 实例内存大小，单位GB
        public let memory: UInt64

        /// 实例磁盘大小，单位GB
        public let storage: UInt64

        /// VPC子网ID，形如subnet-bdoe83fa
        public let subnetId: String

        /// VPC网络ID，形如vpc-dsp338hz
        public let vpcId: String

        /// 购买实例的宿主机类型，CLOUD_PREMIUM-虚拟机高性能云盘，CLOUD_SSD-虚拟机SSD云盘,CLOUD_HSSD-虚拟机加强型SSD云盘，CLOUD_TSSD-虚拟机极速型SSD云盘，CLOUD_BSSD-虚拟机通用型SSD云盘
        public let machineType: String

        /// 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        public let instanceChargeType: String?

        /// 项目ID
        public let projectId: UInt64?

        /// 本次购买几个实例，默认值为1。取值不超过10
        public let goodsNum: UInt64?

        /// sqlserver版本，目前所有支持的版本有：2008R2 (SQL Server 2008 R2 Enterprise)，2012SP3 (SQL Server 2012 Enterprise)，201202 (SQL Server 2012 Standard)，2014SP2 (SQL Server 2014 Enterprise)，201402 (SQL Server 2014 Standard)，2016SP1 (SQL Server 2016 Enterprise)，201602 (SQL Server 2016 Standard)，2017 (SQL Server 2017 Enterprise)，201702 (SQL Server 2017 Standard)，2019 (SQL Server 2019 Enterprise)，201902 (SQL Server 2019 Standard)。每个地域支持售卖的版本不同，可通过DescribeProductConfig接口来拉取每个地域可售卖的版本信息。不填，默认为版本2008R2。
        public let dbVersion: String?

        /// 购买实例周期，默认取值为1，表示一个月。取值不超过48
        public let period: Int64?

        /// 安全组列表，填写形如sg-xxx的安全组ID
        public let securityGroupList: [String]?

        /// 自动续费标志：0-正常续费  1-自动续费，默认为1自动续费。只在购买预付费实例时有效。
        public let autoRenewFlag: Int64?

        /// 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        public let autoVoucher: Int64?

        /// 代金券ID数组，目前单个订单只能使用一张
        public let voucherIds: [String]?

        /// 可维护时间窗配置，以周为单位，表示周几允许维护，1-7分别代表周一到周末
        public let weekly: [Int64]?

        /// 可维护时间窗配置，每天可维护的开始时间
        public let startTime: String?

        /// 可维护时间窗配置，持续时间，单位：小时
        public let span: Int64?

        /// 新建实例绑定的标签集合
        public let resourceTags: [ResourceTag]?

        /// 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        public let collation: String?

        /// 系统时区，默认：China Standard Time
        public let timeZone: String?

        public init(zone: String, cpu: UInt64, memory: UInt64, storage: UInt64, subnetId: String, vpcId: String, machineType: String, instanceChargeType: String? = nil, projectId: UInt64? = nil, goodsNum: UInt64? = nil, dbVersion: String? = nil, period: Int64? = nil, securityGroupList: [String]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil, collation: String? = nil, timeZone: String? = nil) {
            self.zone = zone
            self.cpu = cpu
            self.memory = memory
            self.storage = storage
            self.subnetId = subnetId
            self.vpcId = vpcId
            self.machineType = machineType
            self.instanceChargeType = instanceChargeType
            self.projectId = projectId
            self.goodsNum = goodsNum
            self.dbVersion = dbVersion
            self.period = period
            self.securityGroupList = securityGroupList
            self.autoRenewFlag = autoRenewFlag
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.weekly = weekly
            self.startTime = startTime
            self.span = span
            self.resourceTags = resourceTags
            self.collation = collation
            self.timeZone = timeZone
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case cpu = "Cpu"
            case memory = "Memory"
            case storage = "Storage"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case machineType = "MachineType"
            case instanceChargeType = "InstanceChargeType"
            case projectId = "ProjectId"
            case goodsNum = "GoodsNum"
            case dbVersion = "DBVersion"
            case period = "Period"
            case securityGroupList = "SecurityGroupList"
            case autoRenewFlag = "AutoRenewFlag"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case weekly = "Weekly"
            case startTime = "StartTime"
            case span = "Span"
            case resourceTags = "ResourceTags"
            case collation = "Collation"
            case timeZone = "TimeZone"
        }
    }

    /// CreateBasicDBInstances返回参数结构体
    public struct CreateBasicDBInstancesResponse: TCResponse {
        /// 订单名称
        public let dealName: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 创建基础版实例
    ///
    /// 本接口（CreateBasicDBInstances）用于创建SQL server基础版实例。
    @inlinable
    public func createBasicDBInstances(_ input: CreateBasicDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBasicDBInstancesResponse> {
        self.client.execute(action: "CreateBasicDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建基础版实例
    ///
    /// 本接口（CreateBasicDBInstances）用于创建SQL server基础版实例。
    @inlinable
    public func createBasicDBInstances(_ input: CreateBasicDBInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBasicDBInstancesResponse {
        try await self.client.execute(action: "CreateBasicDBInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建基础版实例
    ///
    /// 本接口（CreateBasicDBInstances）用于创建SQL server基础版实例。
    @inlinable
    public func createBasicDBInstances(zone: String, cpu: UInt64, memory: UInt64, storage: UInt64, subnetId: String, vpcId: String, machineType: String, instanceChargeType: String? = nil, projectId: UInt64? = nil, goodsNum: UInt64? = nil, dbVersion: String? = nil, period: Int64? = nil, securityGroupList: [String]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil, collation: String? = nil, timeZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBasicDBInstancesResponse> {
        self.createBasicDBInstances(.init(zone: zone, cpu: cpu, memory: memory, storage: storage, subnetId: subnetId, vpcId: vpcId, machineType: machineType, instanceChargeType: instanceChargeType, projectId: projectId, goodsNum: goodsNum, dbVersion: dbVersion, period: period, securityGroupList: securityGroupList, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, voucherIds: voucherIds, weekly: weekly, startTime: startTime, span: span, resourceTags: resourceTags, collation: collation, timeZone: timeZone), region: region, logger: logger, on: eventLoop)
    }

    /// 创建基础版实例
    ///
    /// 本接口（CreateBasicDBInstances）用于创建SQL server基础版实例。
    @inlinable
    public func createBasicDBInstances(zone: String, cpu: UInt64, memory: UInt64, storage: UInt64, subnetId: String, vpcId: String, machineType: String, instanceChargeType: String? = nil, projectId: UInt64? = nil, goodsNum: UInt64? = nil, dbVersion: String? = nil, period: Int64? = nil, securityGroupList: [String]? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, voucherIds: [String]? = nil, weekly: [Int64]? = nil, startTime: String? = nil, span: Int64? = nil, resourceTags: [ResourceTag]? = nil, collation: String? = nil, timeZone: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBasicDBInstancesResponse {
        try await self.createBasicDBInstances(.init(zone: zone, cpu: cpu, memory: memory, storage: storage, subnetId: subnetId, vpcId: vpcId, machineType: machineType, instanceChargeType: instanceChargeType, projectId: projectId, goodsNum: goodsNum, dbVersion: dbVersion, period: period, securityGroupList: securityGroupList, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, voucherIds: voucherIds, weekly: weekly, startTime: startTime, span: span, resourceTags: resourceTags, collation: collation, timeZone: timeZone), region: region, logger: logger, on: eventLoop)
    }
}
