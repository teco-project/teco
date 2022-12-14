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

extension Emr {
    /// ScaleOutInstance请求参数结构体
    public struct ScaleOutInstanceRequest: TCRequestModel {
        /// 扩容的时间单位。取值范围：
        /// <li>s：表示秒。PayMode取值为0时，TimeUnit只能取值为s。</li>
        /// <li>m：表示月份。PayMode取值为1时，TimeUnit只能取值为m。</li>
        public let timeUnit: String

        /// 扩容的时长。结合TimeUnit一起使用。
        /// <li>TimeUnit为s时，该参数只能填写3600，表示按量计费实例。</li>
        /// <li>TimeUnit为m时，该参数填写的数字表示包年包月实例的购买时长，如1表示购买一个月</li>
        public let timeSpan: UInt64

        /// 实例ID。
        public let instanceId: String

        /// 实例计费模式。取值范围：
        /// <li>0：表示按量计费。</li>
        /// <li>1：表示包年包月。</li>
        public let payMode: UInt64

        /// 客户端Token。
        public let clientToken: String?

        /// 引导操作脚本设置。
        public let preExecutedFileSettings: [PreExecuteFileSettings]?

        /// 扩容的Task节点数量。
        public let taskCount: UInt64?

        /// 扩容的Core节点数量。
        public let coreCount: UInt64?

        /// 扩容时不需要安装的进程。
        public let unNecessaryNodeList: [UInt64]?

        /// 扩容的Router节点数量。
        public let routerCount: UInt64?

        /// 部署的服务。
        /// <li>SoftDeployInfo和ServiceNodeInfo是同组参数，和UnNecessaryNodeList参数互斥。</li>
        /// <li>建议使用SoftDeployInfo和ServiceNodeInfo组合。</li>
        public let softDeployInfo: [UInt64]?

        /// 启动的进程。
        public let serviceNodeInfo: [UInt64]?

        /// 分散置放群组ID列表，当前仅支持指定一个。
        public let disasterRecoverGroupIds: [String]?

        /// 扩容节点绑定标签列表。
        public let tags: [Tag]?

        /// 扩容所选资源类型，可选范围为"host","pod"，host为普通的CVM资源，Pod为TKE集群或EKS集群提供的资源
        public let hardwareResourceType: String?

        /// 使用Pod资源扩容时，指定的Pod规格以及来源等信息
        public let podSpec: PodSpec?

        /// 使用clickhouse集群扩容时，选择的机器分组名称
        public let clickHouseClusterName: String?

        /// 使用clickhouse集群扩容时，选择的机器分组类型。new为新增，old为选择旧分组
        public let clickHouseClusterType: String?

        /// 规则扩容指定 yarn node label
        public let yarnNodeLabel: String?

        /// POD自定义权限和自定义参数
        public let podParameter: PodParameter?

        /// 扩容的Master节点的数量。
        /// 使用clickhouse集群扩容时，该参数不生效。
        /// 使用kafka集群扩容时，该参数不生效。
        /// 当HardwareResourceType=POD时，该参数不生效。
        public let masterCount: UInt64?

        /// 扩容后是否启动服务，true：启动，false：不启动
        public let startServiceAfterScaleOut: String?

        /// 可用区，默认是集群的主可用区
        public let zoneId: Int64?

        /// 子网，默认是集群创建时的子网
        public let subnetId: String?

        /// 预设配置组
        public let scaleOutServiceConfAssign: String?

        /// 0表示关闭自动续费，1表示开启自动续费
        public let autoRenew: Int64?

