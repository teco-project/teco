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
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequestModel {
        /// 集群中实例所在的位置。
        public let placement: Placement

        /// 指定管理节点。
        public let managerNode: ManagerNode?

        /// 指定管理节点的数量。默认取值：1。取值范围：1～2。
        public let managerNodeCount: Int64?

        /// 指定计算节点。
        public let computeNode: ComputeNode?

        /// 指定计算节点的数量。默认取值：0。
        public let computeNodeCount: Int64?

        /// 调度器类型。默认取值：SLURM。
        /// - SGE：SGE调度器。
        /// - SLURM：SLURM调度器。
        public let schedulerType: String?

        /// 指定有效的[镜像](https://cloud.tencent.com/document/product/213/4940)ID，格式形如`img-xxx`。目前支持部分公有镜像和自定义镜像。
        public let imageId: String?

        /// 私有网络相关信息配置。
        public let virtualPrivateCloud: VirtualPrivateCloud?

        /// 集群登录设置。
        public let loginSettings: LoginSettings?

        /// 集群中实例所属安全组。该参数可以通过调用 [DescribeSecurityGroups](https://cloud.tencent.com/document/api/215/15808) 的返回值中的sgId字段来获取。若不指定该参数，则绑定默认安全组。
        public let securityGroupIds: [String]?

        /// 用于保证请求幂等性的字符串。该字符串由客户生成，需保证不同请求之间唯一，最大值不超过64个ASCII字符。若不指定该参数，则无法保证请求的幂等性。
        public let clientToken: String?

        /// 是否只预检此次请求。
        /// true：发送检查请求，不会创建实例。检查项包括是否填写了必需参数，请求格式，业务限制和云服务器库存。
        /// 如果检查不通过，则返回对应错误码；
        /// 如果检查通过，则返回RequestId.
        /// false（默认）：发送正常请求，通过检查后直接创建实例
        public let dryRun: Bool?

        /// 域名字服务类型。默认取值：NIS。
        /// - NIS：NIS域名字服务。
        public let accountType: String?

        /// 集群显示名称。
        public let clusterName: String?

        /// 集群存储选项
        public let storageOption: StorageOption?

        /// 指定登录节点。
        public let loginNode: LoginNode?

        /// 指定登录节点的数量。默认取值：0。取值范围：0～10。
        public let loginNodeCount: Int64?

        /// 创建集群时同时绑定的标签对说明。
        public let tags: [Tag]?

        /// 弹性伸缩类型。默认值：THPC_AS
        /// - THPC_AS：集群自动扩缩容由THPC产品内部实现。
        /// - AS：集群自动扩缩容由[弹性伸缩](https://cloud.tencent.com/document/product/377/3154)产品实现。
        public let autoScalingType: String?

        /// 节点初始化脚本信息列表。
        public let initNodeScripts: [NodeScript]?

        public init(placement: Placement, managerNode: ManagerNode? = nil, managerNodeCount: Int64? = nil, computeNode: ComputeNode? = nil, computeNodeCount: Int64? = nil, schedulerType: String? = nil, imageId: String? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, dryRun: Bool? = nil, accountType: String? = nil, clusterName: String? = nil, storageOption: StorageOption? = nil, loginNode: LoginNode? = nil, loginNodeCount: Int64? = nil, tags: [Tag]? = nil, autoScalingType: String? = nil, initNodeScripts: [NodeScript]? = nil) {
            self.placement = placement
            self.managerNode = managerNode
            self.managerNodeCount = managerNodeCount
            self.computeNode = computeNode
            self.computeNodeCount = computeNodeCount
            self.schedulerType = schedulerType
            self.imageId = imageId
            self.virtualPrivateCloud = virtualPrivateCloud
            self.loginSettings = loginSettings
            self.securityGroupIds = securityGroupIds
            self.clientToken = clientToken
            self.dryRun = dryRun
            self.accountType = accountType
            self.clusterName = clusterName
            self.storageOption = storageOption
            self.loginNode = loginNode
            self.loginNodeCount = loginNodeCount
            self.tags = tags
            self.autoScalingType = autoScalingType
            self.initNodeScripts = initNodeScripts
        }

        enum CodingKeys: String, CodingKey {
            case placement = "Placement"
            case managerNode = "ManagerNode"
            case managerNodeCount = "ManagerNodeCount"
            case computeNode = "ComputeNode"
            case computeNodeCount = "ComputeNodeCount"
            case schedulerType = "SchedulerType"
            case imageId = "ImageId"
            case virtualPrivateCloud = "VirtualPrivateCloud"
            case loginSettings = "LoginSettings"
            case securityGroupIds = "SecurityGroupIds"
            case clientToken = "ClientToken"
            case dryRun = "DryRun"
            case accountType = "AccountType"
            case clusterName = "ClusterName"
            case storageOption = "StorageOption"
            case loginNode = "LoginNode"
            case loginNodeCount = "LoginNodeCount"
            case tags = "Tags"
            case autoScalingType = "AutoScalingType"
            case initNodeScripts = "InitNodeScripts"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponseModel {
        /// 集群ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 创建集群
    ///
    /// 本接口 (CreateCluster) 用于创建并启动集群。
    ///
    /// * 本接口为异步接口， 当创建集群请求下发成功后会返回一个集群`ID`和一个`RequestId`，此时创建集群操作并未立即完成。在此期间集群的状态将会处于“PENDING”或者“INITING”，集群创建结果可以通过调用 [DescribeClusters](https://cloud.tencent.com/document/product/1527/72100)  接口查询，如果集群状态(ClusterStatus)变为“RUNNING(运行中)”，则代表集群创建成功，“ INIT_FAILED”代表集群创建失败。
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群
    ///
    /// 本接口 (CreateCluster) 用于创建并启动集群。
    ///
    /// * 本接口为异步接口， 当创建集群请求下发成功后会返回一个集群`ID`和一个`RequestId`，此时创建集群操作并未立即完成。在此期间集群的状态将会处于“PENDING”或者“INITING”，集群创建结果可以通过调用 [DescribeClusters](https://cloud.tencent.com/document/product/1527/72100)  接口查询，如果集群状态(ClusterStatus)变为“RUNNING(运行中)”，则代表集群创建成功，“ INIT_FAILED”代表集群创建失败。
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群
    ///
    /// 本接口 (CreateCluster) 用于创建并启动集群。
    ///
    /// * 本接口为异步接口， 当创建集群请求下发成功后会返回一个集群`ID`和一个`RequestId`，此时创建集群操作并未立即完成。在此期间集群的状态将会处于“PENDING”或者“INITING”，集群创建结果可以通过调用 [DescribeClusters](https://cloud.tencent.com/document/product/1527/72100)  接口查询，如果集群状态(ClusterStatus)变为“RUNNING(运行中)”，则代表集群创建成功，“ INIT_FAILED”代表集群创建失败。
    @inlinable
    public func createCluster(placement: Placement, managerNode: ManagerNode? = nil, managerNodeCount: Int64? = nil, computeNode: ComputeNode? = nil, computeNodeCount: Int64? = nil, schedulerType: String? = nil, imageId: String? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, dryRun: Bool? = nil, accountType: String? = nil, clusterName: String? = nil, storageOption: StorageOption? = nil, loginNode: LoginNode? = nil, loginNodeCount: Int64? = nil, tags: [Tag]? = nil, autoScalingType: String? = nil, initNodeScripts: [NodeScript]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(placement: placement, managerNode: managerNode, managerNodeCount: managerNodeCount, computeNode: computeNode, computeNodeCount: computeNodeCount, schedulerType: schedulerType, imageId: imageId, virtualPrivateCloud: virtualPrivateCloud, loginSettings: loginSettings, securityGroupIds: securityGroupIds, clientToken: clientToken, dryRun: dryRun, accountType: accountType, clusterName: clusterName, storageOption: storageOption, loginNode: loginNode, loginNodeCount: loginNodeCount, tags: tags, autoScalingType: autoScalingType, initNodeScripts: initNodeScripts), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群
    ///
    /// 本接口 (CreateCluster) 用于创建并启动集群。
    ///
    /// * 本接口为异步接口， 当创建集群请求下发成功后会返回一个集群`ID`和一个`RequestId`，此时创建集群操作并未立即完成。在此期间集群的状态将会处于“PENDING”或者“INITING”，集群创建结果可以通过调用 [DescribeClusters](https://cloud.tencent.com/document/product/1527/72100)  接口查询，如果集群状态(ClusterStatus)变为“RUNNING(运行中)”，则代表集群创建成功，“ INIT_FAILED”代表集群创建失败。
    @inlinable
    public func createCluster(placement: Placement, managerNode: ManagerNode? = nil, managerNodeCount: Int64? = nil, computeNode: ComputeNode? = nil, computeNodeCount: Int64? = nil, schedulerType: String? = nil, imageId: String? = nil, virtualPrivateCloud: VirtualPrivateCloud? = nil, loginSettings: LoginSettings? = nil, securityGroupIds: [String]? = nil, clientToken: String? = nil, dryRun: Bool? = nil, accountType: String? = nil, clusterName: String? = nil, storageOption: StorageOption? = nil, loginNode: LoginNode? = nil, loginNodeCount: Int64? = nil, tags: [Tag]? = nil, autoScalingType: String? = nil, initNodeScripts: [NodeScript]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(placement: placement, managerNode: managerNode, managerNodeCount: managerNodeCount, computeNode: computeNode, computeNodeCount: computeNodeCount, schedulerType: schedulerType, imageId: imageId, virtualPrivateCloud: virtualPrivateCloud, loginSettings: loginSettings, securityGroupIds: securityGroupIds, clientToken: clientToken, dryRun: dryRun, accountType: accountType, clusterName: clusterName, storageOption: storageOption, loginNode: loginNode, loginNodeCount: loginNodeCount, tags: tags, autoScalingType: autoScalingType, initNodeScripts: initNodeScripts), region: region, logger: logger, on: eventLoop)
    }
}
