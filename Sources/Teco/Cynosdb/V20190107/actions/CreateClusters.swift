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

extension Cynosdb {
    /// CreateClusters请求参数结构体
    public struct CreateClustersRequest: TCRequest {
        /// 可用区
        public let zone: String

        /// 所属VPC网络ID
        public let vpcId: String

        /// 所属子网ID
        public let subnetId: String

        /// 数据库类型，取值范围:
        /// - MYSQL
        public let dbType: String

        /// 数据库版本，取值范围:
        /// - MYSQL可选值：5.7，8.0
        public let dbVersion: String

        /// 所属项目ID
        public let projectId: Int64?

        /// 当DbMode为NORMAL或不填时必选
        /// 普通实例Cpu核数
        public let cpu: Int64?

        /// 当DbMode为NORMAL或不填时必选
        /// 普通实例内存,单位GB
        public let memory: Int64?

        /// 该参数无实际意义，已废弃。
        /// 存储大小，单位GB。
        public let storage: Int64?

        /// 集群名称，长度小于64个字符，每个字符取值范围：大/小写字母，数字，特殊符号（'-','_','.'）
        public let clusterName: String?

        /// 账号密码(8-64个字符，包含大小写英文字母、数字和符号~!@#$%^&*_-+=`|\(){}[]:;'<>,.?/中的任意三种)
        public let adminPassword: String?

        /// 端口，默认3306，取值范围[0, 65535)
        public let port: Int64?

        /// 计费模式，按量计费：0，包年包月：1。默认按量计费。
        public let payMode: Int64?

        /// 购买集群数，可选值范围[1,50]，默认为1
        public let count: Int64?

        /// 回档类型：
        /// noneRollback：不回档；
        /// snapRollback，快照回档；
        /// timeRollback，时间点回档
        public let rollbackStrategy: String?

        /// 快照回档，表示snapshotId；时间点回档，表示queryId，为0，表示需要判断时间点是否有效
        public let rollbackId: UInt64?

        /// 回档时，传入源集群ID，用于查找源poolId
        public let originalClusterId: String?

        /// 时间点回档，指定时间；快照回档，快照时间
        public let expectTime: String?

        /// 该参数无实际意义，已废弃。
        /// 时间点回档，指定时间允许范围
        public let expectTimeThresh: UInt64?

        /// 普通实例存储上限，单位GB
        /// 当DbType为MYSQL，且存储计费模式为预付费时，该参数需不大于cpu与memory对应存储规格上限
        public let storageLimit: Int64?

        /// 实例数量，数量范围为(0,16]
        public let instanceCount: Int64?

        /// 包年包月购买时长
        public let timeSpan: Int64?

        /// 包年包月购买时长单位，['s','d','m','y']
        public let timeUnit: String?

        /// 包年包月购买是否自动续费，默认为0。
        /// 0标识默认续费方式，1表示自动续费，2表示手不自动续费。
        public let autoRenewFlag: Int64?

        /// 是否自动选择代金券 1是 0否 默认为0
        public let autoVoucher: Int64?

        /// 实例数量（该参数已不再使用，只做存量兼容处理）
        public let haCount: Int64?

        /// 订单来源
        public let orderSource: String?

        /// 集群创建需要绑定的tag数组信息
        public let resourceTags: [Tag]?

        /// Db类型
        /// 当DbType为MYSQL时可选(默认NORMAL)：
        /// - NORMAL
        /// - SERVERLESS
        public let dbMode: String?

        /// 当DbMode为SEVERLESS时必填
        /// cpu最小值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        public let minCpu: Float?

        /// 当DbMode为SEVERLESS时必填：
        /// cpu最大值，可选范围参考DescribeServerlessInstanceSpecs接口返回
        public let maxCpu: Float?

        /// 当DbMode为SEVERLESS时，指定集群是否自动暂停，可选范围
        /// - yes
        /// - no
        ///
        /// 默认值:yes
        public let autoPause: String?