        public init(timeUnit: String, timeSpan: UInt64, instanceId: String, payMode: UInt64, clientToken: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, taskCount: UInt64? = nil, coreCount: UInt64? = nil, unNecessaryNodeList: [UInt64]? = nil, routerCount: UInt64? = nil, softDeployInfo: [UInt64]? = nil, serviceNodeInfo: [UInt64]? = nil, disasterRecoverGroupIds: [String]? = nil, tags: [Tag]? = nil, hardwareResourceType: String? = nil, podSpec: PodSpec? = nil, clickHouseClusterName: String? = nil, clickHouseClusterType: String? = nil, yarnNodeLabel: String? = nil, podParameter: PodParameter? = nil, masterCount: UInt64? = nil, startServiceAfterScaleOut: String? = nil, zoneId: Int64? = nil, subnetId: String? = nil, scaleOutServiceConfAssign: String? = nil, autoRenew: Int64? = nil) {
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
            self.instanceId = instanceId
            self.payMode = payMode
            self.clientToken = clientToken
            self.preExecutedFileSettings = preExecutedFileSettings
            self.taskCount = taskCount
            self.coreCount = coreCount
            self.unNecessaryNodeList = unNecessaryNodeList
            self.routerCount = routerCount
            self.softDeployInfo = softDeployInfo
            self.serviceNodeInfo = serviceNodeInfo
            self.disasterRecoverGroupIds = disasterRecoverGroupIds
            self.tags = tags
            self.hardwareResourceType = hardwareResourceType
            self.podSpec = podSpec
            self.clickHouseClusterName = clickHouseClusterName
            self.clickHouseClusterType = clickHouseClusterType
            self.yarnNodeLabel = yarnNodeLabel
            self.podParameter = podParameter
            self.masterCount = masterCount
            self.startServiceAfterScaleOut = startServiceAfterScaleOut
            self.zoneId = zoneId
            self.subnetId = subnetId
            self.scaleOutServiceConfAssign = scaleOutServiceConfAssign
            self.autoRenew = autoRenew
        }

        enum CodingKeys: String, CodingKey {
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
            case instanceId = "InstanceId"
            case payMode = "PayMode"
            case clientToken = "ClientToken"
            case preExecutedFileSettings = "PreExecutedFileSettings"
            case taskCount = "TaskCount"
            case coreCount = "CoreCount"
            case unNecessaryNodeList = "UnNecessaryNodeList"
            case routerCount = "RouterCount"
            case softDeployInfo = "SoftDeployInfo"
            case serviceNodeInfo = "ServiceNodeInfo"
            case disasterRecoverGroupIds = "DisasterRecoverGroupIds"
            case tags = "Tags"
            case hardwareResourceType = "HardwareResourceType"
            case podSpec = "PodSpec"
            case clickHouseClusterName = "ClickHouseClusterName"
            case clickHouseClusterType = "ClickHouseClusterType"
            case yarnNodeLabel = "YarnNodeLabel"
            case podParameter = "PodParameter"
            case masterCount = "MasterCount"
            case startServiceAfterScaleOut = "StartServiceAfterScaleOut"
            case zoneId = "ZoneId"
            case subnetId = "SubnetId"
            case scaleOutServiceConfAssign = "ScaleOutServiceConfAssign"
            case autoRenew = "AutoRenew"
        }
    }

    /// ScaleOutInstance返回参数结构体
    public struct ScaleOutInstanceResponse: TCResponseModel {
        /// 实例ID。
        public let instanceId: String

        /// 订单号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dealNames: [String]?

        /// 客户端Token。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clientToken: String?

        /// 扩容流程ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let flowId: Int64?

