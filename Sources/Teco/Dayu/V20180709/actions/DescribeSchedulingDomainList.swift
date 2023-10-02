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

extension Dayu {
    /// DescribeSchedulingDomainList请求参数结构体
    public struct DescribeSchedulingDomainListRequest: TCPaginatedRequest {
        /// 一页条数，填0表示不分页
        public let limit: UInt64

        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 可选，筛选特定的域名
        public let domain: String?

        public init(limit: UInt64, offset: UInt64, domain: String? = nil) {
            self.limit = limit
            self.offset = offset
            self.domain = domain
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
            case domain = "Domain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSchedulingDomainListResponse) -> DescribeSchedulingDomainListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(limit: self.limit, offset: self.offset + .init(response.getItems().count), domain: self.domain)
        }
    }

    /// DescribeSchedulingDomainList返回参数结构体
    public struct DescribeSchedulingDomainListResponse: TCPaginatedResponse {
        /// 调度域名总数
        public let total: UInt64

        /// 调度域名列表信息
        public let domainList: [SchedulingDomain]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case domainList = "DomainList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SchedulingDomain`` list from the paginated response.
        public func getItems() -> [SchedulingDomain] {
            self.domainList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取调度域名列表
    @inlinable
    public func describeSchedulingDomainList(_ input: DescribeSchedulingDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulingDomainListResponse> {
        self.client.execute(action: "DescribeSchedulingDomainList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取调度域名列表
    @inlinable
    public func describeSchedulingDomainList(_ input: DescribeSchedulingDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulingDomainListResponse {
        try await self.client.execute(action: "DescribeSchedulingDomainList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取调度域名列表
    @inlinable
    public func describeSchedulingDomainList(limit: UInt64, offset: UInt64, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSchedulingDomainListResponse> {
        self.describeSchedulingDomainList(.init(limit: limit, offset: offset, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取调度域名列表
    @inlinable
    public func describeSchedulingDomainList(limit: UInt64, offset: UInt64, domain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSchedulingDomainListResponse {
        try await self.describeSchedulingDomainList(.init(limit: limit, offset: offset, domain: domain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取调度域名列表
    @inlinable
    public func describeSchedulingDomainListPaginated(_ input: DescribeSchedulingDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SchedulingDomain])> {
        self.client.paginate(input: input, region: region, command: self.describeSchedulingDomainList, logger: logger, on: eventLoop)
    }

    /// 获取调度域名列表
    @inlinable @discardableResult
    public func describeSchedulingDomainListPaginated(_ input: DescribeSchedulingDomainListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSchedulingDomainListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSchedulingDomainList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取调度域名列表
    ///
    /// - Returns: `AsyncSequence`s of ``SchedulingDomain`` and ``DescribeSchedulingDomainListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSchedulingDomainListPaginator(_ input: DescribeSchedulingDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSchedulingDomainListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSchedulingDomainList, logger: logger, on: eventLoop)
    }
}
