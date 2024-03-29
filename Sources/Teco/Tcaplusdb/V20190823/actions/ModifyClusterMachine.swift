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

extension Tcaplusdb {
    /// ModifyClusterMachine请求参数结构体
    public struct ModifyClusterMachineRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// svr占用的机器
        public let serverList: [MachineInfo]

        /// proxy占用的机器
        public let proxyList: [MachineInfo]

        /// 集群类型1共享集群2独占集群
        public let clusterType: Int64

        public init(clusterId: String, serverList: [MachineInfo], proxyList: [MachineInfo], clusterType: Int64) {
            self.clusterId = clusterId
            self.serverList = serverList
            self.proxyList = proxyList
            self.clusterType = clusterType
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case serverList = "ServerList"
            case proxyList = "ProxyList"
            case clusterType = "ClusterType"
        }
    }

    /// ModifyClusterMachine返回参数结构体
    public struct ModifyClusterMachineResponse: TCResponse {
        /// 集群id
        public let clusterId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case requestId = "RequestId"
        }
    }

    /// 修改独占集群机器
    @inlinable
    public func modifyClusterMachine(_ input: ModifyClusterMachineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterMachineResponse> {
        self.client.execute(action: "ModifyClusterMachine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改独占集群机器
    @inlinable
    public func modifyClusterMachine(_ input: ModifyClusterMachineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterMachineResponse {
        try await self.client.execute(action: "ModifyClusterMachine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改独占集群机器
    @inlinable
    public func modifyClusterMachine(clusterId: String, serverList: [MachineInfo], proxyList: [MachineInfo], clusterType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyClusterMachineResponse> {
        self.modifyClusterMachine(.init(clusterId: clusterId, serverList: serverList, proxyList: proxyList, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改独占集群机器
    @inlinable
    public func modifyClusterMachine(clusterId: String, serverList: [MachineInfo], proxyList: [MachineInfo], clusterType: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyClusterMachineResponse {
        try await self.modifyClusterMachine(.init(clusterId: clusterId, serverList: serverList, proxyList: proxyList, clusterType: clusterType), region: region, logger: logger, on: eventLoop)
    }
}
