//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Thpc {
    /// AddNodes请求参数结构体
    public struct AddNodesRequest: TCRequest {
        /// 集群中实例所在的位置。
        public let placement: Placement

        /// 集群ID。
        public let clusterId: String

        /// 私有网络相关信息配置。
        public let virtualPrivateCloud: VirtualPrivateCloud

        /// 添加节点数量。
        public let count: Int64

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前仅支持公有镜像和特定自定义镜像。
        public let imageId: String?

        /// 节点[计费类型](https://cloud.tencent.com/document/product/213/2180)。
        ///
        /// - PREPAID：预付费，即包年包月
        /// - POSTPAID_BY_HOUR：按小时后付费
        /// - SPOTPAID：竞价付费
        ///
        /// 默认值：POSTPAID_BY_HOUR。
        public let instanceChargeType: String?

        /// 预付费模式，即包年包月相关参数设置。通过该参数可以指定包年包月节点的购买时长、是否设置自动续费等属性。若指定节点的付费模式为预付费则该参数必传。
        public let instanceChargePrepaid: InstanceChargePrepaid?

        /// 节点机型。不同实例机型指定了不同的资源规格。
        ///
        /// - 具体取值可通过调用接口[DescribeInstanceTypeConfigs](https://cloud.tencent.com/document/api/213/15749)来获得最新的规格表或参见[实例规格](https://cloud.tencent.com/document/product/213/11518)描述。
        public let instanceType: String?

        /// 节点系统盘配置信息。若不指定该参数，则按照系统默认值进行分配。
        public let systemDisk: SystemDisk?

        /// 节点数据盘配置信息。若不指定该参数，则默认不购买数据盘。支持购买的时候指定21块数据盘，其中最多包含1块LOCAL_BASIC数据盘或者LOCAL_SSD数据盘，最多包含20块CLOUD_BASIC数据盘、CLOUD_PREMIUM数据盘或者CLOUD_SSD数据盘。
        public let dataDisks: [DataDisk]?

        /// 公网带宽相关信息设置。若不指定该参数，则默认公网带宽为0Mbps。
        public let internetAccessible: InternetAccessible?

        /// 节点显示名称。
        /// 不指定节点显示名称则默认显示‘未命名’。
        /// 最多支持60个字符。
        public let instanceName: String?

        /// 集群登录设置。
        public let loginSettings: LoginSettings?

        /// 集群中实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 队列名称。不指定则为默认队列。
        /// - SLURM默认队列为：compute。
        /// - SGE默认队列为：all.q。
        public let queueName: String?

        /// 添加节点角色。默认值：Compute
        ///
        /// - Compute：计算节点。
        /// - Login：登录节点。
        public let nodeRole: String?

        /// 是否只预检此次请求。
        /// true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        /// 如果检查不通过，则返回对应错误码；
        /// 如果检查通过，则返回RequestId.
        /// false（默认）：发送正常请求，通过检查后直接创建实例
        public let dryRun: Bool?

        /// 添加节点类型。默认取值：STATIC。
        /// - STATIC：静态节点，不会参与弹性伸缩流程。
        /// - DYNAMIC：弹性节点，会被弹性缩容的节点。管控节点和登录节点不支持此参数。
        public let nodeType: String?

        /// 实例所属项目ID。该参数可以通过调用 [DescribeProject](https://cloud.tencent.com/document/api/651/78725) 的返回值中的 projectId 字段来获取。不填为默认项目。
        public let projectId: Int64?

        public init(placement: Placement, clusterId: String, virtualPrivateCloud: VirtualPrivateCloud, count: Int64, imageId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, queueName: String? = nil, nodeRole: String? = nil, dryRun: Bool? = nil, nodeType: String? = nil, projectId: Int64? = nil) {
            self.placement = placement
            self.clusterId = clusterId
            self.virtualPrivateCloud = virtualPrivateCloud
            self.count = count
            self.imageId = imageId
            self.instanceChargeType = instanceChargeType
            self.instanceChargePrepaid = instanceChargePrepaid
            self.instanceType = instanceType
            self.systemDisk = systemDisk
            self.dataDisks = dataDisks
            self.internetAccessible = internetAccessible
            self.instanceName = instanceName
            self.loginSettings = loginSettings
            self.securityGroupIds = securityGroupIds
            self.clientToken = clientToken
            self.queueName = queueName
            self.nodeRole = nodeRole
            self.dryRun = dryRun
            self.nodeType = nodeType
            self.projectId = projectId
        }

        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case clusterId = "ClusterId"
            case virtualPrivateCloud = "VirtualPrivateCloud"
            case count = "Count"
            case imageId = "ImageId"
            case instanceChargeType = "InstanceChargeType"
            case instanceChargePrepaid = "InstanceChargePrepaid"
            case instanceType = "InstanceType"
            case systemDisk = "SystemDisk"
            case dataDisks = "DataDisks"
            case internetAccessible = "InternetAccessible"
            case instanceName = "InstanceName"
            case loginSettings = "LoginSettings"
            case securityGroupIds = "SecurityGroupIds"
            case clientToken = "ClientToken"
            case queueName = "QueueName"
            case nodeRole = "NodeRole"
            case dryRun = "DryRun"
            case nodeType = "NodeType"
            case projectId = "ProjectId"
        }
    }

    /// AddNodes返回参数结构体
    public struct AddNodesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加节点
    ///
    /// 本接口(AddNodes)用于添加一个或者多个计算节点或者登录节点到指定集群。
    @inlinable @discardableResult
    public func addNodes(_ input: AddNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddNodesResponse> {
        self.client.execute(action: "AddNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加节点
    ///
    /// 本接口(AddNodes)用于添加一个或者多个计算节点或者登录节点到指定集群。
    @inlinable @discardableResult
    public func addNodes(_ input: AddNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddNodesResponse {
        try await self.client.execute(action: "AddNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加节点
    ///
    /// 本接口(AddNodes)用于添加一个或者多个计算节点或者登录节点到指定集群。
    @inlinable @discardableResult
    public func addNodes(placement: Placement, clusterId: String, virtualPrivateCloud: VirtualPrivateCloud, count: Int64, imageId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, queueName: String? = nil, nodeRole: String? = nil, dryRun: Bool? = nil, nodeType: String? = nil, projectId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddNodesResponse> {
        self.addNodes(.init(placement: placement, clusterId: clusterId, virtualPrivateCloud: virtualPrivateCloud, count: count, imageId: imageId, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, instanceType: instanceType, systemDisk: systemDisk, dataDisks: dataDisks, internetAccessible: internetAccessible, instanceName: instanceName, loginSettings: loginSettings, securityGroupIds: securityGroupIds, clientToken: clientToken, queueName: queueName, nodeRole: nodeRole, dryRun: dryRun, nodeType: nodeType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }

    /// 添加节点
    ///
    /// 本接口(AddNodes)用于添加一个或者多个计算节点或者登录节点到指定集群。
    @inlinable @discardableResult
    public func addNodes(placement: Placement, clusterId: String, virtualPrivateCloud: VirtualPrivateCloud, count: Int64, imageId: String? = nil, instanceChargeType: String? = nil, instanceChargePrepaid: InstanceChargePrepaid? = nil, instanceType: String? = nil, systemDisk: SystemDisk? = nil, dataDisks: [DataDisk]? = nil, internetAccessible: InternetAccessible? = nil, instanceName: String? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, queueName: String? = nil, nodeRole: String? = nil, dryRun: Bool? = nil, nodeType: String? = nil, projectId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddNodesResponse {
        try await self.addNodes(.init(placement: placement, clusterId: clusterId, virtualPrivateCloud: virtualPrivateCloud, count: count, imageId: imageId, instanceChargeType: instanceChargeType, instanceChargePrepaid: instanceChargePrepaid, instanceType: instanceType, systemDisk: systemDisk, dataDisks: dataDisks, internetAccessible: internetAccessible, instanceName: instanceName, loginSettings: loginSettings, securityGroupIds: securityGroupIds, clientToken: clientToken, queueName: queueName, nodeRole: nodeRole, dryRun: dryRun, nodeType: nodeType, projectId: projectId), region: region, logger: logger, on: eventLoop)
    }
}
