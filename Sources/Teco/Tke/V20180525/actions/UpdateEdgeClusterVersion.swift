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
    /// UpdateEdgeClusterVersion请求参数结构体
    public struct UpdateEdgeClusterVersionRequest: TCRequest {
        /// 集群 Id
        public let clusterId: String

        /// 需要升级到的版本
        public let edgeVersion: String

        /// 自定义边缘组件镜像仓库前缀
        public let registryPrefix: String?

        /// 是否跳过预检查阶段
        public let skipPreCheck: Bool?

        public init(clusterId: String, edgeVersion: String, registryPrefix: String? = nil, skipPreCheck: Bool? = nil) {
            self.clusterId = clusterId
            self.edgeVersion = edgeVersion
            self.registryPrefix = registryPrefix
            self.skipPreCheck = skipPreCheck
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case edgeVersion = "EdgeVersion"
            case registryPrefix = "RegistryPrefix"
            case skipPreCheck = "SkipPreCheck"
        }
    }

    /// UpdateEdgeClusterVersion返回参数结构体
    public struct UpdateEdgeClusterVersionResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 升级边缘集群
    ///
    /// 升级边缘集群组件到指定版本，此版本为TKEEdge专用版本。
    @inlinable @discardableResult
    public func updateEdgeClusterVersion(_ input: UpdateEdgeClusterVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEdgeClusterVersionResponse> {
        self.client.execute(action: "UpdateEdgeClusterVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 升级边缘集群
    ///
    /// 升级边缘集群组件到指定版本，此版本为TKEEdge专用版本。
    @inlinable @discardableResult
    public func updateEdgeClusterVersion(_ input: UpdateEdgeClusterVersionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEdgeClusterVersionResponse {
        try await self.client.execute(action: "UpdateEdgeClusterVersion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 升级边缘集群
    ///
    /// 升级边缘集群组件到指定版本，此版本为TKEEdge专用版本。
    @inlinable @discardableResult
    public func updateEdgeClusterVersion(clusterId: String, edgeVersion: String, registryPrefix: String? = nil, skipPreCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateEdgeClusterVersionResponse> {
        self.updateEdgeClusterVersion(.init(clusterId: clusterId, edgeVersion: edgeVersion, registryPrefix: registryPrefix, skipPreCheck: skipPreCheck), region: region, logger: logger, on: eventLoop)
    }

    /// 升级边缘集群
    ///
    /// 升级边缘集群组件到指定版本，此版本为TKEEdge专用版本。
    @inlinable @discardableResult
    public func updateEdgeClusterVersion(clusterId: String, edgeVersion: String, registryPrefix: String? = nil, skipPreCheck: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateEdgeClusterVersionResponse {
        try await self.updateEdgeClusterVersion(.init(clusterId: clusterId, edgeVersion: edgeVersion, registryPrefix: registryPrefix, skipPreCheck: skipPreCheck), region: region, logger: logger, on: eventLoop)
    }
}
