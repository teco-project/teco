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

import TecoCore

extension Redis {
    /// CloneInstances请求参数结构体
    public struct CloneInstancesRequest: TCRequestModel {
        /// 当前实例ID。
        public let instanceId: String

        /// 单次克隆实例的数量。包年包月每次购买最大数量为100。按量计费每次购买最大数量为30，每个地域购买数量取值范围为[1,100]。
        public let goodsNum: UInt64

        /// 克隆实例所属的可用区ID。当前所支持的可用区 ID，请参见[地域和可用区](https://cloud.tencent.com/document/product/239/4106) 。
        public let zoneId: UInt64

        /// 付费方式。<ul><li>0：按量计费。</li><li>1：包年包月。</li></ul>
        public let billingMode: Int64

        /// 购买实例时长。<ul><li>单位：月。</li><li>付费方式选择包年包月计费时，取值范围为[1,2,3,4,5,6,7,8,9,10,11,12,24,36,48,60]。</li><li>付费方式选择按量计费时，设置为1。</li></ul>
        public let period: UInt64

        /// 安全组ID。请登录控制台，在<b>安全组</b>页面获取安全组 ID 信息。
        public let securityGroupIdList: [String]

        /// 克隆实例使用的备份ID。请通过接口[DescribeInstanceBackups](https://cloud.tencent.com/document/product/239/20011)获取备份ID。
        public let backupId: String

        /// 配置克隆实例是否支持免密访问。开启 SSL 与外网均不支持免密访问。<ul><li>true：免密实例，</li><li>false：非免密实例。默认为非免密实例。</li></ul>
        public let noAuth: Bool?

        /// 私有网络ID。如果未配置该参数，默认选择基础网络。
        public let vpcId: String?

        /// 私有网络所属子网。基础网络时该参数无需配置。
        public let subnetId: String?

        /// 克隆实例的名称。<br>仅支持长度小于60的中文、英文或者数字，短划线"-"、下划线"_"。</br>
        public let instanceName: String?

        /// 克隆实例的访问密码。<ul><li>当输入参数<b>NoAuth</b>为<b>true</b>时，可不设置该参数。</li><li>当实例为Redis2.8、4.0和5.0时，其密码格式为：8-30个字符，至少包含小写字母、大写字母、数字和字符 ()`~!@#$%^&*-+=_|{}[]:;<>,.?/ 中的2种，不能以"/"开头；</li><li>当实例为CKV 3.2时，其密码格式为：8-30个字符，必须包含字母和数字，且不包含其他字符。</li></ul>
        public let password: String?

        /// 自动续费标识。<ul><li>0：默认状态（手动续费）。</li><li>1：自动续费。</li><li>2：不自动续费，到期自动隔离。</li></ul>
        public let autoRenew: UInt64?

        /// 用户自定义的端口，默认为6379，取值范围[1024,65535]。
        public let vPort: UInt64?

        /// 实例的节点信息。<ul><li>目前支持配置节点的类型（主节点或者副本节点），及其节点的可用区信息。具体信息，请参见[RedisNodeInfo](https://cloud.tencent.com/document/product/239/20022#RedisNodeInfo)。</li><li>单可用区部署可不配置该参数。</li></ul>
        public let nodeSet: [RedisNodeInfo]?

        /// 项目 ID。登录控制台，可在右上角的<b>账号中心</b> > <b>项目管理</b>中查找项目ID。
        public let projectId: Int64?

        /// 克隆实例需绑定的标签。
        public let resourceTags: [ResourceTag]?

        /// 克隆实例需要应用的参数模板ID,请登录 Redis 控制台，在<b>参数模板</b>页面获取。若不配置该参数，则应用默认的参数模板。
        public let templateId: String?

        /// 指定克隆实例的告警策略 ID。请登录控制台，在<b>云监控</b> > <b>告警配置</b> > <b>告警策略</b>页面获取策略 ID 信息。
        public let alarmPolicyList: [String]?

