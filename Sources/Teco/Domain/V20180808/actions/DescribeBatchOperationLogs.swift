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

extension Domain {
    /// DescribeBatchOperationLogs请求参数结构体
    public struct DescribeBatchOperationLogsRequest: TCPaginatedRequest {
        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为200。
        public let limit: Int64?

        public init(offset: Int64? = nil, limit: Int64? = nil) {
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeBatchOperationLogsResponse) -> DescribeBatchOperationLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBatchOperationLogsRequest(offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBatchOperationLogs返回参数结构体
    public struct DescribeBatchOperationLogsResponse: TCPaginatedResponse {
        /// 总数量
        public let totalCount: Int64

        /// 日志列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainBatchLogSet: [DomainBatchLogSet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case domainBatchLogSet = "DomainBatchLogSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainBatchLogSet] {
            self.domainBatchLogSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(_ input: DescribeBatchOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchOperationLogsResponse> {
        self.client.execute(action: "DescribeBatchOperationLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(_ input: DescribeBatchOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogsResponse {
        try await self.client.execute(action: "DescribeBatchOperationLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchOperationLogsResponse> {
        self.describeBatchOperationLogs(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogs(offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogsResponse {
        try await self.describeBatchOperationLogs(.init(offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable
    public func describeBatchOperationLogsPaginated(_ input: DescribeBatchOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainBatchLogSet])> {
        self.client.paginate(input: input, region: region, command: self.describeBatchOperationLogs, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    @inlinable @discardableResult
    public func describeBatchOperationLogsPaginated(_ input: DescribeBatchOperationLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBatchOperationLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBatchOperationLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量操作日志列表
    ///
    /// 本接口 ( DescribeBatchOperationLogs ) 用于获取批量操作日志 。
    ///
    /// - Returns: `AsyncSequence`s of `DomainBatchLogSet` and `DescribeBatchOperationLogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBatchOperationLogsPaginator(_ input: DescribeBatchOperationLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBatchOperationLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBatchOperationLogs, logger: logger, on: eventLoop)
    }
}
