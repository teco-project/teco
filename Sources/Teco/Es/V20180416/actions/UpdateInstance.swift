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

extension Es {
    /// UpdateInstance请求参数结构体
    public struct UpdateInstanceRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 实例名称（1-50 个英文、汉字、数字、连接线-或下划线_）
        public let instanceName: String?

        /// 已废弃请使用NodeInfoList
        /// 节点个数（2-50个）
        public let nodeNum: UInt64?

        /// ES配置项（JSON格式字符串）
        public let esConfig: String?

        /// 默认用户elastic的密码（8到16位，至少包括两项（[a-z,A-Z],[0-9]和[-!@#$%&^*+=_:;,.?]的特殊符号）
        public let password: String?

        /// 可视化组件（Kibana、Cerebro）的公网访问策略
        public let esAcl: EsAcl?

        /// 已废弃请使用NodeInfoList
        /// 磁盘大小（单位GB）
        public let diskSize: UInt64?

        /// 已废弃请使用NodeInfoList
        /// 节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        public let nodeType: String?

        /// 已废弃请使用NodeInfoList
        /// 专用主节点个数（只支持3个或5个）
        public let masterNodeNum: UInt64?

        /// 已废弃请使用NodeInfoList
        /// 专用主节点规格<li>ES.S1.SMALL2：1核2G</li><li>ES.S1.MEDIUM4：2核4G</li><li>ES.S1.MEDIUM8：2核8G</li><li>ES.S1.LARGE16：4核16G</li><li>ES.S1.2XLARGE32：8核32G</li><li>ES.S1.4XLARGE32：16核32G</li><li>ES.S1.4XLARGE64：16核64G</li>
        public let masterNodeType: String?

        /// 已废弃请使用NodeInfoList
        /// 专用主节点磁盘大小（单位GB系统默认配置为50GB,暂不支持自定义）
        public let masterNodeDiskSize: UInt64?

        /// 更新配置时是否强制重启<li>true强制重启</li><li>false不强制重启</li>当前仅更新EsConfig时需要设置，默认值为false
        public let forceRestart: Bool?

        /// COS自动备份信息
        public let cosBackup: CosBackup?

        /// 节点信息列表，可以只传递要更新的节点及其对应的规格信息。支持的操作包括<li>修改一种节点的个数</li><li>修改一种节点的节点规格及磁盘大小</li><li>增加一种节点类型（需要同时指定该节点的类型，个数，规格，磁盘等信息）</li>上述操作一次只能进行一种，且磁盘类型不支持修改
        public let nodeInfoList: [NodeInfo]?

        /// ES集群公网访问状态
        /// OPEN 开启
        /// CLOSE 关闭
        public let publicAccess: String?

        /// 公网访问控制列表
        public let esPublicAcl: EsPublicAcl?

        /// Kibana公网访问状态
        /// OPEN 开启
        /// CLOSE 关闭
        public let kibanaPublicAccess: String?

        /// Kibana内网访问状态
        /// OPEN 开启
        /// CLOSE 关闭
        public let kibanaPrivateAccess: String?

        /// ES 6.8及以上版本基础版开启或关闭用户认证
        public let basicSecurityType: Int64?

        /// Kibana内网端口
        public let kibanaPrivatePort: UInt64?

        /// 0: 蓝绿变更方式扩容，集群不重启 （默认） 1: 磁盘解挂载扩容，集群滚动重启
        public let scaleType: Int64?

        /// 多可用区部署
        public let multiZoneInfo: [ZoneDetail]?

        /// 场景化模板类型 -1：不启用 1：通用 2：日志 3：搜索
        public let sceneType: Int64?

        /// Kibana配置项（JSON格式字符串）
        public let kibanaConfig: String?

        /// 可视化节点配置
        public let webNodeTypeInfo: WebNodeTypeInfo?

        /// 切换到新网络架构
        public let switchPrivateLink: String?

        /// 启用Cerebro
        public let enableCerebro: Bool?

        /// Cerebro公网访问状态
        /// OPEN 开启
        /// CLOSE 关闭
        public let cerebroPublicAccess: String?

