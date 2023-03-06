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

extension Teo {
    /// DescribeHostsCertificate请求参数结构体
    public struct DescribeHostsCertificateRequest: TCPaginatedRequest {
        /// Zone ID
        public let zoneId: String

        /// 分页查询偏移量，默认为 0
        public let offset: Int64?

        /// 分页查询限制数目，默认为 100，最大可设置为 1000
        public let limit: Int64?

        /// 查询条件过滤器
        public let filters: [CertFilter]?

        /// 排序方式
        public let sort: CertSort?

        public init(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [CertFilter]? = nil, sort: CertSort? = nil) {
            self.zoneId = zoneId
            self.offset = offset
            self.limit = limit
            self.filters = filters
            self.sort = sort
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
            case sort = "Sort"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeHostsCertificateResponse) -> DescribeHostsCertificateRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHostsCertificateRequest(zoneId: self.zoneId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters, sort: self.sort)
        }
    }

    /// DescribeHostsCertificate返回参数结构体
    public struct DescribeHostsCertificateResponse: TCPaginatedResponse {
        /// 总数，用于分页查询
        public let totalCount: Int64

        /// 域名证书配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let hosts: [HostCertSetting]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case hosts = "Hosts"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HostCertSetting] {
            self.hosts ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeHostsCertificate(_ input: DescribeHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostsCertificateResponse> {
        self.client.execute(action: "DescribeHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeHostsCertificate(_ input: DescribeHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsCertificateResponse {
        try await self.client.execute(action: "DescribeHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeHostsCertificate(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [CertFilter]? = nil, sort: CertSort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHostsCertificateResponse> {
        let input = DescribeHostsCertificateRequest(zoneId: zoneId, offset: offset, limit: limit, filters: filters, sort: sort)
        return self.client.execute(action: "DescribeHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeHostsCertificate(zoneId: String, offset: Int64? = nil, limit: Int64? = nil, filters: [CertFilter]? = nil, sort: CertSort? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHostsCertificateResponse {
        let input = DescribeHostsCertificateRequest(zoneId: zoneId, offset: offset, limit: limit, filters: filters, sort: sort)
        return try await self.client.execute(action: "DescribeHostsCertificate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable
    public func describeHostsCertificatePaginated(_ input: DescribeHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [HostCertSetting])> {
        self.client.paginate(input: input, region: region, command: self.describeHostsCertificate, logger: logger, on: eventLoop)
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    @inlinable @discardableResult
    public func describeHostsCertificatePaginated(_ input: DescribeHostsCertificateRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHostsCertificateResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHostsCertificate, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询域名证书列表
    ///
    /// 查询域名证书列表，支持搜索、分页、排序、过滤。
    ///
    /// - Returns: `AsyncSequence`s of `HostCertSetting` and `DescribeHostsCertificateResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeHostsCertificatePaginator(_ input: DescribeHostsCertificateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeHostsCertificateRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeHostsCertificate, logger: logger, on: eventLoop)
    }
}
