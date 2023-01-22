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

extension Gse {
    /// ListAliases请求参数结构体
    public struct ListAliasesRequest: TCRequestModel {
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
    }

    /// ListAliases返回参数结构体
    public struct ListAliasesResponse: TCResponseModel {
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
    }

    /// 检索帐户下的所有别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        self.client.execute(action: "ListAliases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 检索帐户下的所有别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @inlinable
    public func listAliases(_ input: ListAliasesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        try await self.client.execute(action: "ListAliases", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 检索帐户下的所有别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @inlinable
    public func listAliases(name: String? = nil, routingStrategyType: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderWay: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListAliasesResponse> {
        self.listAliases(ListAliasesRequest(name: name, routingStrategyType: routingStrategyType, limit: limit, offset: offset, orderBy: orderBy, orderWay: orderWay, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 检索帐户下的所有别名
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（ListAliases）用于检索帐户下的所有别名。
    @inlinable
    public func listAliases(name: String? = nil, routingStrategyType: String? = nil, limit: UInt64? = nil, offset: UInt64? = nil, orderBy: String? = nil, orderWay: String? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListAliasesResponse {
        try await self.listAliases(ListAliasesRequest(name: name, routingStrategyType: routingStrategyType, limit: limit, offset: offset, orderBy: orderBy, orderWay: orderWay, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