        public init(instanceId: String, goodsNum: UInt64, zoneId: UInt64, billingMode: Int64, period: UInt64, securityGroupIdList: [String], backupId: String, noAuth: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceName: String? = nil, password: String? = nil, autoRenew: UInt64? = nil, vPort: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil, projectId: Int64? = nil, resourceTags: [ResourceTag]? = nil, templateId: String? = nil, alarmPolicyList: [String]? = nil) {
            self.instanceId = instanceId
            self.goodsNum = goodsNum
            self.zoneId = zoneId
            self.billingMode = billingMode
            self.period = period
            self.securityGroupIdList = securityGroupIdList
            self.backupId = backupId
            self.noAuth = noAuth
            self.vpcId = vpcId
            self.subnetId = subnetId
            self.instanceName = instanceName
            self.password = password
            self.autoRenew = autoRenew
            self.vPort = vPort
            self.nodeSet = nodeSet
            self.projectId = projectId
            self.resourceTags = resourceTags
            self.templateId = templateId
            self.alarmPolicyList = alarmPolicyList
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case goodsNum = "GoodsNum"
            case zoneId = "ZoneId"
            case billingMode = "BillingMode"
            case period = "Period"
            case securityGroupIdList = "SecurityGroupIdList"
            case backupId = "BackupId"
            case noAuth = "NoAuth"
            case vpcId = "VpcId"
            case subnetId = "SubnetId"
            case instanceName = "InstanceName"
            case password = "Password"
            case autoRenew = "AutoRenew"
            case vPort = "VPort"
            case nodeSet = "NodeSet"
            case projectId = "ProjectId"
            case resourceTags = "ResourceTags"
            case templateId = "TemplateId"
            case alarmPolicyList = "AlarmPolicyList"
        }
    }

    /// CloneInstances返回参数结构体
    public struct CloneInstancesResponse: TCResponseModel {
        /// 请求任务 ID。
        public let dealId: String

        /// 克隆实例的 ID。
        public let instanceIds: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case instanceIds = "InstanceIds"
            case requestId = "RequestId"
        }
    }

    /// 克隆实例
    ///
    /// 本接口（CloneInstances）可基于当前实例的备份文件克隆一个完整的新实例。
    @inlinable
    public func cloneInstances(_ input: CloneInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneInstancesResponse> {
        self.client.execute(action: "CloneInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 克隆实例
    ///
    /// 本接口（CloneInstances）可基于当前实例的备份文件克隆一个完整的新实例。
    @inlinable
    public func cloneInstances(_ input: CloneInstancesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneInstancesResponse {
        try await self.client.execute(action: "CloneInstances", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 克隆实例
    ///
    /// 本接口（CloneInstances）可基于当前实例的备份文件克隆一个完整的新实例。
    @inlinable
    public func cloneInstances(instanceId: String, goodsNum: UInt64, zoneId: UInt64, billingMode: Int64, period: UInt64, securityGroupIdList: [String], backupId: String, noAuth: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceName: String? = nil, password: String? = nil, autoRenew: UInt64? = nil, vPort: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil, projectId: Int64? = nil, resourceTags: [ResourceTag]? = nil, templateId: String? = nil, alarmPolicyList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloneInstancesResponse> {
        self.cloneInstances(.init(instanceId: instanceId, goodsNum: goodsNum, zoneId: zoneId, billingMode: billingMode, period: period, securityGroupIdList: securityGroupIdList, backupId: backupId, noAuth: noAuth, vpcId: vpcId, subnetId: subnetId, instanceName: instanceName, password: password, autoRenew: autoRenew, vPort: vPort, nodeSet: nodeSet, projectId: projectId, resourceTags: resourceTags, templateId: templateId, alarmPolicyList: alarmPolicyList), region: region, logger: logger, on: eventLoop)
    }

    /// 克隆实例
    ///
    /// 本接口（CloneInstances）可基于当前实例的备份文件克隆一个完整的新实例。
    @inlinable
    public func cloneInstances(instanceId: String, goodsNum: UInt64, zoneId: UInt64, billingMode: Int64, period: UInt64, securityGroupIdList: [String], backupId: String, noAuth: Bool? = nil, vpcId: String? = nil, subnetId: String? = nil, instanceName: String? = nil, password: String? = nil, autoRenew: UInt64? = nil, vPort: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil, projectId: Int64? = nil, resourceTags: [ResourceTag]? = nil, templateId: String? = nil, alarmPolicyList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloneInstancesResponse {
        try await self.cloneInstances(.init(instanceId: instanceId, goodsNum: goodsNum, zoneId: zoneId, billingMode: billingMode, period: period, securityGroupIdList: securityGroupIdList, backupId: backupId, noAuth: noAuth, vpcId: vpcId, subnetId: subnetId, instanceName: instanceName, password: password, autoRenew: autoRenew, vPort: vPort, nodeSet: nodeSet, projectId: projectId, resourceTags: resourceTags, templateId: templateId, alarmPolicyList: alarmPolicyList), region: region, logger: logger, on: eventLoop)
    }
}
