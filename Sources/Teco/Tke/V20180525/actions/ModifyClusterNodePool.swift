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
    /// ModifyClusterNodePool请求参数结构体
    public struct ModifyClusterNodePoolRequest: TCRequest {
        /// 集群ID
        public let clusterId: String

        /// 节点池ID
        public let nodePoolId: String

        /// 名称
        public let name: String?

        /// 最大节点数
        public let maxNodesNum: Int64?

        /// 最小节点数
        public let minNodesNum: Int64?

        /// 标签
        public let labels: [Label]?

        /// 污点
        public let taints: [Taint]?

        /// 是否开启伸缩
        public let enableAutoscale: Bool?

        /// 操作系统名称
        public let osName: String?

        /// 镜像版本，"DOCKER_CUSTOMIZE"(容器定制版),"GENERAL"(普通版本，默认值)
        public let osCustomizeType: String?

        /// GPU驱动版本，CUDA版本，cuDNN版本以及是否启用MIG特性
        public let gpuArgs: GPUArgs?

        /// base64编码后的自定义脚本
        public let userScript: String?

        /// 更新label和taint时忽略存量节点
        public let ignoreExistedNode: Bool?

        /// 节点自定义参数
        public let extraArgs: InstanceExtraArgs?

        /// 资源标签
        public let tags: [Tag]?

        /// 设置加入的节点是否参与调度，默认值为0，表示参与调度；非0表示不参与调度, 待节点初始化完成之后, 可执行kubectl uncordon nodename使node加入调度.
        public let unschedulable: Int64?

        /// 删除保护开关
        public let deletionProtection: Bool?

        /// dockerd --graph 指定值, 默认为 /var/lib/docker
        public let dockerGraphPath: String?

        /// base64编码后的自定义脚本
        public let preStartUserScript: String?

        public init(clusterId: String, nodePoolId: String, name: String? = nil, maxNodesNum: Int64? = nil, minNodesNum: Int64? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, enableAutoscale: Bool? = nil, osName: String? = nil, osCustomizeType: String? = nil, gpuArgs: GPUArgs? = nil, userScript: String? = nil, ignoreExistedNode: Bool? = nil, extraArgs: InstanceExtraArgs? = nil, tags: [Tag]? = nil, unschedulable: Int64? = nil, deletionProtection: Bool? = nil, dockerGraphPath: String? = nil, preStartUserScript: String? = nil) {
            self.clusterId = clusterId
            self.nodePoolId = nodePoolId
            self.name = name
            self.maxNodesNum = maxNodesNum
            self.minNodesNum = minNodesNum
            self.labels = labels
            self.taints = taints
            self.enableAutoscale = enableAutoscale
            self.osName = osName
            self.osCustomizeType = osCustomizeType
            self.gpuArgs = gpuArgs
            self.userScript = userScript
            self.ignoreExistedNode = ignoreExistedNode
            self.extraArgs = extraArgs
            self.tags = tags
            self.unschedulable = unschedulable
            self.deletionProtection = deletionProtection
            self.dockerGraphPath = dockerGraphPath
            self.preStartUserScript = preStartUserScript
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case nodePoolId = "NodePoolId"
            case name = "Name"
            case maxNodesNum = "MaxNodesNum"
            case minNodesNum = "MinNodesNum"
            case labels = "Labels"
            case taints = "Taints"
            case enableAutoscale = "EnableAutoscale"
            case osName = "OsName"
            case osCustomizeType = "OsCustomizeType"
            case gpuArgs = "GPUArgs"
            case userScript = "UserScript"
            case ignoreExistedNode = "IgnoreExistedNode"
            case extraArgs = "ExtraArgs"
            case tags = "Tags"
            case unschedulable = "Unschedulable"
            case deletionProtection = "DeletionProtection"
            case dockerGraphPath = "DockerGraphPath"
            case preStartUserScript = "PreStartUserScript"
        }
    }

    /// ModifyClusterNodePool返回参数结构体
    public struct ModifyClusterNodePoolResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 编辑节点池
    @inlinable @discardableResult
    public func modifyClusterNodePool(_ input: ModifyClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterNodePoolResponse> {
        self.client.execute(action: "ModifyClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑节点池
    @inlinable @discardableResult
    public func modifyClusterNodePool(_ input: ModifyClusterNodePoolRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterNodePoolResponse {
        try await self.client.execute(action: "ModifyClusterNodePool", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑节点池
    @inlinable @discardableResult
    public func modifyClusterNodePool(clusterId: String, nodePoolId: String, name: String? = nil, maxNodesNum: Int64? = nil, minNodesNum: Int64? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, enableAutoscale: Bool? = nil, osName: String? = nil, osCustomizeType: String? = nil, gpuArgs: GPUArgs? = nil, userScript: String? = nil, ignoreExistedNode: Bool? = nil, extraArgs: InstanceExtraArgs? = nil, tags: [Tag]? = nil, unschedulable: Int64? = nil, deletionProtection: Bool? = nil, dockerGraphPath: String? = nil, preStartUserScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterNodePoolResponse> {
        self.modifyClusterNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, name: name, maxNodesNum: maxNodesNum, minNodesNum: minNodesNum, labels: labels, taints: taints, enableAutoscale: enableAutoscale, osName: osName, osCustomizeType: osCustomizeType, gpuArgs: gpuArgs, userScript: userScript, ignoreExistedNode: ignoreExistedNode, extraArgs: extraArgs, tags: tags, unschedulable: unschedulable, deletionProtection: deletionProtection, dockerGraphPath: dockerGraphPath, preStartUserScript: preStartUserScript), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑节点池
    @inlinable @discardableResult
    public func modifyClusterNodePool(clusterId: String, nodePoolId: String, name: String? = nil, maxNodesNum: Int64? = nil, minNodesNum: Int64? = nil, labels: [Label]? = nil, taints: [Taint]? = nil, enableAutoscale: Bool? = nil, osName: String? = nil, osCustomizeType: String? = nil, gpuArgs: GPUArgs? = nil, userScript: String? = nil, ignoreExistedNode: Bool? = nil, extraArgs: InstanceExtraArgs? = nil, tags: [Tag]? = nil, unschedulable: Int64? = nil, deletionProtection: Bool? = nil, dockerGraphPath: String? = nil, preStartUserScript: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterNodePoolResponse {
        try await self.modifyClusterNodePool(.init(clusterId: clusterId, nodePoolId: nodePoolId, name: name, maxNodesNum: maxNodesNum, minNodesNum: minNodesNum, labels: labels, taints: taints, enableAutoscale: enableAutoscale, osName: osName, osCustomizeType: osCustomizeType, gpuArgs: gpuArgs, userScript: userScript, ignoreExistedNode: ignoreExistedNode, extraArgs: extraArgs, tags: tags, unschedulable: unschedulable, deletionProtection: deletionProtection, dockerGraphPath: dockerGraphPath, preStartUserScript: preStartUserScript), region: region, logger: logger, on: eventLoop)
    }
}
