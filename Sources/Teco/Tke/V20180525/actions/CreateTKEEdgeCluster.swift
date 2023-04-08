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

extension Tke {
    /// CreateTKEEdgeCluster请求参数结构体
    public struct CreateTKEEdgeClusterRequest: TCRequestModel {
        /// k8s版本号
        public let k8sVersion: String

        /// vpc 的Id
        public let vpcId: String

        /// 集群名称
        public let clusterName: String

        /// 集群pod cidr
        public let podCIDR: String

        /// 集群service cidr
        public let serviceCIDR: String

        /// 集群描述信息
        public let clusterDesc: String?

        /// 集群高级设置
        public let clusterAdvancedSettings: EdgeClusterAdvancedSettings?

        /// 节点上最大Pod数量
        public let maxNodePodNum: Int64?

        /// 边缘计算集群公网访问LB信息
        public let publicLB: EdgeClusterPublicLB?

        /// 集群的级别
        public let clusterLevel: String?

        /// 集群是否支持自动升配
        public let autoUpgradeClusterLevel: Bool?

        /// 集群计费方式
        public let chargeType: String?

        /// 边缘集群版本，此版本区别于k8s版本，是整个集群各组件版本集合
        public let edgeVersion: String?

        /// 边缘组件镜像仓库前缀
        public let registryPrefix: String?

        public init(k8sVersion: String, vpcId: String, clusterName: String, podCIDR: String, serviceCIDR: String, clusterDesc: String? = nil, clusterAdvancedSettings: EdgeClusterAdvancedSettings? = nil, maxNodePodNum: Int64? = nil, publicLB: EdgeClusterPublicLB? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: Bool? = nil, chargeType: String? = nil, edgeVersion: String? = nil, registryPrefix: String? = nil) {
            self.k8sVersion = k8sVersion
            self.vpcId = vpcId
            self.clusterName = clusterName
            self.podCIDR = podCIDR
            self.serviceCIDR = serviceCIDR
            self.clusterDesc = clusterDesc
            self.clusterAdvancedSettings = clusterAdvancedSettings
            self.maxNodePodNum = maxNodePodNum
            self.publicLB = publicLB
            self.clusterLevel = clusterLevel
            self.autoUpgradeClusterLevel = autoUpgradeClusterLevel
            self.chargeType = chargeType
            self.edgeVersion = edgeVersion
            self.registryPrefix = registryPrefix
        }

        enum CodingKeys: String, CodingKey {
            case k8sVersion = "K8SVersion"
            case vpcId = "VpcId"
            case clusterName = "ClusterName"
            case podCIDR = "PodCIDR"
            case serviceCIDR = "ServiceCIDR"
            case clusterDesc = "ClusterDesc"
            case clusterAdvancedSettings = "ClusterAdvancedSettings"
            case maxNodePodNum = "MaxNodePodNum"
            case publicLB = "PublicLB"
            case clusterLevel = "ClusterLevel"
            case autoUpgradeClusterLevel = "AutoUpgradeClusterLevel"
            case chargeType = "ChargeType"
            case edgeVersion = "EdgeVersion"
            case registryPrefix = "RegistryPrefix"
        }
    }

    /// CreateTKEEdgeCluster返回参数结构体
    public struct CreateTKEEdgeClusterResponse: TCResponseModel {
        /// 边缘计算集群Id
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 创建边缘计算集群
    @inlinable
    public func createTKEEdgeCluster(_ input: CreateTKEEdgeClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTKEEdgeClusterResponse> {
        self.client.execute(action: "CreateTKEEdgeCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建边缘计算集群
    @inlinable
    public func createTKEEdgeCluster(_ input: CreateTKEEdgeClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTKEEdgeClusterResponse {
        try await self.client.execute(action: "CreateTKEEdgeCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建边缘计算集群
    @inlinable
    public func createTKEEdgeCluster(k8sVersion: String, vpcId: String, clusterName: String, podCIDR: String, serviceCIDR: String, clusterDesc: String? = nil, clusterAdvancedSettings: EdgeClusterAdvancedSettings? = nil, maxNodePodNum: Int64? = nil, publicLB: EdgeClusterPublicLB? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: Bool? = nil, chargeType: String? = nil, edgeVersion: String? = nil, registryPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTKEEdgeClusterResponse> {
        self.createTKEEdgeCluster(.init(k8sVersion: k8sVersion, vpcId: vpcId, clusterName: clusterName, podCIDR: podCIDR, serviceCIDR: serviceCIDR, clusterDesc: clusterDesc, clusterAdvancedSettings: clusterAdvancedSettings, maxNodePodNum: maxNodePodNum, publicLB: publicLB, clusterLevel: clusterLevel, autoUpgradeClusterLevel: autoUpgradeClusterLevel, chargeType: chargeType, edgeVersion: edgeVersion, registryPrefix: registryPrefix), region: region, logger: logger, on: eventLoop)
    }

    /// 创建边缘计算集群
    @inlinable
    public func createTKEEdgeCluster(k8sVersion: String, vpcId: String, clusterName: String, podCIDR: String, serviceCIDR: String, clusterDesc: String? = nil, clusterAdvancedSettings: EdgeClusterAdvancedSettings? = nil, maxNodePodNum: Int64? = nil, publicLB: EdgeClusterPublicLB? = nil, clusterLevel: String? = nil, autoUpgradeClusterLevel: Bool? = nil, chargeType: String? = nil, edgeVersion: String? = nil, registryPrefix: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTKEEdgeClusterResponse {
        try await self.createTKEEdgeCluster(.init(k8sVersion: k8sVersion, vpcId: vpcId, clusterName: clusterName, podCIDR: podCIDR, serviceCIDR: serviceCIDR, clusterDesc: clusterDesc, clusterAdvancedSettings: clusterAdvancedSettings, maxNodePodNum: maxNodePodNum, publicLB: publicLB, clusterLevel: clusterLevel, autoUpgradeClusterLevel: autoUpgradeClusterLevel, chargeType: chargeType, edgeVersion: edgeVersion, registryPrefix: registryPrefix), region: region, logger: logger, on: eventLoop)
    }
}
