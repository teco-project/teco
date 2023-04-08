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
    /// CreateCluster请求参数结构体
    public struct CreateClusterRequest: TCRequestModel {
        /// 集群容器网络配置信息
        public let clusterCIDRSettings: ClusterCIDRSettings

        /// 集群类型，托管集群：MANAGED_CLUSTER，独立集群：INDEPENDENT_CLUSTER。
        public let clusterType: String

        /// CVM创建透传参数，json化字符串格式，详见[CVM创建实例](https://cloud.tencent.com/document/product/213/15730)接口。总机型(包括地域)数量不超过10个，相同机型(地域)购买多台机器可以通过设置参数中RunInstances中InstanceCount来实现。
        public let runInstancesForNode: [RunInstancesForNode]?

        /// 集群的基本配置信息
        public let clusterBasicSettings: ClusterBasicSettings?

        /// 集群高级配置信息
        public let clusterAdvancedSettings: ClusterAdvancedSettings?

        /// 节点高级配置信息
        public let instanceAdvancedSettings: InstanceAdvancedSettings?

        /// 已存在实例的配置信息。所有实例必须在同一个VPC中，最大数量不超过100，不支持添加竞价实例。
        public let existedInstancesForNode: [ExistedInstancesForNode]?

        /// CVM类型和其对应的数据盘挂载配置信息
        public let instanceDataDiskMountSettings: [InstanceDataDiskMountSetting]?

        /// 需要安装的扩展组件信息
        public let extensionAddons: [ExtensionAddon]?

        public init(clusterCIDRSettings: ClusterCIDRSettings, clusterType: String, runInstancesForNode: [RunInstancesForNode]? = nil, clusterBasicSettings: ClusterBasicSettings? = nil, clusterAdvancedSettings: ClusterAdvancedSettings? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceDataDiskMountSettings: [InstanceDataDiskMountSetting]? = nil, extensionAddons: [ExtensionAddon]? = nil) {
            self.clusterCIDRSettings = clusterCIDRSettings
            self.clusterType = clusterType
            self.runInstancesForNode = runInstancesForNode
            self.clusterBasicSettings = clusterBasicSettings
            self.clusterAdvancedSettings = clusterAdvancedSettings
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.existedInstancesForNode = existedInstancesForNode
            self.instanceDataDiskMountSettings = instanceDataDiskMountSettings
            self.extensionAddons = extensionAddons
        }

        enum CodingKeys: String, CodingKey {
            case clusterCIDRSettings = "ClusterCIDRSettings"
            case clusterType = "ClusterType"
            case runInstancesForNode = "RunInstancesForNode"
            case clusterBasicSettings = "ClusterBasicSettings"
            case clusterAdvancedSettings = "ClusterAdvancedSettings"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case existedInstancesForNode = "ExistedInstancesForNode"
            case instanceDataDiskMountSettings = "InstanceDataDiskMountSettings"
            case extensionAddons = "ExtensionAddons"
        }
    }

    /// CreateCluster返回参数结构体
    public struct CreateClusterResponse: TCResponseModel {
        /// 集群ID
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
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
    public func createCluster(clusterCIDRSettings: ClusterCIDRSettings, clusterType: String, runInstancesForNode: [RunInstancesForNode]? = nil, clusterBasicSettings: ClusterBasicSettings? = nil, clusterAdvancedSettings: ClusterAdvancedSettings? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceDataDiskMountSettings: [InstanceDataDiskMountSetting]? = nil, extensionAddons: [ExtensionAddon]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterResponse> {
        self.createCluster(.init(clusterCIDRSettings: clusterCIDRSettings, clusterType: clusterType, runInstancesForNode: runInstancesForNode, clusterBasicSettings: clusterBasicSettings, clusterAdvancedSettings: clusterAdvancedSettings, instanceAdvancedSettings: instanceAdvancedSettings, existedInstancesForNode: existedInstancesForNode, instanceDataDiskMountSettings: instanceDataDiskMountSettings, extensionAddons: extensionAddons), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集群
    @inlinable
    public func createCluster(clusterCIDRSettings: ClusterCIDRSettings, clusterType: String, runInstancesForNode: [RunInstancesForNode]? = nil, clusterBasicSettings: ClusterBasicSettings? = nil, clusterAdvancedSettings: ClusterAdvancedSettings? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceDataDiskMountSettings: [InstanceDataDiskMountSetting]? = nil, extensionAddons: [ExtensionAddon]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterResponse {
        try await self.createCluster(.init(clusterCIDRSettings: clusterCIDRSettings, clusterType: clusterType, runInstancesForNode: runInstancesForNode, clusterBasicSettings: clusterBasicSettings, clusterAdvancedSettings: clusterAdvancedSettings, instanceAdvancedSettings: instanceAdvancedSettings, existedInstancesForNode: existedInstancesForNode, instanceDataDiskMountSettings: instanceDataDiskMountSettings, extensionAddons: extensionAddons), region: region, logger: logger, on: eventLoop)
    }
}
