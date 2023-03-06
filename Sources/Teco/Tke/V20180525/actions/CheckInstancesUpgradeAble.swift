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

import TecoPaginationHelpers

extension Tke {
    /// CheckInstancesUpgradeAble请求参数结构体
    public struct CheckInstancesUpgradeAbleRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 节点列表，空为全部节点
        public let instanceIds: [String]?

        /// 升级类型
        public let upgradeType: String?

        /// 分页Offset
        public let offset: Int64?

        /// 分页Limit
        public let limit: Int64?

        /// 过滤
        public let filter: [Filter]?

        public init(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.upgradeType = upgradeType
            self.offset = offset
            self.limit = limit
            self.filter = filter
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case upgradeType = "UpgradeType"
            case offset = "Offset"
            case limit = "Limit"
            case filter = "Filter"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: CheckInstancesUpgradeAbleResponse) -> CheckInstancesUpgradeAbleRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return CheckInstancesUpgradeAbleRequest(clusterId: self.clusterId, instanceIds: self.instanceIds, upgradeType: self.upgradeType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filter: self.filter)
        }
    }

    /// CheckInstancesUpgradeAble返回参数结构体
    public struct CheckInstancesUpgradeAbleResponse: TCPaginatedResponse {
        /// 集群master当前小版本
        public let clusterVersion: String

        /// 集群master对应的大版本目前最新小版本
        public let latestVersion: String

        /// 可升级节点列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let upgradeAbleInstances: [UpgradeAbleInstancesItem]?

        /// 总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case clusterVersion = "ClusterVersion"
            case latestVersion = "LatestVersion"
            case upgradeAbleInstances = "UpgradeAbleInstances"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UpgradeAbleInstancesItem] {
            self.upgradeAbleInstances ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckInstancesUpgradeAbleResponse> {
        self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInstancesUpgradeAbleResponse {
        try await self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CheckInstancesUpgradeAbleResponse> {
        let input = CheckInstancesUpgradeAbleRequest(clusterId: clusterId, instanceIds: instanceIds, upgradeType: upgradeType, offset: offset, limit: limit, filter: filter)
        return self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAble(clusterId: String, instanceIds: [String]? = nil, upgradeType: String? = nil, offset: Int64? = nil, limit: Int64? = nil, filter: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CheckInstancesUpgradeAbleResponse {
        let input = CheckInstancesUpgradeAbleRequest(clusterId: clusterId, instanceIds: instanceIds, upgradeType: upgradeType, offset: offset, limit: limit, filter: filter)
        return try await self.client.execute(action: "CheckInstancesUpgradeAble", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAblePaginated(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [UpgradeAbleInstancesItem])> {
        self.client.paginate(input: input, region: region, command: self.checkInstancesUpgradeAble, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAblePaginated(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, onResponse: @escaping (CheckInstancesUpgradeAbleResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.checkInstancesUpgradeAble, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 节点是否可升级
    ///
    /// 检查给定节点列表中哪些是可升级的
    @inlinable
    public func checkInstancesUpgradeAblePaginator(_ input: CheckInstancesUpgradeAbleRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<CheckInstancesUpgradeAbleRequest, CheckInstancesUpgradeAbleResponse>.ResultSequence, responses: TCClient.Paginator<CheckInstancesUpgradeAbleRequest, CheckInstancesUpgradeAbleResponse>.ResponseSequence) {
        let results = TCClient.Paginator<CheckInstancesUpgradeAbleRequest, CheckInstancesUpgradeAbleResponse>.ResultSequence(input: input, region: region, command: self.checkInstancesUpgradeAble, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<CheckInstancesUpgradeAbleRequest, CheckInstancesUpgradeAbleResponse>.ResponseSequence(input: input, region: region, command: self.checkInstancesUpgradeAble, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
