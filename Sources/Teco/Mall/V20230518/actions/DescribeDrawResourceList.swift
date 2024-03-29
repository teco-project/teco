//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Mall {
    /// DescribeDrawResourceList请求参数结构体
    public struct DescribeDrawResourceListRequest: TCPaginatedRequest {
        /// PageNumber
        public let pageNumber: Int64

        /// PageSize
        public let pageSize: Int64

        public init(pageNumber: Int64, pageSize: Int64) {
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDrawResourceListResponse) -> DescribeDrawResourceListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(pageNumber: self.pageNumber + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeDrawResourceList返回参数结构体
    public struct DescribeDrawResourceListResponse: TCPaginatedResponse {
        /// 返回数据条数
        public let totalCount: Int64

        /// 返回数据内容
        public let resourceDrawList: [ResourceDrawListType]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case resourceDrawList = "ResourceDrawList"
            case requestId = "RequestId"
        }

        /// Extract the returned ``ResourceDrawListType`` list from the paginated response.
        public func getItems() -> [ResourceDrawListType] {
            self.resourceDrawList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable
    public func describeDrawResourceList(_ input: DescribeDrawResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrawResourceListResponse> {
        self.client.execute(action: "DescribeDrawResourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable
    public func describeDrawResourceList(_ input: DescribeDrawResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrawResourceListResponse {
        try await self.client.execute(action: "DescribeDrawResourceList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable
    public func describeDrawResourceList(pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDrawResourceListResponse> {
        self.describeDrawResourceList(.init(pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable
    public func describeDrawResourceList(pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDrawResourceListResponse {
        try await self.describeDrawResourceList(.init(pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable
    public func describeDrawResourceListPaginated(_ input: DescribeDrawResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ResourceDrawListType])> {
        self.client.paginate(input: input, region: region, command: self.describeDrawResourceList, logger: logger, on: eventLoop)
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    @inlinable @discardableResult
    public func describeDrawResourceListPaginated(_ input: DescribeDrawResourceListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDrawResourceListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDrawResourceList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询所有用户的资源接口
    ///
    /// 依据客户的Uin查询开通的资源列表
    ///
    /// - Returns: `AsyncSequence`s of ``ResourceDrawListType`` and ``DescribeDrawResourceListResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDrawResourceListPaginator(_ input: DescribeDrawResourceListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDrawResourceListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDrawResourceList, logger: logger, on: eventLoop)
    }
}
