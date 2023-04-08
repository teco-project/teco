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

extension Dnspod {
    /// DescribeDomainList请求参数结构体
    public struct DescribeDomainListRequest: TCPaginatedRequest {
        /// 域名分组类型，默认为ALL。可取值为ALL，MINE，SHARE，ISMARK，PAUSE，VIP，RECENT，SHARE_OUT，FREE。
        public let type: String?

        /// 记录开始的偏移, 第一条记录为 0, 依次类推。默认值为0。
        public let offset: Int64?

        /// 要获取的域名数量, 比如获取20个, 则为20。默认值为3000。
        public let limit: Int64?

        /// 分组ID, 获取指定分组的域名
        public let groupId: Int64?

        /// 根据关键字搜索域名
        public let keyword: String?

        public init(type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, groupId: Int64? = nil, keyword: String? = nil) {
            self.type = type
            self.offset = offset
            self.limit = limit
            self.groupId = groupId
            self.keyword = keyword
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case offset = "Offset"
            case limit = "Limit"
            case groupId = "GroupId"
            case keyword = "Keyword"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDomainListResponse) -> DescribeDomainListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDomainListRequest(type: self.type, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, groupId: self.groupId, keyword: self.keyword)
        }
    }

    /// DescribeDomainList返回参数结构体
    public struct DescribeDomainListResponse: TCPaginatedResponse {
        /// 列表页统计信息
        public let domainCountInfo: DomainCountInfo

        /// 域名列表
        public let domainList: [DomainListItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case domainCountInfo = "DomainCountInfo"
            case domainList = "DomainList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainListItem] {
            self.domainList
        }
    }

    /// 获取域名列表
    @inlinable
    public func describeDomainList(_ input: DescribeDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainListResponse> {
        self.client.execute(action: "DescribeDomainList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    @inlinable
    public func describeDomainList(_ input: DescribeDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainListResponse {
        try await self.client.execute(action: "DescribeDomainList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取域名列表
    @inlinable
    public func describeDomainList(type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, groupId: Int64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDomainListResponse> {
        self.describeDomainList(.init(type: type, offset: offset, limit: limit, groupId: groupId, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    @inlinable
    public func describeDomainList(type: String? = nil, offset: Int64? = nil, limit: Int64? = nil, groupId: Int64? = nil, keyword: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDomainListResponse {
        try await self.describeDomainList(.init(type: type, offset: offset, limit: limit, groupId: groupId, keyword: keyword), region: region, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    @inlinable
    public func describeDomainListPaginated(_ input: DescribeDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [DomainListItem])> {
        self.client.paginate(input: input, region: region, command: self.describeDomainList, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    @inlinable @discardableResult
    public func describeDomainListPaginated(_ input: DescribeDomainListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDomainListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDomainList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取域名列表
    ///
    /// - Returns: `AsyncSequence`s of `DomainListItem` and `DescribeDomainListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDomainListPaginator(_ input: DescribeDomainListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDomainListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDomainList, logger: logger, on: eventLoop)
    }
}
