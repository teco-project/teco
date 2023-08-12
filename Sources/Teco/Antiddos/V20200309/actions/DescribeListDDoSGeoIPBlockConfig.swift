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
    /// DescribeListDDoSGeoIPBlockConfig请求参数结构体
    public struct DescribeListDDoSGeoIPBlockConfigRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: UInt64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: UInt64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// IP搜索
        public let filterIp: String?

        public init(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil) {
            self.offset = offset
            self.limit = limit
            self.filterInstanceId = filterInstanceId
            self.filterIp = filterIp
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case filterInstanceId = "FilterInstanceId"
            case filterIp = "FilterIp"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeListDDoSGeoIPBlockConfigResponse) -> DescribeListDDoSGeoIPBlockConfigRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListDDoSGeoIPBlockConfigRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterIp: self.filterIp)
        }
    }

    /// DescribeListDDoSGeoIPBlockConfig返回参数结构体
    public struct DescribeListDDoSGeoIPBlockConfigResponse: TCPaginatedResponse {
        /// 总数
        public let total: UInt64

        /// DDoS区域封禁配置列表
        public let configList: [DDoSGeoIPBlockConfigRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DDoSGeoIPBlockConfigRelation`` list from the paginated response.
        public func getItems() -> [DDoSGeoIPBlockConfigRelation] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.total
        }
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable
    public func describeListDDoSGeoIPBlockConfig(_ input: DescribeListDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListDDoSGeoIPBlockConfigResponse> {
        self.client.execute(action: "DescribeListDDoSGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable
    public func describeListDDoSGeoIPBlockConfig(_ input: DescribeListDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListDDoSGeoIPBlockConfigResponse {
        try await self.client.execute(action: "DescribeListDDoSGeoIPBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable
    public func describeListDDoSGeoIPBlockConfig(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListDDoSGeoIPBlockConfigResponse> {
        self.describeListDDoSGeoIPBlockConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable
    public func describeListDDoSGeoIPBlockConfig(offset: UInt64, limit: UInt64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListDDoSGeoIPBlockConfigResponse {
        try await self.describeListDDoSGeoIPBlockConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable
    public func describeListDDoSGeoIPBlockConfigPaginated(_ input: DescribeListDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DDoSGeoIPBlockConfigRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListDDoSGeoIPBlockConfig, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的区域封禁配置列表
    @inlinable @discardableResult
    public func describeListDDoSGeoIPBlockConfigPaginated(_ input: DescribeListDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListDDoSGeoIPBlockConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListDDoSGeoIPBlockConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的区域封禁配置列表
    ///
    /// - Returns: `AsyncSequence`s of `DDoSGeoIPBlockConfigRelation` and `DescribeListDDoSGeoIPBlockConfigResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListDDoSGeoIPBlockConfigPaginator(_ input: DescribeListDDoSGeoIPBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListDDoSGeoIPBlockConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListDDoSGeoIPBlockConfig, logger: logger, on: eventLoop)
    }
}