        /// 当DbMode为SEVERLESS时，指定集群自动暂停的延迟，单位秒，可选范围[600,691200]
        /// 默认值:600
        public let autoPauseDelay: Int64?

        /// 集群存储计费模式，按量计费：0，包年包月：1。默认按量计费
        /// 当DbType为MYSQL时，在集群计算计费模式为后付费（包括DbMode为SERVERLESS）时，存储计费模式仅可为按量计费
        /// 回档与克隆均不支持包年包月存储
        public let storagePayMode: Int64?

        /// 安全组id数组
        public let securityGroupIds: [String]?

        /// 告警策略Id数组
        public let alarmPolicyIds: [String]?

        /// 参数数组，暂时支持character_set_server （utf8｜latin1｜gbk｜utf8mb4） ，lower_case_table_names，1-大小写不敏感，0-大小写敏感
        public let clusterParams: [ParamItem]?

        /// 交易模式，0-下单且支付，1-下单
        public let dealMode: Int64?

        /// 参数模版ID，可以通过查询参数模板信息DescribeParamTemplates获得参数模板ID
        public let paramTemplateId: Int64?

        /// 多可用区地址
        public let slaveZone: String?

        /// 实例初始化配置信息，主要用于购买集群时选不同规格实例
        public let instanceInitInfos: [InstanceInitInfo]?

        public init(zone: String, vpcId: String, subnetId: String, dbType: String, dbVersion: String, projectId: Int64? = nil, cpu: Int64? = nil, memory: Int64? = nil, storage: Int64? = nil, clusterName: String? = nil, adminPassword: String? = nil, port: Int64? = nil, payMode: Int64? = nil, count: Int64? = nil, rollbackStrategy: String? = nil, rollbackId: UInt64? = nil, originalClusterId: String? = nil, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, storageLimit: Int64? = nil, instanceCount: Int64? = nil, timeSpan: Int64? = nil, timeUnit: String? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, haCount: Int64? = nil, orderSource: String? = nil, resourceTags: [Tag]? = nil, dbMode: String? = nil, minCpu: Float? = nil, maxCpu: Float? = nil, autoPause: String? = nil, autoPauseDelay: Int64? = nil, storagePayMode: Int64? = nil, securityGroupIds: [String]? = nil, alarmPolicyIds: [String]? = nil, clusterParams: [ParamItem]? = nil, dealMode: Int64? = nil, paramTemplateId: Int64? = nil, slaveZone: String? = nil, instanceInitInfos: [InstanceInitInfo]? = nil) {
            self.zone = zone
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.dbType = dbType
            self.dbVersion = dbVersion
            self.projectId = projectId
            self.cpu = cpu
            self.memory = memory
            self.storage = storage
            self.clusterName = clusterName
            self.adminPassword = adminPassword
            self.port = port
            self.payMode = payMode
            self.count = count
            self.rollbackStrategy = rollbackStrategy
            self.rollbackId = rollbackId
            self.originalClusterId = originalClusterId
            self.expectTime = expectTime
            self.expectTimeThresh = expectTimeThresh
            self.storageLimit = storageLimit
            self.instanceCount = instanceCount
            self.timeSpan = timeSpan
            self.timeUnit = timeUnit
            self.autoRenewFlag = autoRenewFlag
            self.autoVoucher = autoVoucher
            self.haCount = haCount
            self.orderSource = orderSource
            self.resourceTags = resourceTags
            self.dbMode = dbMode
            self.minCpu = minCpu
            self.maxCpu = maxCpu
            self.autoPause = autoPause
            self.autoPauseDelay = autoPauseDelay
            self.storagePayMode = storagePayMode
            self.securityGroupIds = securityGroupIds
            self.alarmPolicyIds = alarmPolicyIds
            self.clusterParams = clusterParams
            self.dealMode = dealMode
            self.paramTemplateId = paramTemplateId
            self.slaveZone = slaveZone
            self.instanceInitInfos = instanceInitInfos
        }

