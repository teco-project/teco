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

extension Tke {
    /// CreateClusterNodePool请求参数结构体
    public struct CreateClusterNodePoolRequest: TCRequestModel {
        /// cluster id
        public let clusterId: String

        /// AutoScalingGroupPara AS组参数，参考 https://cloud.tencent.com/document/product/377/20440
        public let autoScalingGroupPara: String

        /// LaunchConfigurePara 运行参数，参考 https://cloud.tencent.com/document/product/377/20447
        public let launchConfigurePara: String

        /// InstanceAdvancedSettings 示例参数
        public let instanceAdvancedSettings: InstanceAdvancedSettings

        /// 是否启用自动伸缩
        public let enableAutoscale: Bool

        /// 节点池名称
        public let name: String?

        /// Labels标签
        public let labels: [Label]?

        /// Taints互斥
        public let taints: [Taint]?

        /// 节点池纬度运行时类型及版本
        public let containerRuntime: String?

        /// 运行时版本
        public let runtimeVersion: String?

        /// 节点池os，当为自定义镜像时，传镜像id；否则为公共镜像的osName
        public let nodePoolOs: String?

        /// 容器的镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        public let osCustomizeType: String?

        /// 资源标签
        public let tags: [Tag]?

        /// 删除保护开关
        public let deletionProtection: Bool?

        public init(clusterId: String, autoScalingGroupPara: String, launchConfigurePara: String, instanceAdvancedSettings: InstanceAdvancedSettings, enableAutoscale: Bool, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, containerRuntime: String? = nil, runtimeVersion: String? = nil, nodePoolOs: String? = nil, osCustomizeType: String? = nil, tags: [Tag]? = nil, deletionProtection: Bool? = nil) {
            self.clusterId = clusterId
            self.autoScalingGroupPara = autoScalingGroupPara
            self.launchConfigurePara = launchConfigurePara
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.enableAutoscale = enableAutoscale
            self.name = name
            self.labels = labels
            self.taints = taints
            self.containerRuntime = containerRuntime
            self.runtimeVersion = runtimeVersion
            self.nodePoolOs = nodePoolOs
            self.osCustomizeType = osCustomizeType
            self.tags = tags
            self.deletionProtection = deletionProtection
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case autoScalingGroupPara = "AutoScalingGroupPara"
            case launchConfigurePara = "LaunchConfigurePara"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case enableAutoscale = "EnableAutoscale"
            case name = "Name"
            case labels = "Labels"
            case taints = "Taints"
            case containerRuntime = "ContainerRuntime"
            case runtimeVersion = "RuntimeVersion"
            case nodePoolOs = "NodePoolOs"
            case osCustomizeType = "OsCustomizeType"
            case tags = "Tags"
            case deletionProtection = "DeletionProtection"
        }
    }

    /// CreateClusterNodePool返回参数结构体
    public struct CreateClusterNodePoolResponse: TCResponseModel {
        /// 节点池id
        public let nodePoolId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case nodePoolId = "NodePoolId"
            case requestId = "RequestId"
        }
    }

    /// 创建节点池
    @inlinable
    public func createClusterNodePool(_ input: CreateClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterNodePoolResponse> {
        self.client.execute(action: "CreateClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建节点池
    @inlinable
    public func createClusterNodePool(_ input: CreateClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterNodePoolResponse {
        try await self.client.execute(action: "CreateClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建节点池
    @inlinable
    public func createClusterNodePool(clusterId: String, autoScalingGroupPara: String, launchConfigurePara: String, instanceAdvancedSettings: InstanceAdvancedSettings, enableAutoscale: Bool, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, containerRuntime: String? = nil, runtimeVersion: String? = nil, nodePoolOs: String? = nil, osCustomizeType: String? = nil, tags: [Tag]? = nil, deletionProtection: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClusterNodePoolResponse> {
        self.createClusterNodePool(.init(clusterId: clusterId, autoScalingGroupPara: autoScalingGroupPara, launchConfigurePara: launchConfigurePara, instanceAdvancedSettings: instanceAdvancedSettings, enableAutoscale: enableAutoscale, name: name, labels: labels, taints: taints, containerRuntime: containerRuntime, runtimeVersion: runtimeVersion, nodePoolOs: nodePoolOs, osCustomizeType: osCustomizeType, tags: tags, deletionProtection: deletionProtection), region: region, logger: logger, on: eventLoop)
    }

    /// 创建节点池
    @inlinable
    public func createClusterNodePool(clusterId: String, autoScalingGroupPara: String, launchConfigurePara: String, instanceAdvancedSettings: InstanceAdvancedSettings, enableAutoscale: Bool, name: String? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, containerRuntime: String? = nil, runtimeVersion: String? = nil, nodePoolOs: String? = nil, osCustomizeType: String? = nil, tags: [Tag]? = nil, deletionProtection: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClusterNodePoolResponse {
        try await self.createClusterNodePool(.init(clusterId: clusterId, autoScalingGroupPara: autoScalingGroupPara, launchConfigurePara: launchConfigurePara, instanceAdvancedSettings: instanceAdvancedSettings, enableAutoscale: enableAutoscale, name: name, labels: labels, taints: taints, containerRuntime: containerRuntime, runtimeVersion: runtimeVersion, nodePoolOs: nodePoolOs, osCustomizeType: osCustomizeType, tags: tags, deletionProtection: deletionProtection), region: region, logger: logger, on: eventLoop)
    }
}
