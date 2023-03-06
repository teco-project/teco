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
    /// DescribeBatchOperationLogDetails请求参数结构体
    public struct DescribeBatchOperationLogDetailsRequest: TCPaginatedRequest {
        /// 日志ID。
        public let logId: Int64

        /// 偏移量，默认为0。
        public let offset: Int64?

        /// 返回数量，默认为20，最大值为200。
        public let limit: Int64?

        public init(logId: Int64, offset: Int64? = nil, limit: Int64? = nil) {
            self.logId = logId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case logId = "LogId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeBatchOperationLogDetailsResponse) -> DescribeBatchOperationLogDetailsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeBatchOperationLogDetailsRequest(logId: self.logId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeBatchOperationLogDetails返回参数结构体
    public struct DescribeBatchOperationLogDetailsResponse: TCPaginatedResponse {
        /// 总数量。
        public let totalCount: Int64

        /// 日志详情列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let domainBatchDetailSet: [DomainBatchDetailSet]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case domainBatchDetailSet = "DomainBatchDetailSet"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [DomainBatchDetailSet] {
            self.domainBatchDetailSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable
    public func describeBatchOperationLogDetails(_ input: DescribeBatchOperationLogDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchOperationLogDetailsResponse> {
        self.client.execute(action: "DescribeBatchOperationLogDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable
    public func describeBatchOperationLogDetails(_ input: DescribeBatchOperationLogDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogDetailsResponse {
        try await self.client.execute(action: "DescribeBatchOperationLogDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable
    public func describeBatchOperationLogDetails(logId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeBatchOperationLogDetailsResponse> {
        let input = DescribeBatchOperationLogDetailsRequest(logId: logId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeBatchOperationLogDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable
    public func describeBatchOperationLogDetails(logId: Int64, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBatchOperationLogDetailsResponse {
        let input = DescribeBatchOperationLogDetailsRequest(logId: logId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeBatchOperationLogDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable
    public func describeBatchOperationLogDetailsPaginated(_ input: DescribeBatchOperationLogDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [DomainBatchDetailSet])> {
        self.client.paginate(input: input, region: region, command: self.describeBatchOperationLogDetails, logger: logger, on: eventLoop)
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    @inlinable @discardableResult
    public func describeBatchOperationLogDetailsPaginated(_ input: DescribeBatchOperationLogDetailsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeBatchOperationLogDetailsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeBatchOperationLogDetails, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 批量操作日志详情
    ///
    /// 本接口 ( DescribeBatchOperationLogDetails ) 用于获取批量操作日志详情。
    ///
    /// - Returns: `AsyncSequence`s of `DomainBatchDetailSet` and `DescribeBatchOperationLogDetailsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeBatchOperationLogDetailsPaginator(_ input: DescribeBatchOperationLogDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeBatchOperationLogDetailsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeBatchOperationLogDetails, logger: logger, on: eventLoop)
    }
}
