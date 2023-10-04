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

extension Gse {
    /// DescribeGameServerSessionQueues请求参数结构体
    public struct DescribeGameServerSessionQueuesRequest: TCPaginatedRequest {
        /// 游戏服务器会话队列名称数组，单个名字长度1~128
        public let names: [String]?

        /// 结果返回最大数量，最小值0，最大值100
        public let limit: UInt64?

        /// 返回结果偏移，最小值0
        public let offset: UInt64?

        /// 资源过滤字段，可以按照资源名称、资源ID和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（游戏服务器会话队列支持多个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        public let filters: [Filter]?

        public init(names: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.names = names
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case names = "Names"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeGameServerSessionQueuesResponse) -> DescribeGameServerSessionQueuesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(names: self.names, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters)
        }
    }

    /// DescribeGameServerSessionQueues返回参数结构体
    public struct DescribeGameServerSessionQueuesResponse: TCPaginatedResponse {
        /// 游戏服务器会话队列数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let gameServerSessionQueues: [GameServerSessionQueue]?

        /// 游戏服务器会话队列总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case gameServerSessionQueues = "GameServerSessionQueues"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``GameServerSessionQueue`` list from the paginated response.
        public func getItems() -> [GameServerSessionQueue] {
            self.gameServerSessionQueues ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueues(_ input: DescribeGameServerSessionQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionQueuesResponse> {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueues(_ input: DescribeGameServerSessionQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionQueuesResponse {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueues(names: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGameServerSessionQueuesResponse> {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueues(names: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGameServerSessionQueuesResponse {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueuesPaginated(_ input: DescribeGameServerSessionQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [GameServerSessionQueue])> {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func describeGameServerSessionQueuesPaginated(_ input: DescribeGameServerSessionQueuesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeGameServerSessionQueuesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }

    /// 查询游戏服务器会话队列
    ///
    /// 本接口（DescribeGameServerSessionQueues）用于查询游戏服务器会话队列。
    ///
    /// - Returns: `AsyncSequence`s of ``GameServerSessionQueue`` and ``DescribeGameServerSessionQueuesResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeGameServerSessionQueuesPaginator(_ input: DescribeGameServerSessionQueuesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeGameServerSessionQueuesRequest> {
        fatalError("'DescribeGameServerSessionQueues' is no longer available.")
    }
}
