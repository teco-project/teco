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
    /// ListAliases请求参数结构体
    public struct ListAliasesRequest: TCPaginatedRequest {
        /// 名字，长度不小于1字符不超过1024字符
        public let name: String?

        /// 路由策略类型，有效值常规别名(SIMPLE)、终止别名(TERMINAL)
        public let routingStrategyType: String?

        /// 要返回的最大结果数，最小值1
        public let limit: UInt64?

        /// 偏移，默认0
        public let offset: UInt64?

        /// 排序字段，例如CreationTime
        public let orderBy: String?

        /// 排序方式，有效值asc|desc
        public let orderWay: String?

        /// 资源过滤字段，可以按照资源名称和标签进行过滤- 资源名称过滤    - Key: 固定字符串 "resource:name"    - Values: 资源名称数组（舰队当前仅支持单个名称的过滤）- 标签过滤    - 通过标签键过滤        - Key: 固定字符串 "tag:key"        - Values 不传    - 通过标签键值过滤        - Key: 固定字符串 "tag:key-value"        - Values: 标签键值对数组，例如 ["key1:value1", "key1:value2", "key2:value2"]
        public let filters: [Filter]?

        public init(name: String? = nil, routingStrategyType: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderWay: String? = nil, filters: [Filter]? = nil) {
            self.name = name
            self.routingStrategyType = routingStrategyType
            self.limit = limit
            self.offset = offset
            self.orderBy = orderBy
            self.orderWay = orderWay
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case routingStrategyType = "RoutingStrategyType"
            case limit = "Limit"
            case offset = "Offset"
            case orderBy = "OrderBy"
            case orderWay = "OrderWay"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: ListAliasesResponse) -> ListAliasesRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(name: self.name, routingStrategyType: self.routingStrategyType, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), orderBy: self.orderBy, orderWay: self.orderWay, filters: self.filters)
        }
    }

    /// ListAliases返回参数结构体
    public struct ListAliasesResponse: TCPaginatedResponse {
        /// 别名对象数组
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let aliases: [Alias]?

        /// 总数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case aliases = "Aliases"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Alias`` list from the paginated response.
        public func getItems() -> [Alias] {
            self.aliases ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliases(name: String? = nil, routingStrategyType: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderWay: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliases(name: String? = nil, routingStrategyType: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderWay: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliasesPaginated(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Alias])> {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func listAliasesPaginated(_ input: ListAliasesRequest, region: TCRegion? = nil, onResponse: @escaping (ListAliasesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        fatalError("'ListAliases' is no longer available.")
    }

    /// 检索帐户下的所有别名
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    ///
    /// - Returns: `AsyncSequence`s of ``Alias`` and ``ListAliasesResponse`` that can be iterated over asynchronously on demand.
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func listAliasesPaginator(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<ListAliasesRequest> {
        fatalError("'ListAliases' is no longer available.")
    }
}