        enum CodingKeys: String, CodingKey {
            case zone = "Zone"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case dbType = "DbType"
            case dbVersion = "DbVersion"
            case projectId = "ProjectId"
            case cpu = "Cpu"
            case memory = "Memory"
            case storage = "Storage"
            case clusterName = "ClusterName"
            case adminPassword = "AdminPassword"
            case port = "Port"
            case payMode = "PayMode"
            case count = "Count"
            case rollbackStrategy = "RollbackStrategy"
            case rollbackId = "RollbackId"
            case originalClusterId = "OriginalClusterId"
            case expectTime = "ExpectTime"
            case expectTimeThresh = "ExpectTimeThresh"
            case storageLimit = "StorageLimit"
            case instanceCount = "InstanceCount"
            case timeSpan = "TimeSpan"
            case timeUnit = "TimeUnit"
            case autoRenewFlag = "AutoRenewFlag"
            case autoVoucher = "AutoVoucher"
            case haCount = "HaCount"
            case orderSource = "OrderSource"
            case resourceTags = "ResourceTags"
            case dbMode = "DbMode"
            case minCpu = "MinCpu"
            case maxCpu = "MaxCpu"
            case autoPause = "AutoPause"
            case autoPauseDelay = "AutoPauseDelay"
            case storagePayMode = "StoragePayMode"
            case securityGroupIds = "SecurityGroupIds"
            case alarmPolicyIds = "AlarmPolicyIds"
            case clusterParams = "ClusterParams"
            case dealMode = "DealMode"
            case paramTemplateId = "ParamTemplateId"
            case slaveZone = "SlaveZone"
            case instanceInitInfos = "InstanceInitInfos"
        }
    }

    /// CreateClusters返回参数结构体
    public struct CreateClustersResponse: TCResponse {
        /// 冻结流水ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tranId: String?

        /// 订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealNames: [String]?

        /// 资源ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取资源ID）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resourceIds: [String]?

        /// 集群ID列表（该字段已不再维护，请使用dealNames字段查询接口DescribeResourcesByDealName获取集群ID）
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterIds: [String]?

