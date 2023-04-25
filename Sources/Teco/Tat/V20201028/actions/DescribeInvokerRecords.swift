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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Tat {
    /// DescribeInvokerRecords请求参数结构体
    public struct DescribeInvokerRecordsRequest: TCPaginatedRequest {
        /// 执行器ID列表。列表上限 100。
        public let invokerIds: [String]?

        /// 返回数量，默认为20，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        public init(invokerIds: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.invokerIds = invokerIds
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case invokerIds = "InvokerIds"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeInvokerRecordsResponse) -> DescribeInvokerRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeInvokerRecordsRequest(invokerIds: self.invokerIds, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count))
        }
    }

    /// DescribeInvokerRecords返回参数结构体
    public struct DescribeInvokerRecordsResponse: TCPaginatedResponse {
        /// 符合条件的历史记录数量。
        public let totalCount: UInt64

        /// 执行器执行历史记录。
        public let invokerRecordSet: [InvokerRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case invokerRecordSet = "InvokerRecordSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [InvokerRecord] {
            self.invokerRecordSet
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable
    public func describeInvokerRecords(_ input: DescribeInvokerRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvokerRecordsResponse> {
        self.client.execute(action: "DescribeInvokerRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable
    public func describeInvokerRecords(_ input: DescribeInvokerRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvokerRecordsResponse {
        try await self.client.execute(action: "DescribeInvokerRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable
    public func describeInvokerRecords(invokerIds: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeInvokerRecordsResponse> {
        self.describeInvokerRecords(.init(invokerIds: invokerIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable
    public func describeInvokerRecords(invokerIds: [String]? = nil, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeInvokerRecordsResponse {
        try await self.describeInvokerRecords(.init(invokerIds: invokerIds, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable
    public func describeInvokerRecordsPaginated(_ input: DescribeInvokerRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [InvokerRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeInvokerRecords, logger: logger, on: eventLoop)
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    @inlinable @discardableResult
    public func describeInvokerRecordsPaginated(_ input: DescribeInvokerRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeInvokerRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeInvokerRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询执行器执行记录
    ///
    /// 此接口用于查询执行器的执行记录。
    ///
    /// - Returns: `AsyncSequence`s of `InvokerRecord` and `DescribeInvokerRecordsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeInvokerRecordsPaginator(_ input: DescribeInvokerRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeInvokerRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeInvokerRecords, logger: logger, on: eventLoop)
    }
}
