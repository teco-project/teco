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

extension Cls {
    /// DescribeDataTransformInfo请求参数结构体
    public struct DescribeDataTransformInfoRequest: TCPaginatedRequest {
        /// - taskName
        ///
        /// 按照【加工任务名称】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - taskId
        ///
        /// 按照【加工任务id】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// - srctopicId
        ///
        /// 按照【源topicId】进行过滤。
        /// 类型：String
        ///
        /// 必选：否
        ///
        /// 每次请求的Filters的上限为10，Filter.Values的上限为100。
        public let filters: [Filter]?

        /// 分页的偏移量，默认值为0。
        public let offset: Int64?

        /// 分页单页限制数目，默认值为20，最大值100。
        public let limit: Int64?

        /// 默认值为2.   1: 获取单个任务的详细信息 2：获取任务列表
        public let type: Int64?

        /// Type为1， 此参数必填
        public let taskId: String?

        public init(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, type: Int64? = nil, taskId: String? = nil) {
            self.filters = filters
            self.offset = offset
            self.limit = limit
            self.type = type
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case filters = "Filters"
            case offset = "Offset"
            case limit = "Limit"
            case type = "Type"
            case taskId = "TaskId"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeDataTransformInfoResponse) -> DescribeDataTransformInfoRequest? {
            guard case let items = response.getItems(), !items.isEmpty, let totalCount = response.getTotalCount(), .init(self.offset ?? 0) + .init(items.count) >= totalCount else {
                return nil
            }
            return .init(filters: self.filters, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit, type: self.type, taskId: self.taskId)
        }
    }

    /// DescribeDataTransformInfo返回参数结构体
    public struct DescribeDataTransformInfoResponse: TCPaginatedResponse {
        /// 数据加工任务列表信息
        public let dataTransformTaskInfos: [DataTransformTaskInfo]

        /// 任务总次数
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dataTransformTaskInfos = "DataTransformTaskInfos"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }

        /// Extract the returned ``DataTransformTaskInfo`` list from the paginated response.
        public func getItems() -> [DataTransformTaskInfo] {
            self.dataTransformTaskInfos
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable
    public func describeDataTransformInfo(_ input: DescribeDataTransformInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataTransformInfoResponse> {
        self.client.execute(action: "DescribeDataTransformInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable
    public func describeDataTransformInfo(_ input: DescribeDataTransformInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataTransformInfoResponse {
        try await self.client.execute(action: "DescribeDataTransformInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable
    public func describeDataTransformInfo(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, type: Int64? = nil, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDataTransformInfoResponse> {
        self.describeDataTransformInfo(.init(filters: filters, offset: offset, limit: limit, type: type, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable
    public func describeDataTransformInfo(filters: [Filter]? = nil, offset: Int64? = nil, limit: Int64? = nil, type: Int64? = nil, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataTransformInfoResponse {
        try await self.describeDataTransformInfo(.init(filters: filters, offset: offset, limit: limit, type: type, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable
    public func describeDataTransformInfoPaginated(_ input: DescribeDataTransformInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [DataTransformTaskInfo])> {
        self.client.paginate(input: input, region: region, command: self.describeDataTransformInfo, logger: logger, on: eventLoop)
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    @inlinable @discardableResult
    public func describeDataTransformInfoPaginated(_ input: DescribeDataTransformInfoRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeDataTransformInfoResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeDataTransformInfo, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取数据加工任务列表基本信息
    ///
    /// 本接口用于获取数据加工任务列表基本信息
    ///
    /// - Returns: `AsyncSequence`s of ``DataTransformTaskInfo`` and ``DescribeDataTransformInfoResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeDataTransformInfoPaginator(_ input: DescribeDataTransformInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeDataTransformInfoRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeDataTransformInfo, logger: logger, on: eventLoop)
    }
}
