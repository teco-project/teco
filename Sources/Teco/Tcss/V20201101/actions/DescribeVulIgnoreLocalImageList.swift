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

extension Tcss {
    /// DescribeVulIgnoreLocalImageList请求参数结构体
    public struct DescribeVulIgnoreLocalImageListRequest: TCPaginatedRequest {
        /// 漏洞PocID
        public let pocID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 排序方式:DESC,ACS
        public let order: String?

        /// 排序字段 ImageSize
        public let by: String?

        public init(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil) {
            self.pocID = pocID
            self.limit = limit
            self.offset = offset
            self.order = order
            self.by = by
        }

        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case limit = "Limit"
            case offset = "Offset"
            case order = "Order"
            case by = "By"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVulIgnoreLocalImageListResponse) -> DescribeVulIgnoreLocalImageListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulIgnoreLocalImageListRequest(pocID: self.pocID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), order: self.order, by: self.by)
        }
    }

    /// DescribeVulIgnoreLocalImageList返回参数结构体
    public struct DescribeVulIgnoreLocalImageListResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 镜像列表
        public let list: [VulIgnoreLocalImage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned ``VulIgnoreLocalImage`` list from the paginated response.
        public func getItems() -> [VulIgnoreLocalImage] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable
    public func describeVulIgnoreLocalImageList(_ input: DescribeVulIgnoreLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulIgnoreLocalImageListResponse> {
        self.client.execute(action: "DescribeVulIgnoreLocalImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable
    public func describeVulIgnoreLocalImageList(_ input: DescribeVulIgnoreLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulIgnoreLocalImageListResponse {
        try await self.client.execute(action: "DescribeVulIgnoreLocalImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable
    public func describeVulIgnoreLocalImageList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulIgnoreLocalImageListResponse> {
        self.describeVulIgnoreLocalImageList(.init(pocID: pocID, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable
    public func describeVulIgnoreLocalImageList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, order: String? = nil, by: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulIgnoreLocalImageListResponse {
        try await self.describeVulIgnoreLocalImageList(.init(pocID: pocID, limit: limit, offset: offset, order: order, by: by), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable
    public func describeVulIgnoreLocalImageListPaginated(_ input: DescribeVulIgnoreLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulIgnoreLocalImage])> {
        self.client.paginate(input: input, region: region, command: self.describeVulIgnoreLocalImageList, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    @inlinable @discardableResult
    public func describeVulIgnoreLocalImageListPaginated(_ input: DescribeVulIgnoreLocalImageListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulIgnoreLocalImageListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulIgnoreLocalImageList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的本地镜像列表
    ///
    /// - Returns: `AsyncSequence`s of `VulIgnoreLocalImage` and `DescribeVulIgnoreLocalImageListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVulIgnoreLocalImageListPaginator(_ input: DescribeVulIgnoreLocalImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVulIgnoreLocalImageListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulIgnoreLocalImageList, logger: logger, on: eventLoop)
    }
}
