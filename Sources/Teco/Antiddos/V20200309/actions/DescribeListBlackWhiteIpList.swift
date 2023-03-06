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

extension Antiddos {
    /// DescribeListBlackWhiteIpList请求参数结构体
    public struct DescribeListBlackWhiteIpListRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: Int64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: Int64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// IP搜索
        public let filterIp: String?

        public init(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterIp = filterIp
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterIp = "FilterIp"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeListBlackWhiteIpListResponse) -> DescribeListBlackWhiteIpListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListBlackWhiteIpListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterIp: self.filterIp)
        }
    }

    /// DescribeListBlackWhiteIpList返回参数结构体
    public struct DescribeListBlackWhiteIpListResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 黑白IP列表
        public let ipList: [BlackWhiteIpRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case ipList = "IpList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BlackWhiteIpRelation] {
            self.ipList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable
    public func describeListBlackWhiteIpList(_ input: DescribeListBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListBlackWhiteIpListResponse> {
        self.client.execute(action: "DescribeListBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable
    public func describeListBlackWhiteIpList(_ input: DescribeListBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBlackWhiteIpListResponse {
        try await self.client.execute(action: "DescribeListBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable
    public func describeListBlackWhiteIpList(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListBlackWhiteIpListResponse> {
        let input = DescribeListBlackWhiteIpListRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp)
        return self.client.execute(action: "DescribeListBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable
    public func describeListBlackWhiteIpList(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListBlackWhiteIpListResponse {
        let input = DescribeListBlackWhiteIpListRequest(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp)
        return try await self.client.execute(action: "DescribeListBlackWhiteIpList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable
    public func describeListBlackWhiteIpListPaginated(_ input: DescribeListBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BlackWhiteIpRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListBlackWhiteIpList, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的IP黑白名单列表
    @inlinable @discardableResult
    public func describeListBlackWhiteIpListPaginated(_ input: DescribeListBlackWhiteIpListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListBlackWhiteIpListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListBlackWhiteIpList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的IP黑白名单列表
    ///
    /// - Returns: `AsyncSequence`s of `BlackWhiteIpRelation` and `DescribeListBlackWhiteIpListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListBlackWhiteIpListPaginator(_ input: DescribeListBlackWhiteIpListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListBlackWhiteIpListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListBlackWhiteIpList, logger: logger, on: eventLoop)
    }
}
