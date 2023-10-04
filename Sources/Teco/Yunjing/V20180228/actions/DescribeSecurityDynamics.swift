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

extension Yunjing {
    /// DescribeSecurityDynamics请求参数结构体
    public struct DescribeSecurityDynamicsRequest: TCPaginatedRequest {
        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(limit: UInt64? = nil, offset: UInt64? = nil) {
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeSecurityDynamicsResponse) -> DescribeSecurityDynamicsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeSecurityDynamics返回参数结构体
    public struct DescribeSecurityDynamicsResponse: TCPaginatedResponse {
        /// 安全事件消息数组。
        public let securityDynamics: [SecurityDynamic]

        /// 记录总数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case securityDynamics = "SecurityDynamics"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``SecurityDynamic`` list from the paginated response.
        public func getItems() -> [SecurityDynamic] {
            self.securityDynamics
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable
    public func describeSecurityDynamics(_ input: DescribeSecurityDynamicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityDynamicsResponse> {
        self.client.execute(action: "DescribeSecurityDynamics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable
    public func describeSecurityDynamics(_ input: DescribeSecurityDynamicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityDynamicsResponse {
        try await self.client.execute(action: "DescribeSecurityDynamics", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable
    public func describeSecurityDynamics(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecurityDynamicsResponse> {
        self.describeSecurityDynamics(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable
    public func describeSecurityDynamics(limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecurityDynamicsResponse {
        try await self.describeSecurityDynamics(.init(limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable
    public func describeSecurityDynamicsPaginated(_ input: DescribeSecurityDynamicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [SecurityDynamic])> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityDynamics, logger: logger, on: eventLoop)
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    @inlinable @discardableResult
    public func describeSecurityDynamicsPaginated(_ input: DescribeSecurityDynamicsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeSecurityDynamicsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeSecurityDynamics, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取安全事件消息
    ///
    /// 本接口 (DescribeSecurityDynamics) 用于获取安全事件消息数据。
    ///
    /// - Returns: `AsyncSequence`s of ``SecurityDynamic`` and ``DescribeSecurityDynamicsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeSecurityDynamicsPaginator(_ input: DescribeSecurityDynamicsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeSecurityDynamicsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeSecurityDynamics, logger: logger, on: eventLoop)
    }
}
