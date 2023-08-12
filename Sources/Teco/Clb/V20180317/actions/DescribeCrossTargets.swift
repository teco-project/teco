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

extension Clb {
    /// DescribeCrossTargets请求参数结构体
    public struct DescribeCrossTargetsRequest: TCPaginatedRequest {
        /// 返回后端服务列表数目，默认20，最大值100。
        public let limit: UInt64?

        /// 返回后端服务列表起始偏移量，默认0。
        public let offset: UInt64?

        /// 查询跨域2.0版本云联网后端子机和网卡服务列表条件，详细的过滤条件如下：
        /// <li> vpc-id - String - 是否必填：否 - （过滤条件）按照 本地私有网络ID，即负载均衡的VpcId 过滤，如："vpc-12345678"。</li>
        /// <li> ip - String - 是否必填：否 - （过滤条件）按照 后端服务ip 过滤，如："192.168.0.1"。</li>
        /// <li> listener-id - String - 是否必填：否 - （过滤条件）按照 监听器ID 过滤，如："lbl-12345678"。</li>
        /// <li> location-id - String - 是否必填：否 - （过滤条件）按照 七层监听器规则ID 过滤，如："loc-12345678"。</li>
        public let filters: [Filter]?

        public init(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCrossTargetsResponse) -> DescribeCrossTargetsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCrossTargetsRequest(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeCrossTargets返回参数结构体
    public struct DescribeCrossTargetsResponse: TCPaginatedResponse {
        /// 后端服务列表总数。
        public let totalCount: UInt64

        /// 后端服务列表。
        public let crossTargetSet: [CrossTargets]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case crossTargetSet = "CrossTargetSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CrossTargets`` list from the paginated response.
        public func getItems() -> [CrossTargets] {
            self.crossTargetSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable
    public func describeCrossTargets(_ input: DescribeCrossTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossTargetsResponse> {
        self.client.execute(action: "DescribeCrossTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable
    public func describeCrossTargets(_ input: DescribeCrossTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossTargetsResponse {
        try await self.client.execute(action: "DescribeCrossTargets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable
    public func describeCrossTargets(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossTargetsResponse> {
        self.describeCrossTargets(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable
    public func describeCrossTargets(limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossTargetsResponse {
        try await self.describeCrossTargets(.init(limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable
    public func describeCrossTargetsPaginated(_ input: DescribeCrossTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CrossTargets])> {
        self.client.paginate(input: input, region: region, command: self.describeCrossTargets, logger: logger, on: eventLoop)
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    @inlinable @discardableResult
    public func describeCrossTargetsPaginated(_ input: DescribeCrossTargetsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCrossTargetsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCrossTargets, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询跨域2.0版本云联网后端子机和网卡信息
    ///
    /// 查询跨域2.0版本云联网后端子机和网卡信息。
    ///
    /// - Returns: `AsyncSequence`s of `CrossTargets` and `DescribeCrossTargetsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCrossTargetsPaginator(_ input: DescribeCrossTargetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCrossTargetsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCrossTargets, logger: logger, on: eventLoop)
    }
}
