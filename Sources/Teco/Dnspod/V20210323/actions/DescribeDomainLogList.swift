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

extension Dnspod {
    /// DescribeDomainLogList请求参数结构体
    public struct DescribeDomainLogListRequest: TCPaginatedRequest {
        /// 域名
        public let domain: String

        /// 域名 ID 。参数 DomainId 优先级比参数 Domain 高，如果传递参数 DomainId 将忽略参数 Domain 。可以通过接口DescribeDomainList查到所有的Domain以及DomainId
        public let domainId: UInt64?

        /// 记录开始的偏移，第一条记录为 0，依次类推，默认为0
        public let offset: UInt64?

        /// 共要获取的日志条数，比如获取20条，则为20，默认为500条，单次最多获取500条。
        public let limit: UInt64?

        public init(domain: String, domainId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.domain = domain
            self.domainId = domainId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case domain = "Domain"
            case domainId = "DomainId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDomainLogListResponse) -> DescribeDomainLogListRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(domain: self.domain, domainId: self.domainId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeDomainLogList返回参数结构体
    public struct DescribeDomainLogListResponse: TCPaginatedResponse {
        /// 域名信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let logList: [String]?

        /// 分页大小
        public let pageSize: UInt64

        /// 日志总条数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logList = "LogList"
            case pageSize = "PageSize"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``String`` list from the paginated response.
        public func getItems() -> [String] {
            self.logList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取域名日志
    @inlinable
    public func describeDomainLogList(_ input: DescribeDomainLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainLogListResponse> {
        self.client.execute(action: "DescribeDomainLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名日志
    @inlinable
    public func describeDomainLogList(_ input: DescribeDomainLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainLogListResponse {
        try await self.client.execute(action: "DescribeDomainLogList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名日志
    @inlinable
    public func describeDomainLogList(domain: String, domainId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainLogListResponse> {
        self.describeDomainLogList(.init(domain: domain, domainId: domainId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名日志
    @inlinable
    public func describeDomainLogList(domain: String, domainId: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainLogListResponse {
        try await self.describeDomainLogList(.init(domain: domain, domainId: domainId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名日志
    @inlinable
    public func describeDomainLogListPaginated(_ input: DescribeDomainLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [String])> {
        self.client.paginate(input: input, region: region, command: self.describeDomainLogList, logger: logger, on: eventLoop)
    }

    /// 获取域名日志
    @inlinable @discardableResult
    public func describeDomainLogListPaginated(_ input: DescribeDomainLogListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainLogListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomainLogList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取域名日志
    ///
    /// - Returns: `AsyncSequence`s of ``String`` and ``DescribeDomainLogListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainLogListPaginator(_ input: DescribeDomainLogListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainLogListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomainLogList, logger: logger, on: eventLoop)
    }
}
