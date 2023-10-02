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

extension Bmvpc {
    /// DescribeVpcPeerConnections请求参数结构体
    public struct DescribeVpcPeerConnectionsRequest: TCPaginatedRequest {
        /// 对等连接实例ID
        public let vpcPeerConnectionIds: [String]?

        /// 过滤条件，详见下表：实例过滤条件表。每次请求的Filters的上限为10，Filter.Values的上限为5。参数不支持同时指定VpcPeerConnectionIds和Filters。
        /// 过滤条件，参数不支持同时指定VpcPeerConnectionIds和Filters。
        /// - peer-name - String - （过滤条件）对等连接名称。
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于Offset的更进一步介绍请参考 API 简介中的相关小节。
        public let offset: UInt64?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 私有网络ID
        public let vpcId: String?

        public init(vpcPeerConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil) {
            self.vpcPeerConnectionIds = vpcPeerConnectionIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.vpcId = vpcId
        }

        enum CodingKeys: String, CodingKey {
            case vpcPeerConnectionIds = "VpcPeerConnectionIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case vpcId = "VpcId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcPeerConnectionsResponse) -> DescribeVpcPeerConnectionsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(vpcPeerConnectionIds: self.vpcPeerConnectionIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, vpcId: self.vpcId)
        }
    }

    /// DescribeVpcPeerConnections返回参数结构体
    public struct DescribeVpcPeerConnectionsResponse: TCPaginatedResponse {
        /// 符合条件的实例数量。
        public let totalCount: UInt64

        /// 对等连接实例。
        public let vpcPeerConnectionSet: [VpcPeerConnection]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case vpcPeerConnectionSet = "VpcPeerConnectionSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VpcPeerConnection`` list from the paginated response.
        public func getItems() -> [VpcPeerConnection] {
            self.vpcPeerConnectionSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取对等连接列表
    @inlinable
    public func describeVpcPeerConnections(_ input: DescribeVpcPeerConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcPeerConnectionsResponse> {
        self.client.execute(action: "DescribeVpcPeerConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取对等连接列表
    @inlinable
    public func describeVpcPeerConnections(_ input: DescribeVpcPeerConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcPeerConnectionsResponse {
        try await self.client.execute(action: "DescribeVpcPeerConnections", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取对等连接列表
    @inlinable
    public func describeVpcPeerConnections(vpcPeerConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcPeerConnectionsResponse> {
        self.describeVpcPeerConnections(.init(vpcPeerConnectionIds: vpcPeerConnectionIds, filters: filters, offset: offset, limit: limit, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取对等连接列表
    @inlinable
    public func describeVpcPeerConnections(vpcPeerConnectionIds: [String]? = nil, filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, vpcId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcPeerConnectionsResponse {
        try await self.describeVpcPeerConnections(.init(vpcPeerConnectionIds: vpcPeerConnectionIds, filters: filters, offset: offset, limit: limit, vpcId: vpcId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取对等连接列表
    @inlinable
    public func describeVpcPeerConnectionsPaginated(_ input: DescribeVpcPeerConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [VpcPeerConnection])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcPeerConnections, logger: logger, on: eventLoop)
    }

    /// 获取对等连接列表
    @inlinable @discardableResult
    public func describeVpcPeerConnectionsPaginated(_ input: DescribeVpcPeerConnectionsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcPeerConnectionsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcPeerConnections, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取对等连接列表
    ///
    /// - Returns: `AsyncSequence`s of ``VpcPeerConnection`` and ``DescribeVpcPeerConnectionsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcPeerConnectionsPaginator(_ input: DescribeVpcPeerConnectionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcPeerConnectionsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcPeerConnections, logger: logger, on: eventLoop)
    }
}
