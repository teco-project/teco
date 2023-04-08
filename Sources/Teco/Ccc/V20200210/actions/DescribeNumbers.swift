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

extension Ccc {
    /// DescribeNumbers请求参数结构体
    public struct DescribeNumbersRequest: TCPaginatedRequest {
        /// 应用 ID（必填），可以查看 https://console.cloud.tencent.com/ccc
        public let sdkAppId: UInt64

        /// 页数，从0开始
        public let pageNumber: UInt64?

        /// 分页大小，默认20
        public let pageSize: UInt64?

        public init(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil) {
            self.sdkAppId = sdkAppId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNumbersResponse) -> DescribeNumbersRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNumbersRequest(sdkAppId: self.sdkAppId, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize)
        }
    }

    /// DescribeNumbers返回参数结构体
    public struct DescribeNumbersResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: UInt64

        /// 号码列表
        public let numbers: [NumberInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case numbers = "Numbers"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [NumberInfo] {
            self.numbers
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询号码列表
    @inlinable
    public func describeNumbers(_ input: DescribeNumbersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNumbersResponse> {
        self.client.execute(action: "DescribeNumbers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询号码列表
    @inlinable
    public func describeNumbers(_ input: DescribeNumbersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNumbersResponse {
        try await self.client.execute(action: "DescribeNumbers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询号码列表
    @inlinable
    public func describeNumbers(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNumbersResponse> {
        self.describeNumbers(.init(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询号码列表
    @inlinable
    public func describeNumbers(sdkAppId: UInt64, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNumbersResponse {
        try await self.describeNumbers(.init(sdkAppId: sdkAppId, pageNumber: pageNumber, pageSize: pageSize), region: region, logger: logger, on: eventLoop)
    }

    /// 查询号码列表
    @inlinable
    public func describeNumbersPaginated(_ input: DescribeNumbersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NumberInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeNumbers, logger: logger, on: eventLoop)
    }

    /// 查询号码列表
    @inlinable @discardableResult
    public func describeNumbersPaginated(_ input: DescribeNumbersRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNumbersResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNumbers, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询号码列表
    ///
    /// - Returns: `AsyncSequence`s of `NumberInfo` and `DescribeNumbersResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNumbersPaginator(_ input: DescribeNumbersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNumbersRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNumbers, logger: logger, on: eventLoop)
    }
}
