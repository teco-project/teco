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

extension Cfw {
    /// DescribeNatFwInstancesInfo请求参数结构体
    public struct DescribeNatFwInstancesInfoRequest: TCPaginatedRequest {
        /// 获取实例列表过滤字段
        public let filter: [NatFwFilter]?

        /// 第几页
        public let offset: Int64?

        /// 每页长度
        public let limit: Int64?

        public init(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.filter = filter
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filter = "Filter"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNatFwInstancesInfoResponse) -> DescribeNatFwInstancesInfoRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNatFwInstancesInfoRequest(filter: self.filter, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeNatFwInstancesInfo返回参数结构体
    public struct DescribeNatFwInstancesInfoResponse: TCPaginatedResponse {
        /// 实例卡片信息数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let natinsLst: [NatInstanceInfo]?

        /// nat 防火墙个数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case natinsLst = "NatinsLst"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NatInstanceInfo] {
            self.natinsLst ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstancesInfoResponse> {
        self.client.execute(action: "DescribeNatFwInstancesInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstancesInfoResponse {
        try await self.client.execute(action: "DescribeNatFwInstancesInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNatFwInstancesInfoResponse> {
        self.describeNatFwInstancesInfo(.init(filter: filter, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfo(filter: [NatFwFilter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNatFwInstancesInfoResponse {
        try await self.describeNatFwInstancesInfo(.init(filter: filter, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable
    public func describeNatFwInstancesInfoPaginated(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [NatInstanceInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeNatFwInstancesInfo, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    @inlinable @discardableResult
    public func describeNatFwInstancesInfoPaginated(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNatFwInstancesInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNatFwInstancesInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取租户所有NAT实例卡片信息
    ///
    /// GetNatInstance 获取租户所有NAT实例及实例卡片信息
    ///
    /// - Returns: `AsyncSequence`s of `NatInstanceInfo` and `DescribeNatFwInstancesInfoResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNatFwInstancesInfoPaginator(_ input: DescribeNatFwInstancesInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNatFwInstancesInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNatFwInstancesInfo, logger: logger, on: eventLoop)
    }
}