        /// 大订单号。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let billId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case dealNames = "DealNames"
            case clientToken = "ClientToken"
            case flowId = "FlowId"
            case billId = "BillId"
            case requestId = "RequestId"
        }
    }

    /// 实例扩容
    ///
    /// 扩容节点
    @inlinable
    public func scaleOutInstance(_ input: ScaleOutInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ScaleOutInstanceResponse > {
        self.client.execute(action: "ScaleOutInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 实例扩容
    ///
    /// 扩容节点
    @inlinable
    public func scaleOutInstance(_ input: ScaleOutInstanceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutInstanceResponse {
        try await self.client.execute(action: "ScaleOutInstance", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 实例扩容
    ///
    /// 扩容节点
    @inlinable
    public func scaleOutInstance(timeUnit: String, timeSpan: UInt64, instanceId: String, payMode: UInt64, clientToken: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, taskCount: UInt64? = nil, coreCount: UInt64? = nil, unNecessaryNodeList: [UInt64]? = nil, routerCount: UInt64? = nil, softDeployInfo: [UInt64]? = nil, serviceNodeInfo: [UInt64]? = nil, disasterRecoverGroupIds: [String]? = nil, tags: [Tag]? = nil, hardwareResourceType: String? = nil, podSpec: PodSpec? = nil, clickHouseClusterName: String? = nil, clickHouseClusterType: String? = nil, yarnNodeLabel: String? = nil, podParameter: PodParameter? = nil, masterCount: UInt64? = nil, startServiceAfterScaleOut: String? = nil, zoneId: Int64? = nil, subnetId: String? = nil, scaleOutServiceConfAssign: String? = nil, autoRenew: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ScaleOutInstanceResponse > {
        self.scaleOutInstance(ScaleOutInstanceRequest(timeUnit: timeUnit, timeSpan: timeSpan, instanceId: instanceId, payMode: payMode, clientToken: clientToken, preExecutedFileSettings: preExecutedFileSettings, taskCount: taskCount, coreCount: coreCount, unNecessaryNodeList: unNecessaryNodeList, routerCount: routerCount, softDeployInfo: softDeployInfo, serviceNodeInfo: serviceNodeInfo, disasterRecoverGroupIds: disasterRecoverGroupIds, tags: tags, hardwareResourceType: hardwareResourceType, podSpec: podSpec, clickHouseClusterName: clickHouseClusterName, clickHouseClusterType: clickHouseClusterType, yarnNodeLabel: yarnNodeLabel, podParameter: podParameter, masterCount: masterCount, startServiceAfterScaleOut: startServiceAfterScaleOut, zoneId: zoneId, subnetId: subnetId, scaleOutServiceConfAssign: scaleOutServiceConfAssign, autoRenew: autoRenew), logger: logger, on: eventLoop)
    }

    /// 实例扩容
    ///
    /// 扩容节点
    @inlinable
    public func scaleOutInstance(timeUnit: String, timeSpan: UInt64, instanceId: String, payMode: UInt64, clientToken: String? = nil, preExecutedFileSettings: [PreExecuteFileSettings]? = nil, taskCount: UInt64? = nil, coreCount: UInt64? = nil, unNecessaryNodeList: [UInt64]? = nil, routerCount: UInt64? = nil, softDeployInfo: [UInt64]? = nil, serviceNodeInfo: [UInt64]? = nil, disasterRecoverGroupIds: [String]? = nil, tags: [Tag]? = nil, hardwareResourceType: String? = nil, podSpec: PodSpec? = nil, clickHouseClusterName: String? = nil, clickHouseClusterType: String? = nil, yarnNodeLabel: String? = nil, podParameter: PodParameter? = nil, masterCount: UInt64? = nil, startServiceAfterScaleOut: String? = nil, zoneId: Int64? = nil, subnetId: String? = nil, scaleOutServiceConfAssign: String? = nil, autoRenew: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutInstanceResponse {
        try await self.scaleOutInstance(ScaleOutInstanceRequest(timeUnit: timeUnit, timeSpan: timeSpan, instanceId: instanceId, payMode: payMode, clientToken: clientToken, preExecutedFileSettings: preExecutedFileSettings, taskCount: taskCount, coreCount: coreCount, unNecessaryNodeList: unNecessaryNodeList, routerCount: routerCount, softDeployInfo: softDeployInfo, serviceNodeInfo: serviceNodeInfo, disasterRecoverGroupIds: disasterRecoverGroupIds, tags: tags, hardwareResourceType: hardwareResourceType, podSpec: podSpec, clickHouseClusterName: clickHouseClusterName, clickHouseClusterType: clickHouseClusterType, yarnNodeLabel: yarnNodeLabel, podParameter: podParameter, masterCount: masterCount, startServiceAfterScaleOut: startServiceAfterScaleOut, zoneId: zoneId, subnetId: subnetId, scaleOutServiceConfAssign: scaleOutServiceConfAssign, autoRenew: autoRenew), logger: logger, on: eventLoop)
    }
}
