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

extension Tcr {
    /// DescribeImagePersonal请求参数结构体
    public struct DescribeImagePersonalRequest: TCPaginatedRequest {
        /// 仓库名称
        public let repoName: String

        /// 偏移量，默认为0
        public let offset: Int64?

        /// 返回最大数量，默认 20, 最大值 100
        public let limit: Int64?

        /// tag名称，可根据输入搜索
        public let tag: String?

        public init(repoName: String, offset: Int64? = nil, limit: Int64? = nil, tag: String? = nil) {
            self.repoName = repoName
            self.offset = offset
            self.limit = limit
            self.tag = tag
        }

        enum CodingKeys: String, CodingKey {
            case repoName = "RepoName"
            case offset = "Offset"
            case limit = "Limit"
            case tag = "Tag"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeImagePersonalResponse) -> DescribeImagePersonalRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeImagePersonalRequest(repoName: self.repoName, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, tag: self.tag)
        }
    }

    /// DescribeImagePersonal返回参数结构体
    public struct DescribeImagePersonalResponse: TCPaginatedResponse {
        /// 镜像tag信息
        public let data: TagInfoResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TagInfo] {
            self.data.tagInfo
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data.tagCount
        }
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(_ input: DescribeImagePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagePersonalResponse> {
        self.client.execute(action: "DescribeImagePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(_ input: DescribeImagePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagePersonalResponse {
        try await self.client.execute(action: "DescribeImagePersonal", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(repoName: String, offset: Int64? = nil, limit: Int64? = nil, tag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImagePersonalResponse> {
        self.describeImagePersonal(.init(repoName: repoName, offset: offset, limit: limit, tag: tag), region: region, logger: logger, on: eventLoop)
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonal(repoName: String, offset: Int64? = nil, limit: Int64? = nil, tag: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImagePersonalResponse {
        try await self.describeImagePersonal(.init(repoName: repoName, offset: offset, limit: limit, tag: tag), region: region, logger: logger, on: eventLoop)
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable
    public func describeImagePersonalPaginated(_ input: DescribeImagePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [TagInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeImagePersonal, logger: logger, on: eventLoop)
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    @inlinable @discardableResult
    public func describeImagePersonalPaginated(_ input: DescribeImagePersonalRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeImagePersonalResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeImagePersonal, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取个人版镜像仓库tag列表
    ///
    /// 用于获取个人版镜像仓库tag列表
    ///
    /// - Returns: `AsyncSequence`s of `TagInfo` and `DescribeImagePersonalResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeImagePersonalPaginator(_ input: DescribeImagePersonalRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeImagePersonalRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeImagePersonal, logger: logger, on: eventLoop)
    }
}
