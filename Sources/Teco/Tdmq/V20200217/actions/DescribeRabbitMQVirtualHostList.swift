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

extension Tdmq {
    /// DescribeRabbitMQVirtualHostList请求参数结构体
    public struct DescribeRabbitMQVirtualHostListRequest: TCPaginatedRequest {
        /// 不适用，默认参数
        public let instanceId: String

        /// 偏移量
        public let offset: UInt64?

        /// 一页限制
        public let limit: UInt64?

        public init(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.instanceId = instanceId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeRabbitMQVirtualHostListResponse) -> DescribeRabbitMQVirtualHostListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeRabbitMQVirtualHostListRequest(instanceId: self.instanceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeRabbitMQVirtualHostList返回参数结构体
    public struct DescribeRabbitMQVirtualHostListResponse: TCPaginatedResponse {
        /// 集群列表数量
        public let totalCount: UInt64

        /// 集群列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let virtualHostList: [RabbitMQPrivateVirtualHost]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case virtualHostList = "VirtualHostList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``RabbitMQPrivateVirtualHost`` list from the paginated response.
        public func getItems() -> [RabbitMQPrivateVirtualHost] {
            self.virtualHostList ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable
    public func describeRabbitMQVirtualHostList(_ input: DescribeRabbitMQVirtualHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVirtualHostListResponse> {
        self.client.execute(action: "DescribeRabbitMQVirtualHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable
    public func describeRabbitMQVirtualHostList(_ input: DescribeRabbitMQVirtualHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVirtualHostListResponse {
        try await self.client.execute(action: "DescribeRabbitMQVirtualHostList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable
    public func describeRabbitMQVirtualHostList(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRabbitMQVirtualHostListResponse> {
        self.describeRabbitMQVirtualHostList(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable
    public func describeRabbitMQVirtualHostList(instanceId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRabbitMQVirtualHostListResponse {
        try await self.describeRabbitMQVirtualHostList(.init(instanceId: instanceId, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable
    public func describeRabbitMQVirtualHostListPaginated(_ input: DescribeRabbitMQVirtualHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [RabbitMQPrivateVirtualHost])> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVirtualHostList, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询虚拟主机列表
    @inlinable @discardableResult
    public func describeRabbitMQVirtualHostListPaginated(_ input: DescribeRabbitMQVirtualHostListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeRabbitMQVirtualHostListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeRabbitMQVirtualHostList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// RabbitMQ专享版查询虚拟主机列表
    ///
    /// - Returns: `AsyncSequence`s of `RabbitMQPrivateVirtualHost` and `DescribeRabbitMQVirtualHostListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeRabbitMQVirtualHostListPaginator(_ input: DescribeRabbitMQVirtualHostListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeRabbitMQVirtualHostListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeRabbitMQVirtualHostList, logger: logger, on: eventLoop)
    }
}
