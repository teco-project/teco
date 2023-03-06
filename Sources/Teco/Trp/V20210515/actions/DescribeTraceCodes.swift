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

extension Trp {
    /// DescribeTraceCodes请求参数结构体
    public struct DescribeTraceCodesRequest: TCPaginatedRequest {
        /// 搜索关键字 码标识，或者批次ID
        public let keyword: String?

        /// 条数
        public let pageNumber: UInt64?

        /// 页码
        public let pageSize: UInt64?

        /// 批次ID，弃用
        public let batchId: String?

        /// 企业ID
        public let corpId: UInt64?

        public init(keyword: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, batchId: String? = nil, corpId: UInt64? = nil) {
            self.keyword = keyword
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.batchId = batchId
            self.corpId = corpId
        }

        enum CodingKeys: String, CodingKey {
            case keyword = "Keyword"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case batchId = "BatchId"
            case corpId = "CorpId"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTraceCodesResponse) -> DescribeTraceCodesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTraceCodesRequest(keyword: self.keyword, pageNumber: (self.pageNumber ?? 0) + 1, pageSize: self.pageSize, batchId: self.batchId, corpId: self.corpId)
        }
    }

    /// DescribeTraceCodes返回参数结构体
    public struct DescribeTraceCodesResponse: TCPaginatedResponse {
        /// 标识列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let traceCodes: [TraceCode]?

        /// 条数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case traceCodes = "TraceCodes"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TraceCode] {
            self.traceCodes ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(_ input: DescribeTraceCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceCodesResponse> {
        self.client.execute(action: "DescribeTraceCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(_ input: DescribeTraceCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceCodesResponse {
        try await self.client.execute(action: "DescribeTraceCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(keyword: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, batchId: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceCodesResponse> {
        let input = DescribeTraceCodesRequest(keyword: keyword, pageNumber: pageNumber, pageSize: pageSize, batchId: batchId, corpId: corpId)
        return self.client.execute(action: "DescribeTraceCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodes(keyword: String? = nil, pageNumber: UInt64? = nil, pageSize: UInt64? = nil, batchId: String? = nil, corpId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceCodesResponse {
        let input = DescribeTraceCodesRequest(keyword: keyword, pageNumber: pageNumber, pageSize: pageSize, batchId: batchId, corpId: corpId)
        return try await self.client.execute(action: "DescribeTraceCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodesPaginated(_ input: DescribeTraceCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TraceCode])> {
        self.client.paginate(input: input, region: region, command: self.describeTraceCodes, logger: logger, on: eventLoop)
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodesPaginated(_ input: DescribeTraceCodesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTraceCodesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTraceCodes, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询二维码列表
    @inlinable
    public func describeTraceCodesPaginator(_ input: DescribeTraceCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeTraceCodesRequest, DescribeTraceCodesResponse>.ResultSequence, responses: TCClient.Paginator<DescribeTraceCodesRequest, DescribeTraceCodesResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeTraceCodesRequest, DescribeTraceCodesResponse>.ResultSequence(input: input, region: region, command: self.describeTraceCodes, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeTraceCodesRequest, DescribeTraceCodesResponse>.ResponseSequence(input: input, region: region, command: self.describeTraceCodes, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
