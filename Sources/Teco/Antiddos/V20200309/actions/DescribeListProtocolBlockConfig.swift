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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Antiddos {
    /// DescribeListProtocolBlockConfig请求参数结构体
    public struct DescribeListProtocolBlockConfigRequest: TCPaginatedRequest {
        /// 页起始偏移，取值为(页码-1)*一页条数
        public let offset: Int64

        /// 一页条数，当Limit=0时，默认一页条数为100;最大取值为100
        public let limit: Int64

        /// 资源实例ID搜索, 支持资源实例前缀通配搜索，例如bgp-*表示获取高防包类型的资源实例
        public let filterInstanceId: String

        /// IP搜索
        public let filterIp: String?

        public init(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil) {
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
        public func makeNextRequest(with response: DescribeListProtocolBlockConfigResponse) -> DescribeListProtocolBlockConfigRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeListProtocolBlockConfigRequest(offset: self.offset + .init(response.getItems().count), limit: self.limit, filterInstanceId: self.filterInstanceId, filterIp: self.filterIp)
        }
    }

    /// DescribeListProtocolBlockConfig返回参数结构体
    public struct DescribeListProtocolBlockConfigResponse: TCPaginatedResponse {
        /// 总数
        public let total: Int64

        /// 协议封禁配置
        public let configList: [ProtocolBlockRelation]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case configList = "ConfigList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ProtocolBlockRelation] {
            self.configList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.total
        }
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(_ input: DescribeListProtocolBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListProtocolBlockConfigResponse> {
        self.client.execute(action: "DescribeListProtocolBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(_ input: DescribeListProtocolBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListProtocolBlockConfigResponse {
        try await self.client.execute(action: "DescribeListProtocolBlockConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeListProtocolBlockConfigResponse> {
        self.describeListProtocolBlockConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfig(offset: Int64, limit: Int64, filterInstanceId: String, filterIp: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeListProtocolBlockConfigResponse {
        try await self.describeListProtocolBlockConfig(.init(offset: offset, limit: limit, filterInstanceId: filterInstanceId, filterIp: filterIp), region: region, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable
    public func describeListProtocolBlockConfigPaginated(_ input: DescribeListProtocolBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ProtocolBlockRelation])> {
        self.client.paginate(input: input, region: region, command: self.describeListProtocolBlockConfig, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的协议封禁配置列表
    @inlinable @discardableResult
    public func describeListProtocolBlockConfigPaginated(_ input: DescribeListProtocolBlockConfigRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeListProtocolBlockConfigResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeListProtocolBlockConfig, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取DDoS防护的协议封禁配置列表
    ///
    /// - Returns: `AsyncSequence`s of `ProtocolBlockRelation` and `DescribeListProtocolBlockConfigResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeListProtocolBlockConfigPaginator(_ input: DescribeListProtocolBlockConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeListProtocolBlockConfigRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeListProtocolBlockConfig, logger: logger, on: eventLoop)
    }
}
