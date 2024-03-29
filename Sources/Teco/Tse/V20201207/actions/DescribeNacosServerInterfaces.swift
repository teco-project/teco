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

extension Tse {
    /// DescribeNacosServerInterfaces请求参数结构体
    public struct DescribeNacosServerInterfacesRequest: TCPaginatedRequest {
        /// 实例id
        public let instanceId: String?

        /// 返回的列表个数
        public let limit: UInt64?

        /// 返回的列表起始偏移量
        public let offset: UInt64?

        public init(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.instanceId = instanceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNacosServerInterfacesResponse) -> DescribeNacosServerInterfacesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(instanceId: self.instanceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeNacosServerInterfaces返回参数结构体
    public struct DescribeNacosServerInterfacesResponse: TCPaginatedResponse {
        /// 接口总个数
        public let totalCount: UInt64

        /// 接口列表
        public let content: [NacosServerInterface]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case content = "Content"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NacosServerInterface`` list from the paginated response.
        public func getItems() -> [NacosServerInterface] {
            self.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(_ input: DescribeNacosServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNacosServerInterfacesResponse> {
        self.client.execute(action: "DescribeNacosServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(_ input: DescribeNacosServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNacosServerInterfacesResponse {
        try await self.client.execute(action: "DescribeNacosServerInterfaces", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNacosServerInterfacesResponse> {
        self.describeNacosServerInterfaces(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfaces(instanceId: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNacosServerInterfacesResponse {
        try await self.describeNacosServerInterfaces(.init(instanceId: instanceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询nacos服务接口列表
    @inlinable
    public func describeNacosServerInterfacesPaginated(_ input: DescribeNacosServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NacosServerInterface])> {
        self.client.paginate(input: input, region: region, command: self.describeNacosServerInterfaces, logger: logger, on: eventLoop)
    }

    /// 查询nacos服务接口列表
    @inlinable @discardableResult
    public func describeNacosServerInterfacesPaginated(_ input: DescribeNacosServerInterfacesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNacosServerInterfacesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNacosServerInterfaces, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询nacos服务接口列表
    ///
    /// - Returns: `AsyncSequence`s of ``NacosServerInterface`` and ``DescribeNacosServerInterfacesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNacosServerInterfacesPaginator(_ input: DescribeNacosServerInterfacesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNacosServerInterfacesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNacosServerInterfaces, logger: logger, on: eventLoop)
    }
}
