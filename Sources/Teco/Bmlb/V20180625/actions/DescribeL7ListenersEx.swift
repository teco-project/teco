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

extension Bmlb {
    /// DescribeL7ListenersEx请求参数结构体
    public struct DescribeL7ListenersExRequest: TCPaginatedRequest {
        /// 返回的监听器中标识是否绑定在此流量镜像中。
        public let trafficMirrorId: String

        /// 待获取监听器所在的VPC的ID。
        public let vpcId: String

        /// 此VPC中获取负载均衡的偏移。
        public let offset: UInt64?

        /// 此VPC中获取负载均衡的数量。
        public let limit: UInt64?

        /// 过滤条件。
        /// LoadBalancerId - String - （过滤条件）负载均衡ID。
        /// LoadBalancerName - String - （过滤条件）负载均衡名称。
        /// Vip - String - （过滤条件）VIP。
        /// ListenerId - String - （过滤条件）监听器ID。
        /// ListenerName -  String - （过滤条件）监听器名称。
        /// Protocol -  String - （过滤条件）七层协议。
        /// LoadBalancerPort -  String - （过滤条件）监听器端口。
        public let filters: [Filter]?

        public init(trafficMirrorId: String, vpcId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil) {
            self.trafficMirrorId = trafficMirrorId
            self.vpcId = vpcId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case trafficMirrorId = "TrafficMirrorId"
            case vpcId = "VpcId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeL7ListenersExResponse) -> DescribeL7ListenersExRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeL7ListenersExRequest(trafficMirrorId: self.trafficMirrorId, vpcId: self.vpcId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeL7ListenersEx返回参数结构体
    public struct DescribeL7ListenersExResponse: TCPaginatedResponse {
        /// 此指定VPC中负载均衡的总数。
        public let totalCount: UInt64

        /// 符合条件的监听器。
        public let listenerSet: [L7ExListener]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case listenerSet = "ListenerSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [L7ExListener] {
            self.listenerSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable
    public func describeL7ListenersEx(_ input: DescribeL7ListenersExRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenersExResponse> {
        self.client.execute(action: "DescribeL7ListenersEx", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable
    public func describeL7ListenersEx(_ input: DescribeL7ListenersExRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenersExResponse {
        try await self.client.execute(action: "DescribeL7ListenersEx", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable
    public func describeL7ListenersEx(trafficMirrorId: String, vpcId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeL7ListenersExResponse> {
        let input = DescribeL7ListenersExRequest(trafficMirrorId: trafficMirrorId, vpcId: vpcId, offset: offset, limit: limit, filters: filters)
        return self.client.execute(action: "DescribeL7ListenersEx", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable
    public func describeL7ListenersEx(trafficMirrorId: String, vpcId: String, offset: UInt64? = nil, limit: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeL7ListenersExResponse {
        let input = DescribeL7ListenersExRequest(trafficMirrorId: trafficMirrorId, vpcId: vpcId, offset: offset, limit: limit, filters: filters)
        return try await self.client.execute(action: "DescribeL7ListenersEx", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable
    public func describeL7ListenersExPaginated(_ input: DescribeL7ListenersExRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [L7ExListener])> {
        self.client.paginate(input: input, region: region, command: self.describeL7ListenersEx, logger: logger, on: eventLoop)
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    @inlinable @discardableResult
    public func describeL7ListenersExPaginated(_ input: DescribeL7ListenersExRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeL7ListenersExResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeL7ListenersEx, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取指定VPC下的7层监听器
    ///
    /// 获取指定VPC下的7层监听器(支持模糊匹配)。
    ///
    /// - Returns: `AsyncSequence`s of `L7ExListener` and `DescribeL7ListenersExResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeL7ListenersExPaginator(_ input: DescribeL7ListenersExRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeL7ListenersExRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeL7ListenersEx, logger: logger, on: eventLoop)
    }
}
