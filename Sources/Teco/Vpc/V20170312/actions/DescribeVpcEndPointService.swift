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

extension Vpc {
    /// DescribeVpcEndPointService请求参数结构体
    public struct DescribeVpcEndPointServiceRequest: TCPaginatedRequest {
        /// 过滤条件。不支持同时传入参数 EndPointServiceIds and Filters。
        /// <li> service-id - String - （过滤条件）终端节点服务唯一ID。</li>
        /// <li>service-name - String - （过滤条件）终端节点实例名称。</li>
        /// <li>service-instance-id - String - （过滤条件）后端服务的唯一ID，比如lb-xxx。</li>
        /// <li>service-type - String - （过滤条件）后端PAAS服务类型，CLB,CDB,CRS，不填默认查询类型为CLB。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 终端节点服务ID。不支持同时传入参数 EndPointServiceIds and Filters。
        public let endPointServiceIds: [String]?

        /// <li>不支持同时传入参数 Filters 。</li> <li>列出授权给当前账号的的终端节点服务信息。可以配合EndPointServiceIds参数进行过滤，那些终端节点服务授权了该账户。</li>
        public let isListAuthorizedEndPointService: Bool?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil, isListAuthorizedEndPointService: Bool? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.endPointServiceIds = endPointServiceIds
            self.isListAuthorizedEndPointService = isListAuthorizedEndPointService
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case endPointServiceIds = "EndPointServiceIds"
            case isListAuthorizedEndPointService = "IsListAuthorizedEndPointService"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVpcEndPointServiceResponse) -> DescribeVpcEndPointServiceRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpcEndPointServiceRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, endPointServiceIds: self.endPointServiceIds, isListAuthorizedEndPointService: self.isListAuthorizedEndPointService)
        }
    }

    /// DescribeVpcEndPointService返回参数结构体
    public struct DescribeVpcEndPointServiceResponse: TCPaginatedResponse {
        /// 终端节点服务对象数组。
        public let endPointServiceSet: [EndPointService]

        /// 符合查询条件的个数。
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case endPointServiceSet = "EndPointServiceSet"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``EndPointService`` list from the paginated response.
        public func getItems() -> [EndPointService] {
            self.endPointServiceSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointService(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointServiceResponse> {
        self.client.execute(action: "DescribeVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointService(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceResponse {
        try await self.client.execute(action: "DescribeVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointService(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil, isListAuthorizedEndPointService: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointServiceResponse> {
        self.describeVpcEndPointService(.init(filters: filters, offset: offset, limit: limit, endPointServiceIds: endPointServiceIds, isListAuthorizedEndPointService: isListAuthorizedEndPointService), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointService(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil, isListAuthorizedEndPointService: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceResponse {
        try await self.describeVpcEndPointService(.init(filters: filters, offset: offset, limit: limit, endPointServiceIds: endPointServiceIds, isListAuthorizedEndPointService: isListAuthorizedEndPointService), region: region, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointServicePaginated(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [EndPointService])> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPointService, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable @discardableResult
    public func describeVpcEndPointServicePaginated(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVpcEndPointServiceResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVpcEndPointService, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    ///
    /// - Returns: `AsyncSequence`s of ``EndPointService`` and ``DescribeVpcEndPointServiceResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVpcEndPointServicePaginator(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVpcEndPointServiceRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcEndPointService, logger: logger, on: eventLoop)
    }
}
