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

extension Apigateway {
    /// DescribeServiceSubDomains请求参数结构体
    public struct DescribeServiceSubDomainsRequest: TCPaginatedRequest {
        /// 服务唯一 ID。
        public let serviceId: String

        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?

        /// 偏移量，默认为 0。
        public let offset: Int64?

        public init(serviceId: String, limit: Int64? = nil, offset: Int64? = nil) {
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeServiceSubDomainsResponse) -> DescribeServiceSubDomainsRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), (self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeServiceSubDomains返回参数结构体
    public struct DescribeServiceSubDomainsResponse: TCPaginatedResponse {
        /// 查询服务自定义域名列表。
        public let result: DomainSets

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DomainSetList`` list from the paginated response.
        public func getItems() -> [DomainSetList] {
            self.result.domainSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomains(_ input: DescribeServiceSubDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceSubDomainsResponse> {
        self.client.execute(action: "DescribeServiceSubDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomains(_ input: DescribeServiceSubDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceSubDomainsResponse {
        try await self.client.execute(action: "DescribeServiceSubDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomains(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeServiceSubDomainsResponse> {
        self.describeServiceSubDomains(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomains(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceSubDomainsResponse {
        try await self.describeServiceSubDomains(.init(serviceId: serviceId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomainsPaginated(_ input: DescribeServiceSubDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainSetList])> {
        self.client.paginate(input: input, region: region, command: self.describeServiceSubDomains, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable @discardableResult
    public func describeServiceSubDomainsPaginated(_ input: DescribeServiceSubDomainsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeServiceSubDomainsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeServiceSubDomains, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    ///
    /// - Returns: `AsyncSequence`s of ``DomainSetList`` and ``DescribeServiceSubDomainsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeServiceSubDomainsPaginator(_ input: DescribeServiceSubDomainsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeServiceSubDomainsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeServiceSubDomains, logger: logger, on: eventLoop)
    }
}
