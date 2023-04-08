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

extension Es {
    /// RestartNodes请求参数结构体
    public struct RestartNodesRequest: TCRequestModel {
        /// 集群实例ID
        public let instanceId: String

        /// 节点名称列表
        public let nodeNames: [String]

        /// 是否强制重启
        public let forceRestart: Bool?

        /// 可选重启模式"in-place","blue-green"，分别表示重启，蓝绿重启；默认值为"in-place"
        public let restartMode: String?

        /// 节点状态，在蓝绿模式中使用；离线节点蓝绿有风险
        public let isOffline: Bool?

        public init(instanceId: String, nodeNames: [String], forceRestart: Bool? = nil, restartMode: String? = nil, isOffline: Bool? = nil) {
            self.instanceId = instanceId
            self.nodeNames = nodeNames
            self.forceRestart = forceRestart
            self.restartMode = restartMode
            self.isOffline = isOffline
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case nodeNames = "NodeNames"
            case forceRestart = "ForceRestart"
            case restartMode = "RestartMode"
            case isOffline = "IsOffline"
        }
    }

    /// RestartNodes返回参数结构体
    public struct RestartNodesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 重启集群节点
    ///
    /// 用于重启集群节点
    @inlinable @discardableResult
    public func restartNodes(_ input: RestartNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartNodesResponse> {
        self.client.execute(action: "RestartNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重启集群节点
    ///
    /// 用于重启集群节点
    @inlinable @discardableResult
    public func restartNodes(_ input: RestartNodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartNodesResponse {
        try await self.client.execute(action: "RestartNodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重启集群节点
    ///
    /// 用于重启集群节点
    @inlinable @discardableResult
    public func restartNodes(instanceId: String, nodeNames: [String], forceRestart: Bool? = nil, restartMode: String? = nil, isOffline: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RestartNodesResponse> {
        self.restartNodes(.init(instanceId: instanceId, nodeNames: nodeNames, forceRestart: forceRestart, restartMode: restartMode, isOffline: isOffline), region: region, logger: logger, on: eventLoop)
    }

    /// 重启集群节点
    ///
    /// 用于重启集群节点
    @inlinable @discardableResult
    public func restartNodes(instanceId: String, nodeNames: [String], forceRestart: Bool? = nil, restartMode: String? = nil, isOffline: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RestartNodesResponse {
        try await self.restartNodes(.init(instanceId: instanceId, nodeNames: nodeNames, forceRestart: forceRestart, restartMode: restartMode, isOffline: isOffline), region: region, logger: logger, on: eventLoop)
    }
}
