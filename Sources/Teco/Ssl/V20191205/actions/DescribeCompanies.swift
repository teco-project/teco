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

extension Ssl {
    /// DescribeCompanies请求参数结构体
    public struct DescribeCompaniesRequest: TCPaginatedRequest {
        /// 分页偏移量
        public let offset: Int64?

        /// 分页每页限制数
        public let limit: Int64?

        /// 公司ID
        public let companyId: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil, companyId: Int64? = nil) {
            self.offset = offset
            self.limit = limit
            self.companyId = companyId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case companyId = "CompanyId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCompaniesResponse) -> DescribeCompaniesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, companyId: self.companyId)
        }
    }

    /// DescribeCompanies返回参数结构体
    public struct DescribeCompaniesResponse: TCPaginatedResponse {
        /// 公司列表
        public let companies: [CompanyInfo]

        /// 公司总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case companies = "Companies"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CompanyInfo`` list from the paginated response.
        public func getItems() -> [CompanyInfo] {
            self.companies
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询公司列表
    @inlinable
    public func describeCompanies(_ input: DescribeCompaniesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompaniesResponse> {
        self.client.execute(action: "DescribeCompanies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询公司列表
    @inlinable
    public func describeCompanies(_ input: DescribeCompaniesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompaniesResponse {
        try await self.client.execute(action: "DescribeCompanies", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询公司列表
    @inlinable
    public func describeCompanies(offset: Int64? = nil, limit: Int64? = nil, companyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCompaniesResponse> {
        self.describeCompanies(.init(offset: offset, limit: limit, companyId: companyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询公司列表
    @inlinable
    public func describeCompanies(offset: Int64? = nil, limit: Int64? = nil, companyId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCompaniesResponse {
        try await self.describeCompanies(.init(offset: offset, limit: limit, companyId: companyId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询公司列表
    @inlinable
    public func describeCompaniesPaginated(_ input: DescribeCompaniesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [CompanyInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeCompanies, logger: logger, on: eventLoop)
    }

    /// 查询公司列表
    @inlinable @discardableResult
    public func describeCompaniesPaginated(_ input: DescribeCompaniesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCompaniesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCompanies, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询公司列表
    ///
    /// - Returns: `AsyncSequence`s of ``CompanyInfo`` and ``DescribeCompaniesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCompaniesPaginator(_ input: DescribeCompaniesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCompaniesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCompanies, logger: logger, on: eventLoop)
    }
}
