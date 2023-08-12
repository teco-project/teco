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

extension Cynosdb {
    /// DescribeClusterParamLogs请求参数结构体
    public struct DescribeClusterParamLogsRequest: TCPaginatedRequest {
        /// 集群ID
        public let clusterId: String

        /// 实例ID列表，用来记录具体操作哪些实例
        public let instanceIds: [String]?

        /// 排序字段，定义在回返结果的基于哪个字段进行排序
        public let orderBy: String?

        /// 定义具体的排序规则，限定为desc,asc,DESC,ASC其中之一
        public let orderByType: String?

        /// 返回数量，默认为 20，取值范围为(0,100]
        public let limit: Int64?

        /// 记录偏移量，默认值为0，取值范围为[0,INF)
        public let offset: Int64?

        public init(clusterId: String, instanceIds: [String]? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.clusterId = clusterId
            self.instanceIds = instanceIds
            self.orderBy = orderBy
            self.orderByType = orderByType
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case instanceIds = "InstanceIds"
            case orderBy = "OrderBy"
            case orderByType = "OrderByType"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeClusterParamLogsResponse) -> DescribeClusterParamLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeClusterParamLogsRequest(clusterId: self.clusterId, instanceIds: self.instanceIds, orderBy: self.orderBy, orderByType: self.orderByType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeClusterParamLogs返回参数结构体
    public struct DescribeClusterParamLogsResponse: TCPaginatedResponse {
        /// 记录总数
        public let totalCount: Int64

        /// 参数修改记录
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let clusterParamLogs: [ClusterParamModifyLog]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case clusterParamLogs = "ClusterParamLogs"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ClusterParamModifyLog`` list from the paginated response.
        public func getItems() -> [ClusterParamModifyLog] {
            self.clusterParamLogs ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable
    public func describeClusterParamLogs(_ input: DescribeClusterParamLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterParamLogsResponse> {
        self.client.execute(action: "DescribeClusterParamLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable
    public func describeClusterParamLogs(_ input: DescribeClusterParamLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterParamLogsResponse {
        try await self.client.execute(action: "DescribeClusterParamLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable
    public func describeClusterParamLogs(clusterId: String, instanceIds: [String]? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterParamLogsResponse> {
        self.describeClusterParamLogs(.init(clusterId: clusterId, instanceIds: instanceIds, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable
    public func describeClusterParamLogs(clusterId: String, instanceIds: [String]? = nil, orderBy: String? = nil, orderByType: String? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterParamLogsResponse {
        try await self.describeClusterParamLogs(.init(clusterId: clusterId, instanceIds: instanceIds, orderBy: orderBy, orderByType: orderByType, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable
    public func describeClusterParamLogsPaginated(_ input: DescribeClusterParamLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ClusterParamModifyLog])> {
        self.client.paginate(input: input, region: region, command: self.describeClusterParamLogs, logger: logger, on: eventLoop)
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    @inlinable @discardableResult
    public func describeClusterParamLogsPaginated(_ input: DescribeClusterParamLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeClusterParamLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeClusterParamLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询参数修改日志
    ///
    /// 本接口（DescribeClusterParamLogs）查询参数修改日志
    ///
    /// - Returns: `AsyncSequence`s of `ClusterParamModifyLog` and `DescribeClusterParamLogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeClusterParamLogsPaginator(_ input: DescribeClusterParamLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeClusterParamLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeClusterParamLogs, logger: logger, on: eventLoop)
    }
}
