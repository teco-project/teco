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
    /// ScaleInClusterMaster请求参数结构体
    public struct ScaleInClusterMasterRequest: TCRequest {
        /// 集群实例ID
        public let clusterId: String

        /// master缩容选项
        public let scaleInMasters: [ScaleInMaster]

        public init(clusterId: String, scaleInMasters: [ScaleInMaster]) {
            self.clusterId = clusterId
            self.scaleInMasters = scaleInMasters
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case scaleInMasters = "ScaleInMasters"
        }
    }

    /// ScaleInClusterMaster返回参数结构体
    public struct ScaleInClusterMasterResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 缩容独立集群master节点
    @inlinable @discardableResult
    public func scaleInClusterMaster(_ input: ScaleInClusterMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleInClusterMasterResponse> {
        self.client.execute(action: "ScaleInClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 缩容独立集群master节点
    @inlinable @discardableResult
    public func scaleInClusterMaster(_ input: ScaleInClusterMasterRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleInClusterMasterResponse {
        try await self.client.execute(action: "ScaleInClusterMaster", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 缩容独立集群master节点
    @inlinable @discardableResult
    public func scaleInClusterMaster(clusterId: String, scaleInMasters: [ScaleInMaster], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ScaleInClusterMasterResponse> {
        self.scaleInClusterMaster(.init(clusterId: clusterId, scaleInMasters: scaleInMasters), region: region, logger: logger, on: eventLoop)
    }

    /// 缩容独立集群master节点
    @inlinable @discardableResult
    public func scaleInClusterMaster(clusterId: String, scaleInMasters: [ScaleInMaster], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ScaleInClusterMasterResponse {
        try await self.scaleInClusterMaster(.init(clusterId: clusterId, scaleInMasters: scaleInMasters), region: region, logger: logger, on: eventLoop)
    }
}
