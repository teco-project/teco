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

extension Wedata {
    /// DescribeBaselines请求参数结构体
    public struct DescribeBaselinesRequest: TCPaginatedRequest {
        /// 无
        public let filters: [Filter]

        /// 页面下标
        public let pageNumber: Int64

        /// 页面大小
        public let pageSize: Int64

        public init(filters: [Filter], pageNumber: Int64, pageSize: Int64) {
            self.filters = filters
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBaselinesResponse) -> DescribeBaselinesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBaselinesRequest(filters: self.filters, pageNumber: self.pageNumber + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeBaselines返回参数结构体
    public struct DescribeBaselinesResponse: TCPaginatedResponse {
        /// 基线列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DescribeBaselineResponse?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [BaselineDto] {
            self.data?.baselines ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.data?.totalCount
        }
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable
    public func describeBaselines(_ input: DescribeBaselinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselinesResponse> {
        self.client.execute(action: "DescribeBaselines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable
    public func describeBaselines(_ input: DescribeBaselinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselinesResponse {
        try await self.client.execute(action: "DescribeBaselines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable
    public func describeBaselines(filters: [Filter], pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBaselinesResponse> {
        self.describeBaselines(.init(filters: filters, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable
    public func describeBaselines(filters: [Filter], pageNumber: Int64, pageSize: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBaselinesResponse {
        try await self.describeBaselines(.init(filters: filters, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable
    public func describeBaselinesPaginated(_ input: DescribeBaselinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [BaselineDto])> {
        self.client.paginate(input: input, region: region, command: self.describeBaselines, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    @inlinable @discardableResult
    public func describeBaselinesPaginated(_ input: DescribeBaselinesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBaselinesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBaselines, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 拉取基线列表
    ///
    /// 基线列表
    ///
    /// - Returns: `AsyncSequence`s of `BaselineDto` and `DescribeBaselinesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBaselinesPaginator(_ input: DescribeBaselinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBaselinesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBaselines, logger: logger, on: eventLoop)
    }
}
