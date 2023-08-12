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
    /// DescribeDefaultCertificates请求参数结构体
    public struct DescribeDefaultCertificatesRequest: TCPaginatedRequest {
        /// 过滤条件，Filters.Values的上限为5。详细的过滤条件如下：
        /// <li>zone-id
        ///
        /// 按照【<strong>站点ID</strong>】进行过滤。站点ID形如：zone-xxx。
        ///
        /// 类型：String
        ///
        /// 必选：是 </li>
        public let filters: [Filter]

        /// 分页查询偏移量。默认值：0。
        public let offset: Int64?

        /// 分页查询限制数目。默认值：20，最大值：100。
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
        public func makeNextRequest(with response: DescribeDefaultCertificatesResponse) -> DescribeDefaultCertificatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDefaultCertificatesRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDefaultCertificates返回参数结构体
    public struct DescribeDefaultCertificatesResponse: TCPaginatedResponse {
        /// 证书总数。
        public let totalCount: Int64

        /// 默认证书列表。
        public let defaultServerCertInfo: [DefaultServerCertInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case defaultServerCertInfo = "DefaultServerCertInfo"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DefaultServerCertInfo`` list from the paginated response.
        public func getItems() -> [DefaultServerCertInfo] {
            self.defaultServerCertInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultCertificatesResponse> {
        self.client.execute(action: "DescribeDefaultCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultCertificatesResponse {
        try await self.client.execute(action: "DescribeDefaultCertificates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(filters: [Filter], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDefaultCertificatesResponse> {
        self.describeDefaultCertificates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificates(filters: [Filter], offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDefaultCertificatesResponse {
        try await self.describeDefaultCertificates(.init(filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable
    public func describeDefaultCertificatesPaginated(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DefaultServerCertInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDefaultCertificates, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    @inlinable @discardableResult
    public func describeDefaultCertificatesPaginated(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDefaultCertificatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDefaultCertificates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询默认证书列表
    ///
    /// - Returns: `AsyncSequence`s of ``DefaultServerCertInfo`` and ``DescribeDefaultCertificatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDefaultCertificatesPaginator(_ input: DescribeDefaultCertificatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDefaultCertificatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDefaultCertificates, logger: logger, on: eventLoop)
    }
}
