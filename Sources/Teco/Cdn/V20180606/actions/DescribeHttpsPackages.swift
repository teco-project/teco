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

extension Cdn {
    /// DescribeHttpsPackages请求参数结构体
    public struct DescribeHttpsPackagesRequest: TCPaginatedRequest {
        /// 分页查询起始地址，默认 0
        public let offset: Int64?

        /// 分页查询记录个数，默认100，最大1000
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHttpsPackagesResponse) -> DescribeHttpsPackagesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHttpsPackagesRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeHttpsPackages返回参数结构体
    public struct DescribeHttpsPackagesResponse: TCPaginatedResponse {
        /// HTTPS请求包总个数
        public let totalCount: Int64

        /// HTTPS请求包详情
        public let httpsPackages: [HttpsPackage]

        /// 即将过期的HTTPS请求包个数（7天内）
        public let expiringCount: Int64

        /// 有效HTTPS请求包个数
        public let enabledCount: Int64

        /// 付费HTTPS请求包个数
        public let paidCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case httpsPackages = "HttpsPackages"
            case expiringCount = "ExpiringCount"
            case enabledCount = "EnabledCount"
            case paidCount = "PaidCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HttpsPackage] {
            self.httpsPackages
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable
    public func describeHttpsPackages(_ input: DescribeHttpsPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHttpsPackagesResponse> {
        self.client.execute(action: "DescribeHttpsPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable
    public func describeHttpsPackages(_ input: DescribeHttpsPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHttpsPackagesResponse {
        try await self.client.execute(action: "DescribeHttpsPackages", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable
    public func describeHttpsPackages(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHttpsPackagesResponse> {
        self.describeHttpsPackages(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable
    public func describeHttpsPackages(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHttpsPackagesResponse {
        try await self.describeHttpsPackages(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable
    public func describeHttpsPackagesPaginated(_ input: DescribeHttpsPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [HttpsPackage])> {
        self.client.paginate(input: input, region: region, command: self.describeHttpsPackages, logger: logger, on: eventLoop)
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    @inlinable @discardableResult
    public func describeHttpsPackagesPaginated(_ input: DescribeHttpsPackagesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHttpsPackagesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHttpsPackages, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// HTTPS请求包查询
    ///
    /// DescribeHttpsPackages 用于查询 CDN HTTPS请求包详情。
    ///
    /// - Returns: `AsyncSequence`s of `HttpsPackage` and `DescribeHttpsPackagesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHttpsPackagesPaginator(_ input: DescribeHttpsPackagesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHttpsPackagesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHttpsPackages, logger: logger, on: eventLoop)
    }
}
