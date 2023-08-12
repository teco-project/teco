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

extension Trp {
    /// DescribeCorpQuotas请求参数结构体
    public struct DescribeCorpQuotasRequest: TCPaginatedRequest {
        /// 渠道商ID，不要传
        public let agentId: UInt64?

        /// 页数
        public let pageNumber: UInt64?

        /// 每页数量
        public let pageSize: UInt64?

        /// 搜索企业ID
        public let keyword: String?

        public init(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil) {
            self.agentId = agentId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case agentId = "AgentId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case keyword = "Keyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeCorpQuotasResponse) -> DescribeCorpQuotasRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeCorpQuotasRequest(agentId: self.agentId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, keyword: self.keyword)
        }
    }

    /// DescribeCorpQuotas返回参数结构体
    public struct DescribeCorpQuotasResponse: TCPaginatedResponse {
        /// 子企业额度使用情况
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let corpQuotas: [CorpQuota]?

        /// 记录总数量
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let total: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case corpQuotas = "CorpQuotas"
            case total = "Total"
            case requestId = "RequestId"
        }

        /// Extract the returned ``CorpQuota`` list from the paginated response.
        public func getItems() -> [CorpQuota] {
            self.corpQuotas ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(_ input: DescribeCorpQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCorpQuotasResponse> {
        self.client.execute(action: "DescribeCorpQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(_ input: DescribeCorpQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCorpQuotasResponse {
        try await self.client.execute(action: "DescribeCorpQuotas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCorpQuotasResponse> {
        self.describeCorpQuotas(.init(agentId: agentId, pageNumber: pageNumber, pageSize: pageSize, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotas(agentId: UInt64? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCorpQuotasResponse {
        try await self.describeCorpQuotas(.init(agentId: agentId, pageNumber: pageNumber, pageSize: pageSize, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable
    public func describeCorpQuotasPaginated(_ input: DescribeCorpQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [CorpQuota])> {
        self.client.paginate(input: input, region: region, command: self.describeCorpQuotas, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    @inlinable @discardableResult
    public func describeCorpQuotasPaginated(_ input: DescribeCorpQuotasRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeCorpQuotasResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeCorpQuotas, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询渠道商下属企业额度使用情况
    ///
    /// - Returns: `AsyncSequence`s of ``CorpQuota`` and ``DescribeCorpQuotasResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeCorpQuotasPaginator(_ input: DescribeCorpQuotasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeCorpQuotasRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeCorpQuotas, logger: logger, on: eventLoop)
    }
}