        /// Cerebro内网访问状态
        /// OPEN 开启
        /// CLOSE 关闭
        public let cerebroPrivateAccess: String?

        /// 新增或修改的配置组信息
        public let esConfigSet: EsConfigSetInfo?

        /// 可维护时间段
        public let operationDuration: OperationDurationUpdated?

        /// 是否开启Alerting 外网告警输出：
        /// OPEN 开启
        /// CLOSE 关闭
        public let kibanaAlteringPublicAccess: String?

        public init(instanceId: String, instanceName: String? = nil, nodeNum: UInt64? = nil, esConfig: String? = nil, password: String? = nil, esAcl: EsAcl? = nil, diskSize: UInt64? = nil, nodeType: String? = nil, masterNodeNum: UInt64? = nil, masterNodeType: String? = nil, masterNodeDiskSize: UInt64? = nil, forceRestart: Bool? = nil, cosBackup: CosBackup? = nil, nodeInfoList: [NodeInfo]? = nil, publicAccess: String? = nil, esPublicAcl: EsPublicAcl? = nil, kibanaPublicAccess: String? = nil, kibanaPrivateAccess: String? = nil, basicSecurityType: Int64? = nil, kibanaPrivatePort: UInt64? = nil, scaleType: Int64? = nil, multiZoneInfo: [ZoneDetail]? = nil, sceneType: Int64? = nil, kibanaConfig: String? = nil, webNodeTypeInfo: WebNodeTypeInfo? = nil, switchPrivateLink: String? = nil, enableCerebro: Bool? = nil, cerebroPublicAccess: String? = nil, cerebroPrivateAccess: String? = nil, esConfigSet: EsConfigSetInfo? = nil, operationDuration: OperationDurationUpdated? = nil, kibanaAlteringPublicAccess: String? = nil) {
            self.instanceId = instanceId
            self.instanceName = instanceName
            self.nodeNum = nodeNum
            self.esConfig = esConfig
            self.password = password
            self.esAcl = esAcl
            self.diskSize = diskSize
            self.nodeType = nodeType
            self.masterNodeNum = masterNodeNum
            self.masterNodeType = masterNodeType
            self.masterNodeDiskSize = masterNodeDiskSize
            self.forceRestart = forceRestart
            self.cosBackup = cosBackup
            self.nodeInfoList = nodeInfoList
            self.publicAccess = publicAccess
            self.esPublicAcl = esPublicAcl
            self.kibanaPublicAccess = kibanaPublicAccess
            self.kibanaPrivateAccess = kibanaPrivateAccess
            self.basicSecurityType = basicSecurityType
            self.kibanaPrivatePort = kibanaPrivatePort
            self.scaleType = scaleType
            self.multiZoneInfo = multiZoneInfo
            self.sceneType = sceneType
            self.kibanaConfig = kibanaConfig
            self.webNodeTypeInfo = webNodeTypeInfo
            self.switchPrivateLink = switchPrivateLink
            self.enableCerebro = enableCerebro
            self.cerebroPublicAccess = cerebroPublicAccess
            self.cerebroPrivateAccess = cerebroPrivateAccess
            self.esConfigSet = esConfigSet
            self.operationDuration = operationDuration
            self.kibanaAlteringPublicAccess = kibanaAlteringPublicAccess
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case instanceName = "InstanceName"
            case nodeNum = "NodeNum"
            case esConfig = "EsConfig"
            case password = "Password"
            case esAcl = "EsAcl"
            case diskSize = "DiskSize"
            case nodeType = "NodeType"
            case masterNodeNum = "MasterNodeNum"
            case masterNodeType = "MasterNodeType"
            case masterNodeDiskSize = "MasterNodeDiskSize"
            case forceRestart = "ForceRestart"
            case cosBackup = "CosBackup"
            case nodeInfoList = "NodeInfoList"
            case publicAccess = "PublicAccess"
            case esPublicAcl = "EsPublicAcl"
            case kibanaPublicAccess = "KibanaPublicAccess"
            case kibanaPrivateAccess = "KibanaPrivateAccess"
            case basicSecurityType = "BasicSecurityType"
            case kibanaPrivatePort = "KibanaPrivatePort"
            case scaleType = "ScaleType"
            case multiZoneInfo = "MultiZoneInfo"
            case sceneType = "SceneType"
            case kibanaConfig = "KibanaConfig"
            case webNodeTypeInfo = "WebNodeTypeInfo"
            case switchPrivateLink = "SwitchPrivateLink"
            case enableCerebro = "EnableCerebro"
            case cerebroPublicAccess = "CerebroPublicAccess"
            case cerebroPrivateAccess = "CerebroPrivateAccess"
            case esConfigSet = "EsConfigSet"
            case operationDuration = "OperationDuration"
            case kibanaAlteringPublicAccess = "KibanaAlteringPublicAccess"
        }
    }

    /// UpdateInstance返回参数结构体
    public struct UpdateInstanceResponse: TCResponseModel {
        /// 订单号
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealName = "DealName"
            case requestId = "RequestId"
        }
    }

    /// 更新ES集群实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
    /// - EsConfig：修改集群配置
    /// - Password：修改默认用户elastic的密码
    /// - EsAcl：修改访问控制列表
    /// - CosBackUp: 设置集群COS自动备份信息
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateInstance(_ input: UpdateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInstanceResponse> {
        self.client.execute(action: "UpdateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新ES集群实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
    /// - EsConfig：修改集群配置
    /// - Password：修改默认用户elastic的密码
    /// - EsAcl：修改访问控制列表
    /// - CosBackUp: 设置集群COS自动备份信息
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateInstance(_ input: UpdateInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInstanceResponse {
        try await self.client.execute(action: "UpdateInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新ES集群实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
    /// - EsConfig：修改集群配置
    /// - Password：修改默认用户elastic的密码
    /// - EsAcl：修改访问控制列表
    /// - CosBackUp: 设置集群COS自动备份信息
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateInstance(instanceId: String, instanceName: String? = nil, nodeNum: UInt64? = nil, esConfig: String? = nil, password: String? = nil, esAcl: EsAcl? = nil, diskSize: UInt64? = nil, nodeType: String? = nil, masterNodeNum: UInt64? = nil, masterNodeType: String? = nil, masterNodeDiskSize: UInt64? = nil, forceRestart: Bool? = nil, cosBackup: CosBackup? = nil, nodeInfoList: [NodeInfo]? = nil, publicAccess: String? = nil, esPublicAcl: EsPublicAcl? = nil, kibanaPublicAccess: String? = nil, kibanaPrivateAccess: String? = nil, basicSecurityType: Int64? = nil, kibanaPrivatePort: UInt64? = nil, scaleType: Int64? = nil, multiZoneInfo: [ZoneDetail]? = nil, sceneType: Int64? = nil, kibanaConfig: String? = nil, webNodeTypeInfo: WebNodeTypeInfo? = nil, switchPrivateLink: String? = nil, enableCerebro: Bool? = nil, cerebroPublicAccess: String? = nil, cerebroPrivateAccess: String? = nil, esConfigSet: EsConfigSetInfo? = nil, operationDuration: OperationDurationUpdated? = nil, kibanaAlteringPublicAccess: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateInstanceResponse> {
        self.updateInstance(.init(instanceId: instanceId, instanceName: instanceName, nodeNum: nodeNum, esConfig: esConfig, password: password, esAcl: esAcl, diskSize: diskSize, nodeType: nodeType, masterNodeNum: masterNodeNum, masterNodeType: masterNodeType, masterNodeDiskSize: masterNodeDiskSize, forceRestart: forceRestart, cosBackup: cosBackup, nodeInfoList: nodeInfoList, publicAccess: publicAccess, esPublicAcl: esPublicAcl, kibanaPublicAccess: kibanaPublicAccess, kibanaPrivateAccess: kibanaPrivateAccess, basicSecurityType: basicSecurityType, kibanaPrivatePort: kibanaPrivatePort, scaleType: scaleType, multiZoneInfo: multiZoneInfo, sceneType: sceneType, kibanaConfig: kibanaConfig, webNodeTypeInfo: webNodeTypeInfo, switchPrivateLink: switchPrivateLink, enableCerebro: enableCerebro, cerebroPublicAccess: cerebroPublicAccess, cerebroPrivateAccess: cerebroPrivateAccess, esConfigSet: esConfigSet, operationDuration: operationDuration, kibanaAlteringPublicAccess: kibanaAlteringPublicAccess), region: region, logger: logger, on: eventLoop)
    }

    /// 更新ES集群实例
    ///
    /// 对集群进行节点规格变更，修改实例名称，修改配置，重置密码， 添加Kibana黑白名单等操作。参数中InstanceId为必传参数，ForceRestart为选填参数，剩余参数传递组合及含义如下：
    /// - InstanceName：修改实例名称(仅用于标识实例)
    /// - NodeInfoList: 修改节点配置（节点横向扩缩容，纵向扩缩容，增加主节点，增加冷节点等）
    /// - EsConfig：修改集群配置
    /// - Password：修改默认用户elastic的密码
    /// - EsAcl：修改访问控制列表
    /// - CosBackUp: 设置集群COS自动备份信息
    /// 以上参数组合只能传递一种，多传或少传均会导致请求失败
    @inlinable
    public func updateInstance(instanceId: String, instanceName: String? = nil, nodeNum: UInt64? = nil, esConfig: String? = nil, password: String? = nil, esAcl: EsAcl? = nil, diskSize: UInt64? = nil, nodeType: String? = nil, masterNodeNum: UInt64? = nil, masterNodeType: String? = nil, masterNodeDiskSize: UInt64? = nil, forceRestart: Bool? = nil, cosBackup: CosBackup? = nil, nodeInfoList: [NodeInfo]? = nil, publicAccess: String? = nil, esPublicAcl: EsPublicAcl? = nil, kibanaPublicAccess: String? = nil, kibanaPrivateAccess: String? = nil, basicSecurityType: Int64? = nil, kibanaPrivatePort: UInt64? = nil, scaleType: Int64? = nil, multiZoneInfo: [ZoneDetail]? = nil, sceneType: Int64? = nil, kibanaConfig: String? = nil, webNodeTypeInfo: WebNodeTypeInfo? = nil, switchPrivateLink: String? = nil, enableCerebro: Bool? = nil, cerebroPublicAccess: String? = nil, cerebroPrivateAccess: String? = nil, esConfigSet: EsConfigSetInfo? = nil, operationDuration: OperationDurationUpdated? = nil, kibanaAlteringPublicAccess: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateInstanceResponse {
        try await self.updateInstance(.init(instanceId: instanceId, instanceName: instanceName, nodeNum: nodeNum, esConfig: esConfig, password: password, esAcl: esAcl, diskSize: diskSize, nodeType: nodeType, masterNodeNum: masterNodeNum, masterNodeType: masterNodeType, masterNodeDiskSize: masterNodeDiskSize, forceRestart: forceRestart, cosBackup: cosBackup, nodeInfoList: nodeInfoList, publicAccess: publicAccess, esPublicAcl: esPublicAcl, kibanaPublicAccess: kibanaPublicAccess, kibanaPrivateAccess: kibanaPrivateAccess, basicSecurityType: basicSecurityType, kibanaPrivatePort: kibanaPrivatePort, scaleType: scaleType, multiZoneInfo: multiZoneInfo, sceneType: sceneType, kibanaConfig: kibanaConfig, webNodeTypeInfo: webNodeTypeInfo, switchPrivateLink: switchPrivateLink, enableCerebro: enableCerebro, cerebroPublicAccess: cerebroPublicAccess, cerebroPrivateAccess: cerebroPrivateAccess, esConfigSet: esConfigSet, operationDuration: operationDuration, kibanaAlteringPublicAccess: kibanaAlteringPublicAccess), region: region, logger: logger, on: eventLoop)
    }
}
