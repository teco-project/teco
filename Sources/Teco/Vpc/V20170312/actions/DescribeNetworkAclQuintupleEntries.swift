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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Vpc {
    /// DescribeNetworkAclQuintupleEntries请求参数结构体
    public struct DescribeNetworkAclQuintupleEntriesRequest: TCPaginatedRequest {
        /// 网络ACL实例ID。形如：acl-12345678。
        public let networkAclId: String

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 返回数量，默认为20，最小值为1，最大值为100。
        public let limit: UInt64?

        /// 过滤条件，参数不支持同时指定`HaVipIds`和`Filters`。
        /// <li>protocol - String - 协议，形如：`TCP`。</li>
        /// <li>description - String - 描述。</li>
        /// <li>destination-cidr - String - 目的CIDR， 形如：'192.168.0.0/24'。</li>
        /// <li>source-cidr- String - 源CIDR， 形如：'192.168.0.0/24'。</li>
        /// <li>action - String - 动作，形如ACCEPT或DROP。</li>
        /// <li>network-acl-quintuple-entry-id - String - 五元组唯一ID，形如：'acli45-ahnu4rv5'。</li>
        /// <li>network-acl-direction - String - 方向，形如：'INGRESS'或'EGRESS'。</li>
        public let filters: [Filter]?

        public init(networkAclId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.networkAclId = networkAclId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case networkAclId = "NetworkAclId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNetworkAclQuintupleEntriesResponse) -> DescribeNetworkAclQuintupleEntriesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNetworkAclQuintupleEntriesRequest(networkAclId: self.networkAclId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeNetworkAclQuintupleEntries返回参数结构体
    public struct DescribeNetworkAclQuintupleEntriesResponse: TCPaginatedResponse {
        /// 网络ACL条目列表（NetworkAclTuple5Entry）
        public let networkAclQuintupleSet: [NetworkAclQuintupleEntry]

        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case networkAclQuintupleSet = "NetworkAclQuintupleSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NetworkAclQuintupleEntry] {
            self.networkAclQuintupleSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable
    public func describeNetworkAclQuintupleEntries(_ input: DescribeNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkAclQuintupleEntriesResponse> {
        self.client.execute(action: "DescribeNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable
    public func describeNetworkAclQuintupleEntries(_ input: DescribeNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkAclQuintupleEntriesResponse {
        try await self.client.execute(action: "DescribeNetworkAclQuintupleEntries", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable
    public func describeNetworkAclQuintupleEntries(networkAclId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNetworkAclQuintupleEntriesResponse> {
        self.describeNetworkAclQuintupleEntries(.init(networkAclId: networkAclId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable
    public func describeNetworkAclQuintupleEntries(networkAclId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNetworkAclQuintupleEntriesResponse {
        try await self.describeNetworkAclQuintupleEntries(.init(networkAclId: networkAclId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable
    public func describeNetworkAclQuintupleEntriesPaginated(_ input: DescribeNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NetworkAclQuintupleEntry])> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkAclQuintupleEntries, logger: logger, on: eventLoop)
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    @inlinable @discardableResult
    public func describeNetworkAclQuintupleEntriesPaginated(_ input: DescribeNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNetworkAclQuintupleEntriesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNetworkAclQuintupleEntries, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 分页查询网络ACL五元组条目列表
    ///
    /// 本接口（DescribeNetworkAclQuintupleEntries）查询入方向或出方向网络ACL五元组条目列表。
    ///
    /// - Returns: `AsyncSequence`s of `NetworkAclQuintupleEntry` and `DescribeNetworkAclQuintupleEntriesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNetworkAclQuintupleEntriesPaginator(_ input: DescribeNetworkAclQuintupleEntriesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNetworkAclQuintupleEntriesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNetworkAclQuintupleEntries, logger: logger, on: eventLoop)
    }
}
