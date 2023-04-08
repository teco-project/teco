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
    /// DescribeVulIgnoreRegistryImageList请求参数结构体
    public struct DescribeVulIgnoreRegistryImageListRequest: TCPaginatedRequest {
        /// 漏洞PocID
        public let pocID: String

        /// 需要返回的数量，默认为10，最大值为100
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.pocID = pocID
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case pocID = "PocID"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeVulIgnoreRegistryImageListResponse) -> DescribeVulIgnoreRegistryImageListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeVulIgnoreRegistryImageListRequest(pocID: self.pocID, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeVulIgnoreRegistryImageList返回参数结构体
    public struct DescribeVulIgnoreRegistryImageListResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 镜像列表
        public let list: [VulIgnoreRegistryImage]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case list = "List"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [VulIgnoreRegistryImage] {
            self.list
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable
    public func describeVulIgnoreRegistryImageList(_ input: DescribeVulIgnoreRegistryImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulIgnoreRegistryImageListResponse> {
        self.client.execute(action: "DescribeVulIgnoreRegistryImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable
    public func describeVulIgnoreRegistryImageList(_ input: DescribeVulIgnoreRegistryImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulIgnoreRegistryImageListResponse {
        try await self.client.execute(action: "DescribeVulIgnoreRegistryImageList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable
    public func describeVulIgnoreRegistryImageList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeVulIgnoreRegistryImageListResponse> {
        self.describeVulIgnoreRegistryImageList(.init(pocID: pocID, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable
    public func describeVulIgnoreRegistryImageList(pocID: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeVulIgnoreRegistryImageListResponse {
        try await self.describeVulIgnoreRegistryImageList(.init(pocID: pocID, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable
    public func describeVulIgnoreRegistryImageListPaginated(_ input: DescribeVulIgnoreRegistryImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [VulIgnoreRegistryImage])> {
        self.client.paginate(input: input, region: region, command: self.describeVulIgnoreRegistryImageList, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    @inlinable @discardableResult
    public func describeVulIgnoreRegistryImageListPaginated(_ input: DescribeVulIgnoreRegistryImageListRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeVulIgnoreRegistryImageListResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeVulIgnoreRegistryImageList, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询漏洞扫描忽略的仓库镜像列表
    ///
    /// - Returns: `AsyncSequence`s of `VulIgnoreRegistryImage` and `DescribeVulIgnoreRegistryImageListResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeVulIgnoreRegistryImageListPaginator(_ input: DescribeVulIgnoreRegistryImageListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeVulIgnoreRegistryImageListRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeVulIgnoreRegistryImageList, logger: logger, on: eventLoop)
    }
}
