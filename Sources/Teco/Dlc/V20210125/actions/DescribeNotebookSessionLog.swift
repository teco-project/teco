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
import TecoPaginationHelpers

extension Dlc {
    /// DescribeNotebookSessionLog请求参数结构体
    public struct DescribeNotebookSessionLogRequest: TCPaginatedRequest {
        /// Session唯一标识
        public let sessionId: String

        /// 分页参数，默认200
        public let limit: UInt64?

        /// 分页参数，默认0
        public let offset: UInt64?

        public init(sessionId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
            self.sessionId = sessionId
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case limit = "Limit"
            case offset = "Offset"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeNotebookSessionLogResponse) -> DescribeNotebookSessionLogRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeNotebookSessionLogRequest(sessionId: self.sessionId, limit: self.limit, offset: (self.offset ?? 0) + response.limit)
        }
    }

    /// DescribeNotebookSessionLog返回参数结构体
    public struct DescribeNotebookSessionLogResponse: TCPaginatedResponse {
        /// 日志信息，默认获取最新的200条
        public let logs: [String]

        /// 分页参数，默认200
        public let limit: UInt64

        /// 分页参数，默认0
        public let offset: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case logs = "Logs"
            case limit = "Limit"
            case offset = "Offset"
            case requestId = "RequestId"
        }

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [String] {
            self.logs
        }
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable
    public func describeNotebookSessionLog(_ input: DescribeNotebookSessionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionLogResponse> {
        self.client.execute(action: "DescribeNotebookSessionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable
    public func describeNotebookSessionLog(_ input: DescribeNotebookSessionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionLogResponse {
        try await self.client.execute(action: "DescribeNotebookSessionLog", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable
    public func describeNotebookSessionLog(sessionId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionLogResponse> {
        self.describeNotebookSessionLog(.init(sessionId: sessionId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable
    public func describeNotebookSessionLog(sessionId: String, limit: UInt64? = nil, offset: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionLogResponse {
        try await self.describeNotebookSessionLog(.init(sessionId: sessionId, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable
    public func describeNotebookSessionLogPaginated(_ input: DescribeNotebookSessionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(Never?, [String])> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookSessionLog, logger: logger, on: eventLoop)
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    @inlinable @discardableResult
    public func describeNotebookSessionLogPaginated(_ input: DescribeNotebookSessionLogRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeNotebookSessionLogResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeNotebookSessionLog, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 查询交互式 session日志
    ///
    /// 本接口（DescribeNotebookSessionLog）用于查询交互式 session日志
    ///
    /// - Returns: `AsyncSequence`s of `String` and `DescribeNotebookSessionLogResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeNotebookSessionLogPaginator(_ input: DescribeNotebookSessionLogRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeNotebookSessionLogRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeNotebookSessionLog, logger: logger, on: eventLoop)
    }
}
