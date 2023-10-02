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

extension Vpc {
    /// DescribeIp6Translators请求参数结构体
    public struct DescribeIp6TranslatorsRequest: TCPaginatedRequest {
        /// IPV6转换实例唯一ID数组，形如ip6-xxxxxxxx
        public let ip6TranslatorIds: [String]?

        /// 每次请求的`Filters`的上限为10，`Filter.Values`的上限为5。参数不支持同时指定`Ip6TranslatorIds`和`Filters`。详细的过滤条件如下：
        /// - ip6-translator-id - String - 是否必填：否 - （过滤条件）按照IPV6转换实例的唯一ID过滤,形如ip6-xxxxxxx。
        /// - ip6-translator-vip6 - String - 是否必填：否 - （过滤条件）按照IPV6地址过滤。不支持模糊过滤。
        /// - ip6-translator-name - String - 是否必填：否 - （过滤条件）按照IPV6转换实例名称过滤。不支持模糊过滤。
        /// - ip6-translator-status - String - 是否必填：否 - （过滤条件）按照IPV6转换实例的状态过滤。状态取值范围为"CREATING","RUNNING","DELETING","MODIFYING"
        public let filters: [Filter]?

        /// 偏移量，默认为0。关于`Offset`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为100。关于`Limit`的更进一步介绍请参考 API [简介](https://cloud.tencent.com/document/api/213/11646)中的相关小节。
        public let limit: Int64?

        public init(ip6TranslatorIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil) {
            self.ip6TranslatorIds = ip6TranslatorIds
            self.filters = filters
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case ip6TranslatorIds = "Ip6TranslatorIds"
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeIp6TranslatorsResponse) -> DescribeIp6TranslatorsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(ip6TranslatorIds: self.ip6TranslatorIds, filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeIp6Translators返回参数结构体
    public struct DescribeIp6TranslatorsResponse: TCPaginatedResponse {
        /// 符合过滤条件的IPV6转换实例数量。
        public let totalCount: Int64

        /// 符合过滤条件的IPV6转换实例详细信息
        public let ip6TranslatorSet: [Ip6Translator]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case ip6TranslatorSet = "Ip6TranslatorSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``Ip6Translator`` list from the paginated response.
        public func getItems() -> [Ip6Translator] {
            self.ip6TranslatorSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable
    public func describeIp6Translators(_ input: DescribeIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6TranslatorsResponse> {
        self.client.execute(action: "DescribeIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable
    public func describeIp6Translators(_ input: DescribeIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6TranslatorsResponse {
        try await self.client.execute(action: "DescribeIp6Translators", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable
    public func describeIp6Translators(ip6TranslatorIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeIp6TranslatorsResponse> {
        self.describeIp6Translators(.init(ip6TranslatorIds: ip6TranslatorIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable
    public func describeIp6Translators(ip6TranslatorIds: [String]? = nil, filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeIp6TranslatorsResponse {
        try await self.describeIp6Translators(.init(ip6TranslatorIds: ip6TranslatorIds, filters: filters, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable
    public func describeIp6TranslatorsPaginated(_ input: DescribeIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [Ip6Translator])> {
        self.client.paginate(input: input, region: region, command: self.describeIp6Translators, logger: logger, on: eventLoop)
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    @inlinable @discardableResult
    public func describeIp6TranslatorsPaginated(_ input: DescribeIp6TranslatorsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeIp6TranslatorsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeIp6Translators, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询IPV6转换实例及其绑定规则信息
    ///
    /// 1. 该接口用于查询账户下的IPV6转换实例及其绑定的转换规则信息
    /// 2. 支持过滤查询
    ///
    /// - Returns: `AsyncSequence`s of ``Ip6Translator`` and ``DescribeIp6TranslatorsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeIp6TranslatorsPaginator(_ input: DescribeIp6TranslatorsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeIp6TranslatorsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeIp6Translators, logger: logger, on: eventLoop)
    }
}
