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

extension Cdn {
    /// ListScdnDomains请求参数结构体
    public struct ListScdnDomainsRequest: TCPaginatedRequest {
        /// 分页起始地址
        public let offset: Int64?

        /// 列表分页记录条数，最大1000
        public let limit: Int64?

        /// 域名信息
        public let domain: String?

        public init(offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case domain = "Domain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListScdnDomainsResponse) -> ListScdnDomainsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, domain: self.domain)
        }
    }

    /// ListScdnDomains返回参数结构体
    public struct ListScdnDomainsResponse: TCPaginatedResponse {
        /// 域名列表信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainList: [ScdnDomain]?

        /// 域名的总条数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainList = "DomainList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ScdnDomain`` list from the paginated response.
        public func getItems() -> [ScdnDomain] {
            self.domainList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable
    public func listScdnDomains(_ input: ListScdnDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListScdnDomainsResponse> {
        self.client.execute(action: "ListScdnDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable
    public func listScdnDomains(_ input: ListScdnDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScdnDomainsResponse {
        try await self.client.execute(action: "ListScdnDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable
    public func listScdnDomains(offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListScdnDomainsResponse> {
        self.listScdnDomains(.init(offset: offset, limit: limit, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable
    public func listScdnDomains(offset: Int64? = nil, limit: Int64? = nil, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListScdnDomainsResponse {
        try await self.listScdnDomains(.init(offset: offset, limit: limit, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable
    public func listScdnDomainsPaginated(_ input: ListScdnDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ScdnDomain])> {
        self.client.paginate(input: input, region: region, command: self.listScdnDomains, logger: logger, on: eventLoop)
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    @inlinable @discardableResult
    public func listScdnDomainsPaginated(_ input: ListScdnDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (ListScdnDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.listScdnDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询SCDN域名列表
    ///
    /// ListScdnDomains 用于查询 SCDN 安全加速域名列表，及域名基本配置信息
    ///
    /// - Returns: `AsyncSequence`s of ``ScdnDomain`` and ``ListScdnDomainsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func listScdnDomainsPaginator(_ input: ListScdnDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListScdnDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.listScdnDomains, logger: logger, on: eventLoop)
    }
}
