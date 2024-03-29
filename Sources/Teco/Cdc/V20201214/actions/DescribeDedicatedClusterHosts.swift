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

extension Cdc {
    /// DescribeDedicatedClusterHosts请求参数结构体
    public struct DescribeDedicatedClusterHostsRequest: TCPaginatedRequest {
        /// 集群id
        public let dedicatedClusterId: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20
        public let limit: UInt64?

        public init(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.dedicatedClusterId = dedicatedClusterId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case dedicatedClusterId = "DedicatedClusterId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDedicatedClusterHostsResponse) -> DescribeDedicatedClusterHostsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(dedicatedClusterId: self.dedicatedClusterId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDedicatedClusterHosts返回参数结构体
    public struct DescribeDedicatedClusterHostsResponse: TCPaginatedResponse {
        /// 宿主机信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hostInfoSet: [HostInfo]?

        /// 宿主机总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case hostInfoSet = "HostInfoSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``HostInfo`` list from the paginated response.
        public func getItems() -> [HostInfo] {
            self.hostInfoSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(_ input: DescribeDedicatedClusterHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterHostsResponse> {
        self.client.execute(action: "DescribeDedicatedClusterHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(_ input: DescribeDedicatedClusterHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostsResponse {
        try await self.client.execute(action: "DescribeDedicatedClusterHosts", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDedicatedClusterHostsResponse> {
        self.describeDedicatedClusterHosts(.init(dedicatedClusterId: dedicatedClusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHosts(dedicatedClusterId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDedicatedClusterHostsResponse {
        try await self.describeDedicatedClusterHosts(.init(dedicatedClusterId: dedicatedClusterId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable
    public func describeDedicatedClusterHostsPaginated(_ input: DescribeDedicatedClusterHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HostInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDedicatedClusterHosts, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    @inlinable @discardableResult
    public func describeDedicatedClusterHostsPaginated(_ input: DescribeDedicatedClusterHostsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDedicatedClusterHostsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDedicatedClusterHosts, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 专用集群宿主机信息
    ///
    /// - Returns: `AsyncSequence`s of ``HostInfo`` and ``DescribeDedicatedClusterHostsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDedicatedClusterHostsPaginator(_ input: DescribeDedicatedClusterHostsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDedicatedClusterHostsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDedicatedClusterHosts, logger: logger, on: eventLoop)
    }
}
