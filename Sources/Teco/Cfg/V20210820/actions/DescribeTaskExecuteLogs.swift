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

extension Cfg {
    /// DescribeTaskExecuteLogs请求参数结构体
    public struct DescribeTaskExecuteLogsRequest: TCPaginatedRequest {
        /// 任务ID
        public let taskId: UInt64

        /// 返回的内容行数
        public let limit: UInt64

        /// 日志起始的行数。
        public let offset: UInt64

        public init(taskId: UInt64, limit: UInt64, offset: UInt64) {
            self.taskId = taskId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTaskExecuteLogsResponse) -> DescribeTaskExecuteLogsRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTaskExecuteLogsRequest(taskId: self.taskId, limit: self.limit, offset: self.offset + .init(response.getItems().count))
        }
    }

    /// DescribeTaskExecuteLogs返回参数结构体
    public struct DescribeTaskExecuteLogsResponse: TCPaginatedResponse {
        /// 日志数据
        public let logMessage: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logMessage = "LogMessage"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [String] {
            self.logMessage
        }
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(_ input: DescribeTaskExecuteLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskExecuteLogsResponse> {
        self.client.execute(action: "DescribeTaskExecuteLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(_ input: DescribeTaskExecuteLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskExecuteLogsResponse {
        try await self.client.execute(action: "DescribeTaskExecuteLogs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(taskId: UInt64, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTaskExecuteLogsResponse> {
        self.describeTaskExecuteLogs(.init(taskId: taskId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogs(taskId: UInt64, limit: UInt64, offset: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTaskExecuteLogsResponse {
        try await self.describeTaskExecuteLogs(.init(taskId: taskId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable
    public func describeTaskExecuteLogsPaginated(_ input: DescribeTaskExecuteLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.describeTaskExecuteLogs, logger: logger, on: eventLoop)
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    @inlinable @discardableResult
    public func describeTaskExecuteLogsPaginated(_ input: DescribeTaskExecuteLogsRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTaskExecuteLogsResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTaskExecuteLogs, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取演练过程日志
    ///
    /// 获取演练过程中的所有日志
    ///
    /// - Returns: `AsyncSequence`s of `String` and `DescribeTaskExecuteLogsResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTaskExecuteLogsPaginator(_ input: DescribeTaskExecuteLogsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTaskExecuteLogsRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTaskExecuteLogs, logger: logger, on: eventLoop)
    }
}
