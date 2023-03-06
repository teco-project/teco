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
    /// DescribeHTTPListeners请求参数结构体
    public struct DescribeHTTPListenersRequest: TCPaginatedRequest {
        /// 通道ID
        public let proxyId: String?

        /// 过滤条件，按照监听器ID进行精确查询
        public let listenerId: String?

        /// 过滤条件，按照监听器名称进行精确查询
        public let listenerName: String?

        /// 过滤条件，按照监听器端口进行精确查询
        public let port: UInt64?

        /// 偏移量，默认为0
        public let offset: UInt64?

        /// 限制数量，默认为20个
        public let limit: UInt64?

        /// 过滤条件，支持按照端口或监听器名称进行模糊查询，该参数不能与ListenerName和Port同时使用
        public let searchValue: String?

        /// 通道组ID
        public let groupId: String?

        public init(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchValue: String? = nil, groupId: String? = nil) {
            self.proxyId = proxyId
            self.listenerId = listenerId
            self.listenerName = listenerName
            self.port = port
            self.offset = offset
            self.limit = limit
            self.searchValue = searchValue
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case proxyId = "ProxyId"
            case listenerId = "ListenerId"
            case listenerName = "ListenerName"
            case port = "Port"
            case offset = "Offset"
            case limit = "Limit"
            case searchValue = "SearchValue"
            case groupId = "GroupId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeHTTPListenersResponse) -> DescribeHTTPListenersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeHTTPListenersRequest(proxyId: self.proxyId, listenerId: self.listenerId, listenerName: self.listenerName, port: self.port, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchValue: self.searchValue, groupId: self.groupId)
        }
    }

    /// DescribeHTTPListeners返回参数结构体
    public struct DescribeHTTPListenersResponse: TCPaginatedResponse {
        /// 监听器数量
        public let totalCount: UInt64

        /// HTTP监听器列表
        public let listenerSet: [HTTPListener]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [HTTPListener] {
            self.listenerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListeners(_ input: DescribeHTTPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHTTPListenersResponse> {
        self.client.execute(action: "DescribeHTTPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListeners(_ input: DescribeHTTPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHTTPListenersResponse {
        try await self.client.execute(action: "DescribeHTTPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListeners(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchValue: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeHTTPListenersResponse> {
        let input = DescribeHTTPListenersRequest(proxyId: proxyId, listenerId: listenerId, listenerName: listenerName, port: port, offset: offset, limit: limit, searchValue: searchValue, groupId: groupId)
        return self.client.execute(action: "DescribeHTTPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListeners(proxyId: String? = nil, listenerId: String? = nil, listenerName: String? = nil, port: UInt64? = nil, offset: UInt64? = nil, limit: UInt64? = nil, searchValue: String? = nil, groupId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeHTTPListenersResponse {
        let input = DescribeHTTPListenersRequest(proxyId: proxyId, listenerId: listenerId, listenerName: listenerName, port: port, offset: offset, limit: limit, searchValue: searchValue, groupId: groupId)
        return try await self.client.execute(action: "DescribeHTTPListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListenersPaginated(_ input: DescribeHTTPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [HTTPListener])> {
        self.client.paginate(input: input, region: region, command: self.describeHTTPListeners, logger: logger, on: eventLoop)
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListenersPaginated(_ input: DescribeHTTPListenersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeHTTPListenersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeHTTPListeners, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询HTTP监听器信息
    ///
    /// 该接口（DescribeHTTPListeners）用来查询HTTP监听器信息。
    @inlinable
    public func describeHTTPListenersPaginator(_ input: DescribeHTTPListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeHTTPListenersRequest, DescribeHTTPListenersResponse>.ResultSequence, responses: TCClient.Paginator<DescribeHTTPListenersRequest, DescribeHTTPListenersResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeHTTPListenersRequest, DescribeHTTPListenersResponse>.ResultSequence(input: input, region: region, command: self.describeHTTPListeners, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeHTTPListenersRequest, DescribeHTTPListenersResponse>.ResponseSequence(input: input, region: region, command: self.describeHTTPListeners, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
