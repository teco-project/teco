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
        public func getNextPaginatedRequest(with response: DescribeServiceSubDomainsResponse) -> DescribeServiceSubDomainsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeServiceSubDomainsRequest(serviceId: self.serviceId, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
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

        /// Extract the returned item list from the paginated response.
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
        let input = DescribeServiceSubDomainsRequest(serviceId: serviceId, limit: limit, offset: offset)
        return self.client.execute(action: "DescribeServiceSubDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询自定义域名列表
    ///
    /// 本接口（DescribeServiceSubDomains）用于查询自定义域名列表。
    /// API 网关可绑定自定义域名到服务，用于服务调用。此接口用于查询用户绑定在服务的自定义域名列表。
    @inlinable
    public func describeServiceSubDomains(serviceId: String, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceSubDomainsResponse {
        let input = DescribeServiceSubDomainsRequest(serviceId: serviceId, limit: limit, offset: offset)
        return try await self.client.execute(action: "DescribeServiceSubDomains", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
