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

extension Tione {
    /// DescribeNotebookImageRecords请求参数结构体
    public struct DescribeNotebookImageRecordsRequest: TCPaginatedRequest {
        /// notebook id
        public let notebookId: String

        /// 位移值
        public let offset: UInt64

        /// 日志限制
        public let limit: UInt64

        /// 状态筛选
        public let filters: [Filter]?

        public init(notebookId: String, offset: UInt64, limit: UInt64, filters: [Filter]? = nil) {
            self.notebookId = notebookId
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case notebookId = "NotebookId"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNotebookImageRecordsResponse) -> DescribeNotebookImageRecordsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return .init(notebookId: self.notebookId, offset: self.offset + .init(response.getItems().count), limit: self.limit, filters: self.filters)
        }
    }

    /// DescribeNotebookImageRecords返回参数结构体
    public struct DescribeNotebookImageRecordsResponse: TCPaginatedResponse {
        /// 总条数
        public let totalCount: UInt64

        /// 镜像保存记录
        public let notebookImageRecords: [NotebookImageRecord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case notebookImageRecords = "NotebookImageRecords"
            case requestId = "RequestId"
        }

        /// Extract the returned ``NotebookImageRecord`` list from the paginated response.
        public func getItems() -> [NotebookImageRecord] {
            self.notebookImageRecords
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查看notebook镜像保存记录
    @inlinable
    public func describeNotebookImageRecords(_ input: DescribeNotebookImageRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookImageRecordsResponse> {
        self.client.execute(action: "DescribeNotebookImageRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看notebook镜像保存记录
    @inlinable
    public func describeNotebookImageRecords(_ input: DescribeNotebookImageRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookImageRecordsResponse {
        try await self.client.execute(action: "DescribeNotebookImageRecords", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看notebook镜像保存记录
    @inlinable
    public func describeNotebookImageRecords(notebookId: String, offset: UInt64, limit: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookImageRecordsResponse> {
        self.describeNotebookImageRecords(.init(notebookId: notebookId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看notebook镜像保存记录
    @inlinable
    public func describeNotebookImageRecords(notebookId: String, offset: UInt64, limit: UInt64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookImageRecordsResponse {
        try await self.describeNotebookImageRecords(.init(notebookId: notebookId, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查看notebook镜像保存记录
    @inlinable
    public func describeNotebookImageRecordsPaginated(_ input: DescribeNotebookImageRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [NotebookImageRecord])> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookImageRecords, logger: logger, on: eventLoop)
    }

    /// 查看notebook镜像保存记录
    @inlinable @discardableResult
    public func describeNotebookImageRecordsPaginated(_ input: DescribeNotebookImageRecordsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNotebookImageRecordsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookImageRecords, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查看notebook镜像保存记录
    ///
    /// - Returns: `AsyncSequence`s of ``NotebookImageRecord`` and ``DescribeNotebookImageRecordsResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNotebookImageRecordsPaginator(_ input: DescribeNotebookImageRecordsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNotebookImageRecordsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNotebookImageRecords, logger: logger, on: eventLoop)
    }
}
