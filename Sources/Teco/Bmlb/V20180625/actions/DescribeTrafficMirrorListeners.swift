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

extension Bmlb {
    /// DescribeTrafficMirrorListeners请求参数结构体
    public struct DescribeTrafficMirrorListenersRequest: TCPaginatedRequest {
        /// 流量镜像实例ID。
        public let trafficMirrorId: String

        /// 分页的偏移量，也即从第几条记录开始查询
        public let offset: Int64?

        /// 单次查询返回的条目数，默认值：500。
        public let limit: Int64?

        /// 待搜索的负载均衡Id。
        public let searchLoadBalancerIds: [String]?

        /// 待搜索的负载均衡名称。
        public let searchLoadBalancerNames: [String]?

        /// 待搜索的Vip。
        public let searchVips: [String]?

        /// 待搜索的监听器ID。
        public let searchListenerIds: [String]?

        /// 待搜索的监听器名称。
        public let searchListenerNames: [String]?

        /// 待搜索的协议名称。
        public let searchProtocols: [String]?

        /// 待搜索的端口。
        public let searchLoadBalancerPorts: [UInt64]?

        public init(trafficMirrorId: String, offset: Int64? = nil, limit: Int64? = nil, searchLoadBalancerIds: [String]? = nil, searchLoadBalancerNames: [String]? = nil, searchVips: [String]? = nil, searchListenerIds: [String]? = nil, searchListenerNames: [String]? = nil, searchProtocols: [String]? = nil, searchLoadBalancerPorts: [UInt64]? = nil) {
            self.trafficMirrorId = trafficMirrorId
            self.offset = offset
            self.limit = limit
            self.searchLoadBalancerIds = searchLoadBalancerIds
            self.searchLoadBalancerNames = searchLoadBalancerNames
            self.searchVips = searchVips
            self.searchListenerIds = searchListenerIds
            self.searchListenerNames = searchListenerNames
            self.searchProtocols = searchProtocols
            self.searchLoadBalancerPorts = searchLoadBalancerPorts
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case offset = "Offset"
            case limit = "Limit"
            case searchLoadBalancerIds = "SearchLoadBalancerIds"
            case searchLoadBalancerNames = "SearchLoadBalancerNames"
            case searchVips = "SearchVips"
            case searchListenerIds = "SearchListenerIds"
            case searchListenerNames = "SearchListenerNames"
            case searchProtocols = "SearchProtocols"
            case searchLoadBalancerPorts = "SearchLoadBalancerPorts"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTrafficMirrorListenersResponse) -> DescribeTrafficMirrorListenersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTrafficMirrorListenersRequest(trafficMirrorId: self.trafficMirrorId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, searchLoadBalancerIds: self.searchLoadBalancerIds, searchLoadBalancerNames: self.searchLoadBalancerNames, searchVips: self.searchVips, searchListenerIds: self.searchListenerIds, searchListenerNames: self.searchListenerNames, searchProtocols: self.searchProtocols, searchLoadBalancerPorts: self.searchLoadBalancerPorts)
        }
    }

    /// DescribeTrafficMirrorListeners返回参数结构体
    public struct DescribeTrafficMirrorListenersResponse: TCPaginatedResponse {
        /// 监听器列表。
        public let listenerSet: [TrafficMirrorListener]

        /// 监听器总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case listenerSet = "ListenerSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TrafficMirrorListener] {
            self.listenerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(_ input: DescribeTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficMirrorListenersResponse> {
        self.client.execute(action: "DescribeTrafficMirrorListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(_ input: DescribeTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficMirrorListenersResponse {
        try await self.client.execute(action: "DescribeTrafficMirrorListeners", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(trafficMirrorId: String, offset: Int64? = nil, limit: Int64? = nil, searchLoadBalancerIds: [String]? = nil, searchLoadBalancerNames: [String]? = nil, searchVips: [String]? = nil, searchListenerIds: [String]? = nil, searchListenerNames: [String]? = nil, searchProtocols: [String]? = nil, searchLoadBalancerPorts: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTrafficMirrorListenersResponse> {
        self.describeTrafficMirrorListeners(.init(trafficMirrorId: trafficMirrorId, offset: offset, limit: limit, searchLoadBalancerIds: searchLoadBalancerIds, searchLoadBalancerNames: searchLoadBalancerNames, searchVips: searchVips, searchListenerIds: searchListenerIds, searchListenerNames: searchListenerNames, searchProtocols: searchProtocols, searchLoadBalancerPorts: searchLoadBalancerPorts), region: region, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListeners(trafficMirrorId: String, offset: Int64? = nil, limit: Int64? = nil, searchLoadBalancerIds: [String]? = nil, searchLoadBalancerNames: [String]? = nil, searchVips: [String]? = nil, searchListenerIds: [String]? = nil, searchListenerNames: [String]? = nil, searchProtocols: [String]? = nil, searchLoadBalancerPorts: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTrafficMirrorListenersResponse {
        try await self.describeTrafficMirrorListeners(.init(trafficMirrorId: trafficMirrorId, offset: offset, limit: limit, searchLoadBalancerIds: searchLoadBalancerIds, searchLoadBalancerNames: searchLoadBalancerNames, searchVips: searchVips, searchListenerIds: searchListenerIds, searchListenerNames: searchListenerNames, searchProtocols: searchProtocols, searchLoadBalancerPorts: searchLoadBalancerPorts), region: region, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable
    public func describeTrafficMirrorListenersPaginated(_ input: DescribeTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TrafficMirrorListener])> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficMirrorListeners, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    @inlinable @discardableResult
    public func describeTrafficMirrorListenersPaginated(_ input: DescribeTrafficMirrorListenersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTrafficMirrorListenersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTrafficMirrorListeners, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取流量镜像的监听器列表信息
    ///
    /// 获取流量镜像的监听器列表信息。
    ///
    /// - Returns: `AsyncSequence`s of `TrafficMirrorListener` and `DescribeTrafficMirrorListenersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTrafficMirrorListenersPaginator(_ input: DescribeTrafficMirrorListenersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTrafficMirrorListenersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTrafficMirrorListeners, logger: logger, on: eventLoop)
    }
}
