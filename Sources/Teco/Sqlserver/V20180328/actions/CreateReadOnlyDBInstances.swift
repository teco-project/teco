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

extension Sqlserver {
    /// 创建只读实例
    ///
    /// 本接口（CreateReadOnlyDBInstances）用于添加只读副本实例。
    @inlinable
    public func createReadOnlyDBInstances(_ input: CreateReadOnlyDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateReadOnlyDBInstancesResponse > {
        self.client.execute(action: "CreateReadOnlyDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建只读实例
    ///
    /// 本接口（CreateReadOnlyDBInstances）用于添加只读副本实例。
    @inlinable
    public func createReadOnlyDBInstances(_ input: CreateReadOnlyDBInstancesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateReadOnlyDBInstancesResponse {
        try await self.client.execute(action: "CreateReadOnlyDBInstances", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateReadOnlyDBInstances请求参数结构体
    public struct CreateReadOnlyDBInstancesRequest: TCRequestModel {
        /// 主实例ID，格式如：mssql-3l3fgqn7
        public let instanceId: String
        
        /// 实例可用区，类似ap-guangzhou-1（广州一区）；实例可售卖区域可以通过接口DescribeZones获取
        public let zone: String
        
        /// 只读组类型选项，1-按照一个实例一个只读组的方式发货，2-新建只读组后发货，所有实例都在这个只读组下面， 3-发货的所有实例都在已有的只读组下面
        public let readOnlyGroupType: Int64
        
        /// 实例内存大小，单位GB
        public let memory: Int64
        
        /// 实例磁盘大小，单位GB
        public let storage: Int64
        
        /// 0-默认不升级主实例，1-强制升级主实例完成ro部署；主实例为非集群版时需要填1，强制升级为集群版。填1 说明您已同意将主实例升级到集群版实例。
        public let readOnlyGroupForcedUpgrade: Int64?
        
        /// ReadOnlyGroupType=3时必填,已存在的只读组ID
        public let readOnlyGroupId: String?
        
        /// ReadOnlyGroupType=2时必填，新建的只读组名称
        public let readOnlyGroupName: String?
        
        /// ReadOnlyGroupType=2时必填，新建的只读组是否开启延迟剔除功能，1-开启，0-关闭。当只读副本与主实例延迟大于阈值后，自动剔除。
        public let readOnlyGroupIsOfflineDelay: Int64?
        
        /// ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除的阈值。
        public let readOnlyGroupMaxDelayTime: Int64?
        
        /// ReadOnlyGroupType=2 且 ReadOnlyGroupIsOfflineDelay=1时必填，新建的只读组延迟剔除后至少保留只读副本的个数。
        public let readOnlyGroupMinInGroup: Int64?
        
        /// 付费模式，取值支持 PREPAID（预付费），POSTPAID（后付费）。
        public let instanceChargeType: String?
        
        /// 本次购买几个只读实例，默认值为1。
        public let goodsNum: Int64?
        
        /// VPC子网ID，形如subnet-bdoe83fa；SubnetId和VpcId需同时设置或者同时不设置
        public let subnetId: String?
        
        /// VPC网络ID，形如vpc-dsp338hz；SubnetId和VpcId需同时设置或者同时不设置
        public let vpcId: String?
        
        /// 购买实例周期，默认取值为1，表示一个月。取值不超过48
        public let period: Int64?
        
        /// 安全组列表，填写形如sg-xxx的安全组ID
        public let securityGroupList: [String]?
        
        /// 是否自动使用代金券；1 - 是，0 - 否，默认不使用
        public let autoVoucher: Int64?
        
        /// 代金券ID数组，目前单个订单只能使用一张
        public let voucherIds: [String]?
        
        /// 新建实例绑定的标签集合
        public let resourceTags: [ResourceTag]?
        
        /// 系统字符集排序规则，默认：Chinese_PRC_CI_AS
        public let collation: String?
        
        /// 系统时区，默认：China Standard Time
        public let timeZone: String?
        
        public init (instanceId: String, zone: String, readOnlyGroupType: Int64, memory: Int64, storage: Int64, readOnlyGroupForcedUpgrade: Int64?, readOnlyGroupId: String?, readOnlyGroupName: String?, readOnlyGroupIsOfflineDelay: Int64?, readOnlyGroupMaxDelayTime: Int64?, readOnlyGroupMinInGroup: Int64?, instanceChargeType: String?, goodsNum: Int64?, subnetId: String?, vpcId: String?, period: Int64?, securityGroupList: [String]?, autoVoucher: Int64?, voucherIds: [String]?, resourceTags: [ResourceTag]?, collation: String?, timeZone: String?) {
            self.instanceId = instanceId
            self.zone = zone
            self.readOnlyGroupType = readOnlyGroupType
            self.memory = memory
            self.storage = storage
            self.readOnlyGroupForcedUpgrade = readOnlyGroupForcedUpgrade
            self.readOnlyGroupId = readOnlyGroupId
            self.readOnlyGroupName = readOnlyGroupName
            self.readOnlyGroupIsOfflineDelay = readOnlyGroupIsOfflineDelay
            self.readOnlyGroupMaxDelayTime = readOnlyGroupMaxDelayTime
            self.readOnlyGroupMinInGroup = readOnlyGroupMinInGroup
            self.instanceChargeType = instanceChargeType
            self.goodsNum = goodsNum
            self.subnetId = subnetId
            self.vpcId = vpcId
            self.period = period
            self.securityGroupList = securityGroupList
            self.autoVoucher = autoVoucher
            self.voucherIds = voucherIds
            self.resourceTags = resourceTags
            self.collation = collation
            self.timeZone = timeZone
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case zone = "Zone"
            case readOnlyGroupType = "ReadOnlyGroupType"
            case memory = "Memory"
            case storage = "Storage"
            case readOnlyGroupForcedUpgrade = "ReadOnlyGroupForcedUpgrade"
            case readOnlyGroupId = "ReadOnlyGroupId"
            case readOnlyGroupName = "ReadOnlyGroupName"
            case readOnlyGroupIsOfflineDelay = "ReadOnlyGroupIsOfflineDelay"
            case readOnlyGroupMaxDelayTime = "ReadOnlyGroupMaxDelayTime"
            case readOnlyGroupMinInGroup = "ReadOnlyGroupMinInGroup"
            case instanceChargeType = "InstanceChargeType"
            case goodsNum = "GoodsNum"
            case subnetId = "SubnetId"
            case vpcId = "VpcId"
            case period = "Period"
            case securityGroupList = "SecurityGroupList"
            case autoVoucher = "AutoVoucher"
            case voucherIds = "VoucherIds"
            case resourceTags = "ResourceTags"
            case collation = "Collation"
            case timeZone = "TimeZone"
        }
    }
    
    /// CreateReadOnlyDBInstances返回参数结构体
    public struct CreateReadOnlyDBInstancesResponse: TCResponseModel {
        /// 订单名称数组
        public let dealNames: [String]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case dealNames = "DealNames"
            case requestId = "RequestId"
        }
    }
}
