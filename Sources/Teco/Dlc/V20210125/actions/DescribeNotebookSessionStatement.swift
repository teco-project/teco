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

extension Dlc {
    /// DescribeNotebookSessionStatement请求参数结构体
    public struct DescribeNotebookSessionStatementRequest: TCRequest {
        /// Session唯一标识
        public let sessionId: String

        /// Session Statement唯一标识
        public let statementId: String

        /// 任务唯一标识
        public let taskId: String?

        public init(sessionId: String, statementId: String, taskId: String? = nil) {
            self.sessionId = sessionId
            self.statementId = statementId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case statementId = "StatementId"
            case taskId = "TaskId"
        }
    }

    /// DescribeNotebookSessionStatement返回参数结构体
    public struct DescribeNotebookSessionStatementResponse: TCResponse {
        /// Session Statement详情
        public let notebookSessionStatement: NotebookSessionStatementInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookSessionStatement = "NotebookSessionStatement"
            case requestId = "RequestId"
        }
    }

    /// 查询session 中执行任务的详情
    ///
    /// 本接口（DescribeNotebookSessionStatement）用于查询session 中执行任务的详情
    @inlinable
    public func describeNotebookSessionStatement(_ input: DescribeNotebookSessionStatementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionStatementResponse> {
        self.client.execute(action: "DescribeNotebookSessionStatement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询session 中执行任务的详情
    ///
    /// 本接口（DescribeNotebookSessionStatement）用于查询session 中执行任务的详情
    @inlinable
    public func describeNotebookSessionStatement(_ input: DescribeNotebookSessionStatementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionStatementResponse {
        try await self.client.execute(action: "DescribeNotebookSessionStatement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询session 中执行任务的详情
    ///
    /// 本接口（DescribeNotebookSessionStatement）用于查询session 中执行任务的详情
    @inlinable
    public func describeNotebookSessionStatement(sessionId: String, statementId: String, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionStatementResponse> {
        self.describeNotebookSessionStatement(.init(sessionId: sessionId, statementId: statementId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询session 中执行任务的详情
    ///
    /// 本接口（DescribeNotebookSessionStatement）用于查询session 中执行任务的详情
    @inlinable
    public func describeNotebookSessionStatement(sessionId: String, statementId: String, taskId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionStatementResponse {
        try await self.describeNotebookSessionStatement(.init(sessionId: sessionId, statementId: statementId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
