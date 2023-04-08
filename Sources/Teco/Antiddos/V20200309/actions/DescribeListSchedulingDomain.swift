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

import TecoCore
import TecoPaginationHelpers

extension Antiddos {
    /// DescribeListSchedulingDomain请求参数结构体
    public struct DescribeListSchedulingDomainRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为20;最大取值为100
        public let limit: UInt64

        /// 调度域名搜索
        public let filterDomain: String?

        public init(offset: UInt64, limit: UInt64, filterDomain: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterDomain = filterDomain
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterDomain = "FilterDomain"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeListSchedulingDomainResponse) -> DescribeListSchedulingDomainRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListSchedulingDomainRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterDomain: self.filterDomain)
        }
    }

    /// DescribeListSchedulingDomain返回参数结构体
    public struct DescribeListSchedulingDomainResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// 调度域名信息列表
        public let domainList: [SchedulingDomainInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case domainList = "DomainList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [SchedulingDomainInfo] {
            self.domainList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取智能调度域名列表
    @inlinable
    public func describeListSchedulingDomain(_ input: DescribeListSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListSchedulingDomainResponse> {
        self.client.execute(action: "DescribeListSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取智能调度域名列表
    @inlinable
    public func describeListSchedulingDomain(_ input: DescribeListSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListSchedulingDomainResponse {
        try await self.client.execute(action: "DescribeListSchedulingDomain", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取智能调度域名列表
    @inlinable
    public func describeListSchedulingDomain(offset: UInt64, limit: UInt64, filterDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListSchedulingDomainResponse> {
        self.describeListSchedulingDomain(.init(offset: offset, limit: limit, filterDomain: filterDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取智能调度域名列表
    @inlinable
    public func describeListSchedulingDomain(offset: UInt64, limit: UInt64, filterDomain: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListSchedulingDomainResponse {
        try await self.describeListSchedulingDomain(.init(offset: offset, limit: limit, filterDomain: filterDomain), region: region, logger: logger, on: eventLoop)
    }

    /// 获取智能调度域名列表
    @inlinable
    public func describeListSchedulingDomainPaginated(_ input: DescribeListSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SchedulingDomainInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeListSchedulingDomain, logger: logger, on: eventLoop)
    }

    /// 获取智能调度域名列表
    @inlinable @discardableResult
    public func describeListSchedulingDomainPaginated(_ input: DescribeListSchedulingDomainRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListSchedulingDomainResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListSchedulingDomain, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取智能调度域名列表
    ///
    /// - Returns: `AsyncSequence`s of `SchedulingDomainInfo` and `DescribeListSchedulingDomainResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListSchedulingDomainPaginator(_ input: DescribeListSchedulingDomainRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListSchedulingDomainRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListSchedulingDomain, logger: logger, on: eventLoop)
    }
}
