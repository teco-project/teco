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

extension Gaap {
    /// DescribeUDPListeners请求参数结构体
    public struct DescribeUDPListenersRequest: TCPaginatedRequest {
        /// 过滤条件，根据通道ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        public let proxyId: String?

        /// 过滤条件，根据监听器ID精确查询。
        /// 当设置了ProxyId时，会检查该监听器是否归属于该通道。
        /// 当设置了GroupId时，会检查该监听器是否归属于该通道组。
        public let listenerId: String?

        /// 过滤条件，根据监听器名称精确查询
        public let listenerName: String?

        /// 过滤条件，根据监听器端口精确查询
        public let port: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 限制数量，默认为20
        public let limit: UInt64?

        /// 过滤条件，根据通道组ID进行拉取，ProxyId/GroupId/ListenerId必须设置一个，但ProxyId和GroupId不能同时设置。
        public let groupId: String?

        /// 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        public let searchValue: String?

        public init(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, groupId: String? = nil, searchValue: String? = nil) {
            self.proxyId = proxyId
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.port = port
            self.offset = offset
            self.limit = limit
            self.groupId = groupId
            self.searchValue = searchValue
        }

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case port = "Port"
            case offset = "Offset"
            case limit = "Limit"
            case groupId = "GroupId"
            case searchValue = "SearchValue"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeUDPListenersResponse) -> DescribeUDPListenersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeUDPListenersRequest(proxyId: self.proxyId, listenerId: self.listenerId, listenerName: self.listenerName, port: self.port, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, groupId: self.groupId, searchValue: self.searchValue)
        }
    }

    /// DescribeUDPListeners返回参数结构体
    public struct DescribeUDPListenersResponse: TCPaginatedResponse {
        /// 监听器个数
        public let totalCount: UInt64

        /// UDP监听器列表
        public let listenerSet: [UDPListener]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [UDPListener] {
            self.listenerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(_ input: DescribeUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUDPListenersResponse> {
        self.client.execute(action: "DescribeUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(_ input: DescribeUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUDPListenersResponse {
        try await self.client.execute(action: "DescribeUDPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, groupId: String? = nil, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeUDPListenersResponse> {
        self.describeUDPListeners(.init(proxyId: proxyId, listenerId: listenerId, listenerName: listenerName, port: port, offset: offset, limit: limit, groupId: groupId, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListeners(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, groupId: String? = nil, searchValue: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUDPListenersResponse {
        try await self.describeUDPListeners(.init(proxyId: proxyId, listenerId: listenerId, listenerName: listenerName, port: port, offset: offset, limit: limit, groupId: groupId, searchValue: searchValue), region: region, logger: logger, on: eventLoop)
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable
    public func describeUDPListenersPaginated(_ input: DescribeUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [UDPListener])> {
        self.client.paginate(input: input, region: region, command: self.describeUDPListeners, logger: logger, on: eventLoop)
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    @inlinable @discardableResult
    public func describeUDPListenersPaginated(_ input: DescribeUDPListenersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeUDPListenersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeUDPListeners, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询UDP监听器列表
    ///
    /// 该接口（DescribeUDPListeners）用于查询单通道或者通道组下的UDP监听器信息
    ///
    /// - Returns: `AsyncSequence`s of `UDPListener` and `DescribeUDPListenersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeUDPListenersPaginator(_ input: DescribeUDPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeUDPListenersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeUDPListeners, logger: logger, on: eventLoop)
    }
}
