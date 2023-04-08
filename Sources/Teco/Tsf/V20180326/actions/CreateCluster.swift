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

extension Tsf {
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequestModel {
        /// 集群名称
        public let clusterName: String

        /// 集群类型
        public let clusterType: String

        /// 私有网络ID
        public let vpcId: String

        /// 分配给集群容器和服务IP的CIDR
        public let clusterCIDR: String?

        /// 集群备注
        public let clusterDesc: String?

        /// 集群所属TSF地域
        public let tsfRegionId: String?

        /// 集群所属TSF可用区
        public let tsfZoneId: String?

        /// 私有网络子网ID
        public let subnetId: String?

        /// 集群版本
        public let clusterVersion: String?

        /// 集群中每个Node上最大的Pod数量。取值范围4～256。不为2的幂值时会向上取最接近的2的幂值。
        public let maxNodePodNum: UInt64?

        /// 集群最大的service数量。取值范围32～32768，不为2的幂值时会向上取最接近的2的幂值。
        public let maxClusterServiceNum: UInt64?

        /// 需要绑定的数据集ID
        public let programId: String?

        /// api地址
        public let kuberneteApiServer: String?

        /// K : kubeconfig, S : service account
        public let kuberneteNativeType: String?

        /// native secret
        public let kuberneteNativeSecret: String?

        /// 无
        public let programIdList: [String]?

        public init(clusterName: String, clusterType: String, vpcId: String, clusterCIDR: String? = nil, clusterDesc: String? = nil, tsfRegionId: String? = nil, tsfZoneId: String? = nil, subnetId: String? = nil, clusterVersion: String? = nil, maxNodePodNum: UInt64? = nil, maxClusterServiceNum: UInt64? = nil, programId: String? = nil, kuberneteApiServer: String? = nil, kuberneteNativeType: String? = nil, kuberneteNativeSecret: String? = nil, programIdList: [String]? = nil) {
            self.clusterName = clusterName
            self.clusterType = clusterType
            self.vpcId = vpcId
            self.clusterCIDR = clusterCIDR
            self.clusterDesc = clusterDesc
            self.tsfRegionId = tsfRegionId
            self.tsfZoneId = tsfZoneId
            self.subnetId = subnetId
            self.clusterVersion = clusterVersion
            self.maxNodePodNum = maxNodePodNum
            self.maxClusterServiceNum = maxClusterServiceNum
            self.programId = programId
            self.kuberneteApiServer = kuberneteApiServer
            self.kuberneteNativeType = kuberneteNativeType
            self.kuberneteNativeSecret = kuberneteNativeSecret
            self.programIdList = programIdList
        }

        enum CodingKeys: String, CodingKey {
            case clusterName = "ClusterName"
            case clusterType = "ClusterType"
            case vpcId = "VpcId"
            case clusterCIDR = "ClusterCIDR"
            case clusterDesc = "ClusterDesc"
            case tsfRegionId = "TsfRegionId"
            case tsfZoneId = "TsfZoneId"
            case subnetId = "SubnetId"
            case clusterVersion = "ClusterVersion"
            case maxNodePodNum = "MaxNodePodNum"
            case maxClusterServiceNum = "MaxClusterServiceNum"
            case programId = "ProgramId"
            case kuberneteApiServer = "KuberneteApiServer"
            case kuberneteNativeType = "KuberneteNativeType"
            case kuberneteNativeSecret = "KuberneteNativeSecret"
            case programIdList = "ProgramIdList"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponseModel {
        /// 集群ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集群
    @inlinable
    public func createCluster(_ input: CreateClusterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.client.execute(action: "CreateCluster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集群
    @inlinable
    public func createCluster(clusterName: String, clusterType: String, vpcId: String, clusterCIDR: String? = nil, clusterDesc: String? = nil, tsfRegionId: String? = nil, tsfZoneId: String? = nil, subnetId: String? = nil, clusterVersion: String? = nil, maxNodePodNum: UInt64? = nil, maxClusterServiceNum: UInt64? = nil, programId: String? = nil, kuberneteApiServer: String? = nil, kuberneteNativeType: String? = nil, kuberneteNativeSecret: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(clusterName: clusterName, clusterType: clusterType, vpcId: vpcId, clusterCIDR: clusterCIDR, clusterDesc: clusterDesc, tsfRegionId: tsfRegionId, tsfZoneId: tsfZoneId, subnetId: subnetId, clusterVersion: clusterVersion, maxNodePodNum: maxNodePodNum, maxClusterServiceNum: maxClusterServiceNum, programId: programId, kuberneteApiServer: kuberneteApiServer, kuberneteNativeType: kuberneteNativeType, kuberneteNativeSecret: kuberneteNativeSecret, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群
    @inlinable
    public func createCluster(clusterName: String, clusterType: String, vpcId: String, clusterCIDR: String? = nil, clusterDesc: String? = nil, tsfRegionId: String? = nil, tsfZoneId: String? = nil, subnetId: String? = nil, clusterVersion: String? = nil, maxNodePodNum: UInt64? = nil, maxClusterServiceNum: UInt64? = nil, programId: String? = nil, kuberneteApiServer: String? = nil, kuberneteNativeType: String? = nil, kuberneteNativeSecret: String? = nil, programIdList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(clusterName: clusterName, clusterType: clusterType, vpcId: vpcId, clusterCIDR: clusterCIDR, clusterDesc: clusterDesc, tsfRegionId: tsfRegionId, tsfZoneId: tsfZoneId, subnetId: subnetId, clusterVersion: clusterVersion, maxNodePodNum: maxNodePodNum, maxClusterServiceNum: maxClusterServiceNum, programId: programId, kuberneteApiServer: kuberneteApiServer, kuberneteNativeType: kuberneteNativeType, kuberneteNativeSecret: kuberneteNativeSecret, programIdList: programIdList), region: region, logger: logger, on: eventLoop)
    }
}
