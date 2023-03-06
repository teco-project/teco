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
    /// DescribeTraceDataList请求参数结构体
    public struct DescribeTraceDataListRequest: TCPaginatedRequest {
        /// 企业ID
        public let corpId: UInt64?

        /// 批次ID
        public let batchId: String?

        /// 任务ID 用于外部溯源
        public let taskId: String?

        /// 页数
        public let pageNumber: UInt64?

        /// 二维码
        public let code: String?

        /// 溯源阶段 0:商品 1:通用 2:内部溯源 3:外部溯源
        public let phase: UInt64?

        /// 数量
        public let pageSize: UInt64?

        public init(corpId: UInt64? = nil, batchId: String? = nil, taskId: String? = nil, pageNumber: UInt64? = nil, code: String? = nil, phase: UInt64? = nil, pageSize: UInt64? = nil) {
            self.corpId = corpId
            self.batchId = batchId
            self.taskId = taskId
            self.pageNumber = pageNumber
            self.code = code
            self.phase = phase
            self.pageSize = pageSize
        }

        enum CodingKeys: String, CodingKey {
            case corpId = "CorpId"
            case batchId = "BatchId"
            case taskId = "TaskId"
            case pageNumber = "PageNumber"
            case code = "Code"
            case phase = "Phase"
            case pageSize = "PageSize"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeTraceDataListResponse) -> DescribeTraceDataListRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTraceDataListRequest(corpId: self.corpId, batchId: self.batchId, taskId: self.taskId, pageNumber: (self.pageNumber ?? 0) + 1, code: self.code, phase: self.phase, pageSize: self.pageSize)
        }
    }

    /// DescribeTraceDataList返回参数结构体
    public struct DescribeTraceDataListResponse: TCPaginatedResponse {
        /// 数量
        public let totalCount: UInt64

        /// 无
        public let traceDataList: [TraceData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case traceDataList = "TraceDataList"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [TraceData] {
            self.traceDataList
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 查询溯源信息
    ///
    /// 查询溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的
    @inlinable
    public func describeTraceDataList(_ input: DescribeTraceDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceDataListResponse> {
        self.client.execute(action: "DescribeTraceDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询溯源信息
    ///
    /// 查询溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的
    @inlinable
    public func describeTraceDataList(_ input: DescribeTraceDataListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceDataListResponse {
        try await self.client.execute(action: "DescribeTraceDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询溯源信息
    ///
    /// 查询溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的
    @inlinable
    public func describeTraceDataList(corpId: UInt64? = nil, batchId: String? = nil, taskId: String? = nil, pageNumber: UInt64? = nil, code: String? = nil, phase: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTraceDataListResponse> {
        let input = DescribeTraceDataListRequest(corpId: corpId, batchId: batchId, taskId: taskId, pageNumber: pageNumber, code: code, phase: phase, pageSize: pageSize)
        return self.client.execute(action: "DescribeTraceDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询溯源信息
    ///
    /// 查询溯源信息，通常溯源信息跟生产批次绑定，即一个批次的所有溯源信息都是一样的
    @inlinable
    public func describeTraceDataList(corpId: UInt64? = nil, batchId: String? = nil, taskId: String? = nil, pageNumber: UInt64? = nil, code: String? = nil, phase: UInt64? = nil, pageSize: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTraceDataListResponse {
        let input = DescribeTraceDataListRequest(corpId: corpId, batchId: batchId, taskId: taskId, pageNumber: pageNumber, code: code, phase: phase, pageSize: pageSize)
        return try await self.client.execute(action: "DescribeTraceDataList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
