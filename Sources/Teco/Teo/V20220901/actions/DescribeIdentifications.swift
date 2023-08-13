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

extension Teo {
    /// DescribeIdentifications请求参数结构体
    public struct DescribeIdentificationsRequest: TCPaginatedRequest {
        /// 过滤条件，Filters.Values的上限为20。详细的过滤条件如下：
        /// <li>zone-name
        ///
        /// 按照【**站点名称**】进行过滤。
        ///
        /// 类型：String
        ///
        /// 必选：是</li>
        public let filters: [Filter]

        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：1000。
        public let limit: Int64?

        public init(filters: [Filter], offset: Int64? = nil, limit: Int64? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIdentificationsResponse) -> DescribeIdentificationsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeIdentificationsRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeIdentifications返回参数结构体
    public struct DescribeIdentificationsResponse: TCPaginatedResponse {
        /// 符合条件的站点个数。
        public let totalCount: Int64

        /// 站点验证信息列表。
        public let identifications: [Identification]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case identifications = "Identifications"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Identification`` list from the paginated response.
        public func getItems() -> [Identification] {
            self.identifications
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable
    public func describeIdentifications(_ input: DescribeIdentificationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdentificationsResponse> {
        self.client.execute(action: "DescribeIdentifications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable
    public func describeIdentifications(_ input: DescribeIdentificationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdentificationsResponse {
        try await self.client.execute(action: "DescribeIdentifications", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable
    public func describeIdentifications(filters: [Filter], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIdentificationsResponse> {
        self.describeIdentifications(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable
    public func describeIdentifications(filters: [Filter], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIdentificationsResponse {
        try await self.describeIdentifications(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable
    public func describeIdentificationsPaginated(_ input: DescribeIdentificationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Identification])> {
        self.client.paginate(input: input, region: region, command: self.describeIdentifications, logger: logger, on: eventLoop)
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    @inlinable @discardableResult
    public func describeIdentificationsPaginated(_ input: DescribeIdentificationsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIdentificationsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIdentifications, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询站点的验证信息
    ///
    /// 查询站点的验证信息。
    ///
    /// - Returns: `AsyncSequence`s of ``Identification`` and ``DescribeIdentificationsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIdentificationsPaginator(_ input: DescribeIdentificationsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIdentificationsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIdentifications, logger: logger, on: eventLoop)
    }
}
