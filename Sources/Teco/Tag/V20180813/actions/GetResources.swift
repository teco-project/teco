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

import TecoCore
import TecoPaginationHelpers

extension Tag {
    /// GetResources请求参数结构体
    public struct GetResourcesRequest: TCPaginatedRequest {
        /// 资源六段式列表。腾讯云使用资源六段式描述一个资源。
        /// 例如：ResourceList.1 = qcs::${ServiceType}:${Region}:${Account}:${ResourcePreifx}/${ResourceId}。
        /// 如果传入了此参数会返回所有匹配的资源列表，指定的MaxResults会失效。
        /// N取值范围：0~9
        public let resourceList: [String]?

        /// 标签键和标签值。
        /// 指定多个标签，会查询同时绑定了该多个标签的资源。
        /// N取值范围：0~5。
        /// 每个TagFilters中的TagValue最多支持10个
        public let tagFilters: [TagFilter]?

        /// 从上一页的响应中获取的下一页的Token值。
        /// 如果是第一次请求，设置为空。
        public let paginationToken: String?

        /// 每一页返回的数据最大条数，最大200。
        /// 缺省值：50。
        public let maxResults: UInt64?

        public init(resourceList: [String]? = nil, tagFilters: [TagFilter]? = nil, paginationToken: String? = nil, maxResults: UInt64? = nil) {
            self.resourceList = resourceList
            self.tagFilters = tagFilters
            self.paginationToken = paginationToken
            self.maxResults = maxResults
        }

        enum CodingKeys: String, CodingKey {
            case resourceList = "ResourceList"
            case tagFilters = "TagFilters"
            case paginationToken = "PaginationToken"
            case maxResults = "MaxResults"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: GetResourcesResponse) -> GetResourcesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return GetResourcesRequest(resourceList: self.resourceList, tagFilters: self.tagFilters, paginationToken: response.paginationToken, maxResults: self.maxResults)
        }
    }

    /// GetResources返回参数结构体
    public struct GetResourcesResponse: TCPaginatedResponse {
        /// 获取的下一页的Token值
        public let paginationToken: String

        /// 资源及关联的标签(键和值)列表
        public let resourceTagMappingList: [ResourceTagMapping]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case paginationToken = "PaginationToken"
            case resourceTagMappingList = "ResourceTagMappingList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ResourceTagMapping] {
            self.resourceTagMappingList
        }
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable
    public func getResources(_ input: GetResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesResponse> {
        self.client.execute(action: "GetResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable
    public func getResources(_ input: GetResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcesResponse {
        try await self.client.execute(action: "GetResources", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable
    public func getResources(resourceList: [String]? = nil, tagFilters: [TagFilter]? = nil, paginationToken: String? = nil, maxResults: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetResourcesResponse> {
        self.getResources(.init(resourceList: resourceList, tagFilters: tagFilters, paginationToken: paginationToken, maxResults: maxResults), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable
    public func getResources(resourceList: [String]? = nil, tagFilters: [TagFilter]? = nil, paginationToken: String? = nil, maxResults: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetResourcesResponse {
        try await self.getResources(.init(resourceList: resourceList, tagFilters: tagFilters, paginationToken: paginationToken, maxResults: maxResults), region: region, logger: logger, on: eventLoop)
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable
    public func getResourcesPaginated(_ input: GetResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [ResourceTagMapping])> {
        self.client.paginate(input: input, region: region, command: self.getResources, logger: logger, on: eventLoop)
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    @inlinable @discardableResult
    public func getResourcesPaginated(_ input: GetResourcesRequest, region: TCRegion? = nil, onResponse: @escaping (GetResourcesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.getResources, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询资源标签列表
    ///
    /// 查询绑定了标签的资源列表。
    ///
    /// - Returns: `AsyncSequence`s of `ResourceTagMapping` and `GetResourcesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func getResourcesPaginator(_ input: GetResourcesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<GetResourcesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.getResources, logger: logger, on: eventLoop)
    }
}
