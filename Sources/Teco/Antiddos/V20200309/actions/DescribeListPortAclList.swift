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
    /// DescribeListPortAclList请求参数结构体
    public struct DescribeListPortAclListRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: UInt64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// ip搜索
        public let filterIp: String?

        public init(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil) {
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
        public func makeNextRequest(with response: DescribeListPortAclListResponse) -> DescribeListPortAclListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListPortAclListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterIp: self.filterIp)
        }
    }

    /// DescribeListPortAclList返回参数结构体
    public struct DescribeListPortAclListResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// 端口acl策略
        public let aclList: [AclConfigRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case aclList = "AclList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [AclConfigRelation] {
            self.aclList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable
    public func describeListPortAclList(_ input: DescribeListPortAclListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListPortAclListResponse> {
        self.client.execute(action: "DescribeListPortAclList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable
    public func describeListPortAclList(_ input: DescribeListPortAclListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListPortAclListResponse {
        try await self.client.execute(action: "DescribeListPortAclList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable
    public func describeListPortAclList(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListPortAclListResponse> {
        self.describeListPortAclList(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable
    public func describeListPortAclList(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListPortAclListResponse {
        try await self.describeListPortAclList(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable
    public func describeListPortAclListPaginated(_ input: DescribeListPortAclListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [AclConfigRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListPortAclList, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的端口acl策略列表
    @inlinable @discardableResult
    public func describeListPortAclListPaginated(_ input: DescribeListPortAclListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListPortAclListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListPortAclList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的端口acl策略列表
    ///
    /// - Returns: `AsyncSequence`s of `AclConfigRelation` and `DescribeListPortAclListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListPortAclListPaginator(_ input: DescribeListPortAclListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListPortAclListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListPortAclList, logger: logger, on: eventLoop)
    }
}
