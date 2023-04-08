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

extension Antiddos {
    /// DescribeDDoSConnectLimitList请求参数结构体
    public struct DescribeDDoSConnectLimitListRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数
        public let limit: UInt64

        /// 可选参数，按照IP进行过滤
        public let filterIp: String?

        /// 可选参数，按照实例id进行过滤
        public let filterInstanceId: String?

        public init(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterIp = filterIp
            self.filterInstanceId = filterInstanceId
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterIp = "FilterIp"
            case filterInstanceId = "FilterInstanceId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDDoSConnectLimitListResponse) -> DescribeDDoSConnectLimitListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeDDoSConnectLimitListRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterIp: self.filterIp, filterInstanceId: self.filterInstanceId)
        }
    }

    /// DescribeDDoSConnectLimitList返回参数结构体
    public struct DescribeDDoSConnectLimitListResponse: TCPaginatedResponse {
        /// 连接抑制配置总数
        public let total: UInt64

        /// 连接抑制配置详情信息
        public let configList: [ConnectLimitRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ConnectLimitRelation] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable
    public func describeDDoSConnectLimitList(_ input: DescribeDDoSConnectLimitListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSConnectLimitListResponse> {
        self.client.execute(action: "DescribeDDoSConnectLimitList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable
    public func describeDDoSConnectLimitList(_ input: DescribeDDoSConnectLimitListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSConnectLimitListResponse {
        try await self.client.execute(action: "DescribeDDoSConnectLimitList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable
    public func describeDDoSConnectLimitList(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDDoSConnectLimitListResponse> {
        self.describeDDoSConnectLimitList(.init(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable
    public func describeDDoSConnectLimitList(offset: UInt64, limit: UInt64, filterIp: String? = nil, filterInstanceId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDDoSConnectLimitListResponse {
        try await self.describeDDoSConnectLimitList(.init(offset: offset, limit: limit, filterIp: filterIp, filterInstanceId: filterInstanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable
    public func describeDDoSConnectLimitListPaginated(_ input: DescribeDDoSConnectLimitListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [ConnectLimitRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeDDoSConnectLimitList, logger: logger, on: eventLoop)
    }

    /// 获取DDoS连接抑制配置列表
    @inlinable @discardableResult
    public func describeDDoSConnectLimitListPaginated(_ input: DescribeDDoSConnectLimitListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDDoSConnectLimitListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDDoSConnectLimitList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS连接抑制配置列表
    ///
    /// - Returns: `AsyncSequence`s of `ConnectLimitRelation` and `DescribeDDoSConnectLimitListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDDoSConnectLimitListPaginator(_ input: DescribeDDoSConnectLimitListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDDoSConnectLimitListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDDoSConnectLimitList, logger: logger, on: eventLoop)
    }
}
