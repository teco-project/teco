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

extension Tke {
    /// ScaleOutClusterMaster请求参数结构体
    public struct ScaleOutClusterMasterRequest: TCRequestModel {
        /// 集群实例ID
        public let clusterId: String

        /// 新建节点参数
        public let runInstancesForNode: [RunInstancesForNode]?

        /// 添加已有节点相关参数
        public let existedInstancesForNode: [ExistedInstancesForNode]?

        /// 实例高级设置
        public let instanceAdvancedSettings: InstanceAdvancedSettings?

        /// 集群master组件自定义参数
        public let extraArgs: ClusterExtraArgs?

        public init(clusterId: String, runInstancesForNode: [RunInstancesForNode]? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, extraArgs: ClusterExtraArgs? = nil) {
            self.clusterId = clusterId
            self.runInstancesForNode = runInstancesForNode
            self.existedInstancesForNode = existedInstancesForNode
            self.instanceAdvancedSettings = instanceAdvancedSettings
            self.extraArgs = extraArgs
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case runInstancesForNode = "RunInstancesForNode"
            case existedInstancesForNode = "ExistedInstancesForNode"
            case instanceAdvancedSettings = "InstanceAdvancedSettings"
            case extraArgs = "ExtraArgs"
        }
    }

    /// ScaleOutClusterMaster返回参数结构体
    public struct ScaleOutClusterMasterResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 扩容独立集群master节点
    @inlinable @discardableResult
    public func scaleOutClusterMaster(_ input: ScaleOutClusterMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleOutClusterMasterResponse> {
        self.client.execute(action: "ScaleOutClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容独立集群master节点
    @inlinable @discardableResult
    public func scaleOutClusterMaster(_ input: ScaleOutClusterMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutClusterMasterResponse {
        try await self.client.execute(action: "ScaleOutClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 扩容独立集群master节点
    @inlinable @discardableResult
    public func scaleOutClusterMaster(clusterId: String, runInstancesForNode: [RunInstancesForNode]? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, extraArgs: ClusterExtraArgs? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleOutClusterMasterResponse> {
        let input = ScaleOutClusterMasterRequest(clusterId: clusterId, runInstancesForNode: runInstancesForNode, existedInstancesForNode: existedInstancesForNode, instanceAdvancedSettings: instanceAdvancedSettings, extraArgs: extraArgs)
        return self.client.execute(action: "ScaleOutClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 扩容独立集群master节点
    @inlinable @discardableResult
    public func scaleOutClusterMaster(clusterId: String, runInstancesForNode: [RunInstancesForNode]? = nil, existedInstancesForNode: [ExistedInstancesForNode]? = nil, instanceAdvancedSettings: InstanceAdvancedSettings? = nil, extraArgs: ClusterExtraArgs? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleOutClusterMasterResponse {
        let input = ScaleOutClusterMasterRequest(clusterId: clusterId, runInstancesForNode: runInstancesForNode, existedInstancesForNode: existedInstancesForNode, instanceAdvancedSettings: instanceAdvancedSettings, extraArgs: extraArgs)
        return try await self.client.execute(action: "ScaleOutClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
