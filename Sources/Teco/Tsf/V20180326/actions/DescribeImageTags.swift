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
    /// DescribeImageTags请求参数结构体
    public struct DescribeImageTagsRequest: TCPaginatedRequest {
        /// 应用Id
        public let applicationId: String

        /// 偏移量，取值从0开始
        public let offset: Int64?

        /// 分页个数，默认为20， 取值应为1~100
        public let limit: Int64?

        /// 不填和0:查询 1:不查询
        public let queryImageIdFlag: Int64?

        /// 可用于搜索的 tag 名字
        public let searchWord: String?

        /// 企业: tcr ；个人: personal或者不填
        public let repoType: String?

        /// TcrRepoInfo值
        public let tcrRepoInfo: TcrRepoInfo?

        public init(applicationId: String, offset: Int64? = nil, limit: Int64? = nil, queryImageIdFlag: Int64? = nil, searchWord: String? = nil, repoType: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil) {
            self.applicationId = applicationId
            self.offset = offset
            self.limit = limit
            self.queryImageIdFlag = queryImageIdFlag
            self.searchWord = searchWord
            self.repoType = repoType
            self.tcrRepoInfo = tcrRepoInfo
        }

        enum CodingKeys: String, CodingKey {
            case applicationId = "ApplicationId"
            case offset = "Offset"
            case limit = "Limit"
            case queryImageIdFlag = "QueryImageIdFlag"
            case searchWord = "SearchWord"
            case repoType = "RepoType"
            case tcrRepoInfo = "TcrRepoInfo"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImageTagsResponse) -> DescribeImageTagsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImageTagsRequest(applicationId: self.applicationId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, queryImageIdFlag: self.queryImageIdFlag, searchWord: self.searchWord, repoType: self.repoType, tcrRepoInfo: self.tcrRepoInfo)
        }
    }

    /// DescribeImageTags返回参数结构体
    public struct DescribeImageTagsResponse: TCPaginatedResponse {
        /// 查询的权限数据对象
        public let result: ImageTagsResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ImageTag] {
            self.result.content
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.result.totalCount
        }
    }

    /// 镜像版本列表
    @inlinable
    public func describeImageTags(_ input: DescribeImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageTagsResponse> {
        self.client.execute(action: "DescribeImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像版本列表
    @inlinable
    public func describeImageTags(_ input: DescribeImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageTagsResponse {
        try await self.client.execute(action: "DescribeImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像版本列表
    @inlinable
    public func describeImageTags(applicationId: String, offset: Int64? = nil, limit: Int64? = nil, queryImageIdFlag: Int64? = nil, searchWord: String? = nil, repoType: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageTagsResponse> {
        let input = DescribeImageTagsRequest(applicationId: applicationId, offset: offset, limit: limit, queryImageIdFlag: queryImageIdFlag, searchWord: searchWord, repoType: repoType, tcrRepoInfo: tcrRepoInfo)
        return self.client.execute(action: "DescribeImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 镜像版本列表
    @inlinable
    public func describeImageTags(applicationId: String, offset: Int64? = nil, limit: Int64? = nil, queryImageIdFlag: Int64? = nil, searchWord: String? = nil, repoType: String? = nil, tcrRepoInfo: TcrRepoInfo? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageTagsResponse {
        let input = DescribeImageTagsRequest(applicationId: applicationId, offset: offset, limit: limit, queryImageIdFlag: queryImageIdFlag, searchWord: searchWord, repoType: repoType, tcrRepoInfo: tcrRepoInfo)
        return try await self.client.execute(action: "DescribeImageTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 镜像版本列表
    @inlinable
    public func describeImageTagsPaginated(_ input: DescribeImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ImageTag])> {
        self.client.paginate(input: input, region: region, command: self.describeImageTags, logger: logger, on: eventLoop)
    }

    /// 镜像版本列表
    @inlinable @discardableResult
    public func describeImageTagsPaginated(_ input: DescribeImageTagsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImageTagsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImageTags, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 镜像版本列表
    ///
    /// - Returns: `AsyncSequence`s of `ImageTag` and `DescribeImageTagsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImageTagsPaginator(_ input: DescribeImageTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImageTagsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImageTags, logger: logger, on: eventLoop)
    }
}
