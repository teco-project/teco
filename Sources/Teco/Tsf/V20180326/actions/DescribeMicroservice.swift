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

extension Tsf {
    /// DescribeMicroservice请求参数结构体
    public struct DescribeMicroserviceRequest: TCPaginatedRequest {
        /// 微服务ID
        public let microserviceId: String

        /// 偏移量
        public let offset: Int64?

        /// 分页个数
        public let limit: Int64?

        /// 可选，根据部署组ID进行过滤
        public let groupIds: [String]?

        /// 过滤条件。多个 filter 之间是与关系，单个 filter 多个 value 之间是或关系。filter name 取值有：id（实例id）、name（实例名）、lan-ip（内网ip）、node-ip（所在节点ip）
        public let filters: [Filter]?

        public init(microserviceId: String, offset: Int64? = nil, limit: Int64? = nil, groupIds: [String]? = nil, filters: [Filter]? = nil) {
            self.microserviceId = microserviceId
            self.offset = offset
            self.limit = limit
            self.groupIds = groupIds
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case microserviceId = "MicroserviceId"
            case offset = "Offset"
            case limit = "Limit"
            case groupIds = "GroupIds"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeMicroserviceResponse) -> DescribeMicroserviceRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMicroserviceRequest(microserviceId: self.microserviceId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, groupIds: self.groupIds, filters: self.filters)
        }
    }

    /// DescribeMicroservice返回参数结构体
    public struct DescribeMicroserviceResponse: TCPaginatedResponse {
        /// 微服务详情实例列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: TsfPageMsInstance?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [MsInstance] {
            self.result?.content ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result?.totalCount
        }
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservice(_ input: DescribeMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroserviceResponse> {
        self.client.execute(action: "DescribeMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservice(_ input: DescribeMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroserviceResponse {
        try await self.client.execute(action: "DescribeMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservice(microserviceId: String, offset: Int64? = nil, limit: Int64? = nil, groupIds: [String]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMicroserviceResponse> {
        let input = DescribeMicroserviceRequest(microserviceId: microserviceId, offset: offset, limit: limit, groupIds: groupIds, filters: filters)
        return self.client.execute(action: "DescribeMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservice(microserviceId: String, offset: Int64? = nil, limit: Int64? = nil, groupIds: [String]? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMicroserviceResponse {
        let input = DescribeMicroserviceRequest(microserviceId: microserviceId, offset: offset, limit: limit, groupIds: groupIds, filters: filters)
        return try await self.client.execute(action: "DescribeMicroservice", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservicePaginated(_ input: DescribeMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [MsInstance])> {
        self.client.paginate(input: input, region: region, command: self.describeMicroservice, logger: logger, on: eventLoop)
    }

    /// 查询微服务详情
    @inlinable @discardableResult
    public func describeMicroservicePaginated(_ input: DescribeMicroserviceRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMicroserviceResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMicroservice, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询微服务详情
    @inlinable
    public func describeMicroservicePaginator(_ input: DescribeMicroserviceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMicroserviceRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMicroservice, logger: logger, on: eventLoop)
    }
}