        /// 大订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bigDealIds: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tranId = "TranId"
            case dealNames = "DealNames"
            case resourceIds = "ResourceIds"
            case clusterIds = "ClusterIds"
            case bigDealIds = "BigDealIds"
            case requestId = "RequestId"
        }
    }

    /// 购买新集群
    @inlinable
    public func createClusters(_ input: CreateClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClustersResponse> {
        self.client.execute(action: "CreateClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 购买新集群
    @inlinable
    public func createClusters(_ input: CreateClustersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClustersResponse {
        try await self.client.execute(action: "CreateClusters", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 购买新集群
    @inlinable
    public func createClusters(zone: String, vpcId: String, subnetId: String, dbType: String, dbVersion: String, projectId: Int64? = nil, cpu: Int64? = nil, memory: Int64? = nil, storage: Int64? = nil, clusterName: String? = nil, adminPassword: String? = nil, port: Int64? = nil, payMode: Int64? = nil, count: Int64? = nil, rollbackStrategy: String? = nil, rollbackId: UInt64? = nil, originalClusterId: String? = nil, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, storageLimit: Int64? = nil, instanceCount: Int64? = nil, timeSpan: Int64? = nil, timeUnit: String? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, haCount: Int64? = nil, orderSource: String? = nil, resourceTags: [Tag]? = nil, dbMode: String? = nil, minCpu: Float? = nil, maxCpu: Float? = nil, autoPause: String? = nil, autoPauseDelay: Int64? = nil, storagePayMode: Int64? = nil, securityGroupIds: [String]? = nil, alarmPolicyIds: [String]? = nil, clusterParams: [ParamItem]? = nil, dealMode: Int64? = nil, paramTemplateId: Int64? = nil, slaveZone: String? = nil, instanceInitInfos: [InstanceInitInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClustersResponse> {
        self.createClusters(.init(zone: zone, vpcId: vpcId, subnetId: subnetId, dbType: dbType, dbVersion: dbVersion, projectId: projectId, cpu: cpu, memory: memory, storage: storage, clusterName: clusterName, adminPassword: adminPassword, port: port, payMode: payMode, count: count, rollbackStrategy: rollbackStrategy, rollbackId: rollbackId, originalClusterId: originalClusterId, expectTime: expectTime, expectTimeThresh: expectTimeThresh, storageLimit: storageLimit, instanceCount: instanceCount, timeSpan: timeSpan, timeUnit: timeUnit, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, haCount: haCount, orderSource: orderSource, resourceTags: resourceTags, dbMode: dbMode, minCpu: minCpu, maxCpu: maxCpu, autoPause: autoPause, autoPauseDelay: autoPauseDelay, storagePayMode: storagePayMode, securityGroupIds: securityGroupIds, alarmPolicyIds: alarmPolicyIds, clusterParams: clusterParams, dealMode: dealMode, paramTemplateId: paramTemplateId, slaveZone: slaveZone, instanceInitInfos: instanceInitInfos), region: region, logger: logger, on: eventLoop)
    }

    /// 购买新集群
    @inlinable
    public func createClusters(zone: String, vpcId: String, subnetId: String, dbType: String, dbVersion: String, projectId: Int64? = nil, cpu: Int64? = nil, memory: Int64? = nil, storage: Int64? = nil, clusterName: String? = nil, adminPassword: String? = nil, port: Int64? = nil, payMode: Int64? = nil, count: Int64? = nil, rollbackStrategy: String? = nil, rollbackId: UInt64? = nil, originalClusterId: String? = nil, expectTime: String? = nil, expectTimeThresh: UInt64? = nil, storageLimit: Int64? = nil, instanceCount: Int64? = nil, timeSpan: Int64? = nil, timeUnit: String? = nil, autoRenewFlag: Int64? = nil, autoVoucher: Int64? = nil, haCount: Int64? = nil, orderSource: String? = nil, resourceTags: [Tag]? = nil, dbMode: String? = nil, minCpu: Float? = nil, maxCpu: Float? = nil, autoPause: String? = nil, autoPauseDelay: Int64? = nil, storagePayMode: Int64? = nil, securityGroupIds: [String]? = nil, alarmPolicyIds: [String]? = nil, clusterParams: [ParamItem]? = nil, dealMode: Int64? = nil, paramTemplateId: Int64? = nil, slaveZone: String? = nil, instanceInitInfos: [InstanceInitInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClustersResponse {
        try await self.createClusters(.init(zone: zone, vpcId: vpcId, subnetId: subnetId, dbType: dbType, dbVersion: dbVersion, projectId: projectId, cpu: cpu, memory: memory, storage: storage, clusterName: clusterName, adminPassword: adminPassword, port: port, payMode: payMode, count: count, rollbackStrategy: rollbackStrategy, rollbackId: rollbackId, originalClusterId: originalClusterId, expectTime: expectTime, expectTimeThresh: expectTimeThresh, storageLimit: storageLimit, instanceCount: instanceCount, timeSpan: timeSpan, timeUnit: timeUnit, autoRenewFlag: autoRenewFlag, autoVoucher: autoVoucher, haCount: haCount, orderSource: orderSource, resourceTags: resourceTags, dbMode: dbMode, minCpu: minCpu, maxCpu: maxCpu, autoPause: autoPause, autoPauseDelay: autoPauseDelay, storagePayMode: storagePayMode, securityGroupIds: securityGroupIds, alarmPolicyIds: alarmPolicyIds, clusterParams: clusterParams, dealMode: dealMode, paramTemplateId: paramTemplateId, slaveZone: slaveZone, instanceInitInfos: instanceInitInfos), region: region, logger: logger, on: eventLoop)
    }
}
