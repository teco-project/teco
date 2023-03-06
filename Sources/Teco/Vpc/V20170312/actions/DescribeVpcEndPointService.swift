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

extension Vpc {
    /// DescribeVpcEndPointService请求参数结构体
    public struct DescribeVpcEndPointServiceRequest: TCPaginatedRequest {
        /// 过滤条件。
        /// <li> service-id- String - （过滤条件）终端节点服务唯一ID。</li>
        /// <li>service-name - String - （过滤条件）终端节点实例名称。</li>
        /// <li>service-instance-id - String - （过滤条件）后端服务的唯一ID，比如lb-xxx。</li>
        public let filters: [Filter]?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 单页返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 终端节点服务ID。
        public let endPointServiceIds: [String]?

        public init(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.endPointServiceIds = endPointServiceIds
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case endPointServiceIds = "EndPointServiceIds"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeVpcEndPointServiceResponse) -> DescribeVpcEndPointServiceRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVpcEndPointServiceRequest(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, endPointServiceIds: self.endPointServiceIds)
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

        /// Extract the returned item list from the paginated response.
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
    public func describeVpcEndPointService(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVpcEndPointServiceResponse> {
        let input = DescribeVpcEndPointServiceRequest(filters: filters, offset: offset, limit: limit, endPointServiceIds: endPointServiceIds)
        return self.client.execute(action: "DescribeVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询终端节点服务列表
    ///
    /// 查询终端节点服务列表。
    @inlinable
    public func describeVpcEndPointService(filters: [Filter]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, endPointServiceIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVpcEndPointServiceResponse {
        let input = DescribeVpcEndPointServiceRequest(filters: filters, offset: offset, limit: limit, endPointServiceIds: endPointServiceIds)
        return try await self.client.execute(action: "DescribeVpcEndPointService", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
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
    @inlinable
    public func describeVpcEndPointServicePaginator(_ input: DescribeVpcEndPointServiceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeVpcEndPointServiceRequest, DescribeVpcEndPointServiceResponse>.ResultSequence, responses: TCClient.Paginator<DescribeVpcEndPointServiceRequest, DescribeVpcEndPointServiceResponse>.ResponseSequence) {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVpcEndPointService, logger: logger, on: eventLoop)
    }
}
