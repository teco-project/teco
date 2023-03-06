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

extension Clb {
    /// DescribeBlockIPList请求参数结构体
    public struct DescribeBlockIPListRequest: TCPaginatedRequest {
        /// 负载均衡实例 ID。
        public let loadBalancerId: String

        /// 数据偏移量，默认为 0。
        public let offset: UInt64?

        /// 返回IP的最大个数，默认为 100000。
        public let limit: UInt64?

        public init(loadBalancerId: String, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.loadBalancerId = loadBalancerId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case loadBalancerId = "LoadBalancerId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBlockIPListResponse) -> DescribeBlockIPListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBlockIPListRequest(loadBalancerId: self.loadBalancerId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBlockIPList返回参数结构体
    public struct DescribeBlockIPListResponse: TCPaginatedResponse {
        /// 返回的IP的数量
        public let blockedIPCount: UInt64

        /// 获取用户真实IP的字段
        public let clientIPField: String

        /// 加入了12360黑名单的IP列表
        public let blockedIPList: [BlockedIP]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case blockedIPCount = "BlockedIPCount"
            case clientIPField = "ClientIPField"
            case blockedIPList = "BlockedIPList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BlockedIP] {
            self.blockedIPList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.blockedIPCount
        }
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPList(_ input: DescribeBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIPListResponse> {
        self.client.execute(action: "DescribeBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPList(_ input: DescribeBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIPListResponse {
        try await self.client.execute(action: "DescribeBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPList(loadBalancerId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBlockIPListResponse> {
        let input = DescribeBlockIPListRequest(loadBalancerId: loadBalancerId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPList(loadBalancerId: String, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBlockIPListResponse {
        let input = DescribeBlockIPListRequest(loadBalancerId: loadBalancerId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeBlockIPList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPListPaginated(_ input: DescribeBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [BlockedIP])> {
        self.client.paginate(input: input, region: region, command: self.describeBlockIPList, logger: logger, on: eventLoop)
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable @discardableResult
    public func describeBlockIPListPaginated(_ input: DescribeBlockIPListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBlockIPListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBlockIPList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询一个负载均衡所封禁的IP列表（黑名单）
    ///
    /// 查询一个负载均衡所封禁的IP列表（黑名单）。（接口灰度中，如需使用请提工单）
    @inlinable
    public func describeBlockIPListPaginator(_ input: DescribeBlockIPListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBlockIPListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBlockIPList, logger: logger, on: eventLoop)
    }
}
