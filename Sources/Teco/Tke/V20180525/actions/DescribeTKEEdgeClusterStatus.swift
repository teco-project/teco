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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tke {
    /// DescribeTKEEdgeClusterStatus请求参数结构体
    public struct DescribeTKEEdgeClusterStatusRequest: TCRequestModel {
        /// 边缘计算容器集群Id
        public let clusterId: String

        public init(clusterId: String) {
            self.clusterId = clusterId
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
        }
    }

    /// DescribeTKEEdgeClusterStatus返回参数结构体
    public struct DescribeTKEEdgeClusterStatusResponse: TCResponseModel {
        /// 集群当前状态
        public let phase: String

        /// 集群过程数组
        public let conditions: [ClusterCondition]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case phase = "Phase"
            case conditions = "Conditions"
            case requestId = "RequestId"
        }
    }

    /// 查询边缘计算集群状态
    ///
    /// 获取边缘计算集群的当前状态以及过程信息
    @inlinable
    public func describeTKEEdgeClusterStatus(_ input: DescribeTKEEdgeClusterStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeClusterStatusResponse> {
        self.client.execute(action: "DescribeTKEEdgeClusterStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询边缘计算集群状态
    ///
    /// 获取边缘计算集群的当前状态以及过程信息
    @inlinable
    public func describeTKEEdgeClusterStatus(_ input: DescribeTKEEdgeClusterStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeClusterStatusResponse {
        try await self.client.execute(action: "DescribeTKEEdgeClusterStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询边缘计算集群状态
    ///
    /// 获取边缘计算集群的当前状态以及过程信息
    @inlinable
    public func describeTKEEdgeClusterStatus(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTKEEdgeClusterStatusResponse> {
        self.describeTKEEdgeClusterStatus(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询边缘计算集群状态
    ///
    /// 获取边缘计算集群的当前状态以及过程信息
    @inlinable
    public func describeTKEEdgeClusterStatus(clusterId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTKEEdgeClusterStatusResponse {
        try await self.describeTKEEdgeClusterStatus(.init(clusterId: clusterId), region: region, logger: logger, on: eventLoop)
    }
}
