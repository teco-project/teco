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
import TecoPaginationHelpers

extension Tke {
    /// GetUpgradeInstanceProgress请求参数结构体
    public struct GetUpgradeInstanceProgressRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 最多获取多少个节点的进度
        public let limit: Int64?

        /// 从第几个节点开始获取进度
        public let offset: Int64?

        public init(clusterId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.clusterId = clusterId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetUpgradeInstanceProgressResponse) -> GetUpgradeInstanceProgressRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetUpgradeInstanceProgressRequest(clusterId: self.clusterId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// GetUpgradeInstanceProgress返回参数结构体
    public struct GetUpgradeInstanceProgressResponse: TCPaginatedResponse {
        /// 升级节点总数
        public let total: Int64

        /// 已升级节点总数
        public let done: Int64

        /// 升级任务生命周期
        /// process 运行中
        /// paused 已停止
        /// pauing 正在停止
        /// done  已完成
        /// timeout 已超时
        /// aborted 已取消
        public let lifeState: String

        /// 各节点升级进度详情
        public let instances: [InstanceUpgradeProgressItem]

        /// 集群当前状态
        public let clusterStatus: InstanceUpgradeClusterStatus

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case done = "Done"
            case lifeState = "LifeState"
            case instances = "Instances"
            case clusterStatus = "ClusterStatus"
            case requestId = "RequestId"
        }

        /// Extract the returned ``InstanceUpgradeProgressItem`` list from the paginated response.
        public func getItems() -> [InstanceUpgradeProgressItem] {
            self.instances
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获得节点升级当前的进度
    @inlinable
    public func getUpgradeInstanceProgress(_ input: GetUpgradeInstanceProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeInstanceProgressResponse> {
        self.client.execute(action: "GetUpgradeInstanceProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获得节点升级当前的进度
    @inlinable
    public func getUpgradeInstanceProgress(_ input: GetUpgradeInstanceProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeInstanceProgressResponse {
        try await self.client.execute(action: "GetUpgradeInstanceProgress", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获得节点升级当前的进度
    @inlinable
    public func getUpgradeInstanceProgress(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUpgradeInstanceProgressResponse> {
        self.getUpgradeInstanceProgress(.init(clusterId: clusterId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获得节点升级当前的进度
    @inlinable
    public func getUpgradeInstanceProgress(clusterId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUpgradeInstanceProgressResponse {
        try await self.getUpgradeInstanceProgress(.init(clusterId: clusterId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获得节点升级当前的进度
    @inlinable
    public func getUpgradeInstanceProgressPaginated(_ input: GetUpgradeInstanceProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [InstanceUpgradeProgressItem])> {
        self.client.paginate(input: input, region: region, command: self.getUpgradeInstanceProgress, logger: logger, on: eventLoop)
    }

    /// 获得节点升级当前的进度
    @inlinable @discardableResult
    public func getUpgradeInstanceProgressPaginated(_ input: GetUpgradeInstanceProgressRequest, region: TCRegion? = nil, onResponse: @escaping (GetUpgradeInstanceProgressResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getUpgradeInstanceProgress, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获得节点升级当前的进度
    ///
    /// - Returns: `AsyncSequence`s of ``InstanceUpgradeProgressItem`` and ``GetUpgradeInstanceProgressResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func getUpgradeInstanceProgressPaginator(_ input: GetUpgradeInstanceProgressRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetUpgradeInstanceProgressRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getUpgradeInstanceProgress, logger: logger, on: eventLoop)
    }
}
