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

extension Cls {
    /// DescribeExports请求参数结构体
    public struct DescribeExportsRequest: TCPaginatedRequest {
        /// 日志主题ID
        public let topicId: String

        /// 分页的偏移量，默认值为0
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100
        public let limit: Int64?

        public init(topicId: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.topicId = topicId
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func getNextPaginatedRequest(with response: DescribeExportsResponse) -> DescribeExportsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeExportsRequest(topicId: self.topicId, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeExports返回参数结构体
    public struct DescribeExportsResponse: TCPaginatedResponse {
        /// 日志导出列表
        public let exports: [ExportInfo]

        /// 总数目
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case exports = "Exports"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [ExportInfo] {
            self.exports
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> Int64? {
            self.totalCount
        }
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExports(_ input: DescribeExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportsResponse> {
        self.client.execute(action: "DescribeExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExports(_ input: DescribeExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportsResponse {
        try await self.client.execute(action: "DescribeExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExports(topicId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportsResponse> {
        let input = DescribeExportsRequest(topicId: topicId, offset: offset, limit: limit)
        return self.client.execute(action: "DescribeExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExports(topicId: String, offset: Int64? = nil, limit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportsResponse {
        let input = DescribeExportsRequest(topicId: topicId, offset: offset, limit: limit)
        return try await self.client.execute(action: "DescribeExports", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExportsPaginated(_ input: DescribeExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Int64?, [ExportInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeExports, logger: logger, on: eventLoop)
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExportsPaginated(_ input: DescribeExportsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeExportsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeExports, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取日志下载任务列表
    ///
    /// 本接口用于获取日志下载任务列表
    @inlinable
    public func describeExportsPaginator(_ input: DescribeExportsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> (results: TCClient.Paginator<DescribeExportsRequest, DescribeExportsResponse>.ResultSequence, responses: TCClient.Paginator<DescribeExportsRequest, DescribeExportsResponse>.ResponseSequence) {
        let results = TCClient.Paginator<DescribeExportsRequest, DescribeExportsResponse>.ResultSequence(input: input, region: region, command: self.describeExports, logger: logger, on: eventLoop)
        let responses = TCClient.Paginator<DescribeExportsRequest, DescribeExportsResponse>.ResponseSequence(input: input, region: region, command: self.describeExports, logger: logger, on: eventLoop)
        return (results, responses)
    }
}
