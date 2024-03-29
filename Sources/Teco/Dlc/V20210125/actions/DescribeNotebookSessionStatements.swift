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
    /// DescribeNotebookSessionStatements请求参数结构体
    public struct DescribeNotebookSessionStatementsRequest: TCRequest {
        /// Session唯一标识
        public let sessionId: String

        /// 批任务id
        public let batchId: String

        public init(sessionId: String, batchId: String) {
            self.sessionId = sessionId
            self.batchId = batchId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case batchId = "BatchId"
        }
    }

    /// DescribeNotebookSessionStatements返回参数结构体
    public struct DescribeNotebookSessionStatementsResponse: TCResponse {
        /// Session Statement详情
        public let notebookSessionStatements: NotebookSessionStatementBatchInformation

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookSessionStatements = "NotebookSessionStatements"
            case requestId = "RequestId"
        }
    }

    /// 查询Session中执行的任务列表
    ///
    /// 本接口（DescribeNotebookSessionStatements）用于查询Session中执行的任务列表
    @inlinable
    public func describeNotebookSessionStatements(_ input: DescribeNotebookSessionStatementsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionStatementsResponse> {
        self.client.execute(action: "DescribeNotebookSessionStatements", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询Session中执行的任务列表
    ///
    /// 本接口（DescribeNotebookSessionStatements）用于查询Session中执行的任务列表
    @inlinable
    public func describeNotebookSessionStatements(_ input: DescribeNotebookSessionStatementsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionStatementsResponse {
        try await self.client.execute(action: "DescribeNotebookSessionStatements", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询Session中执行的任务列表
    ///
    /// 本接口（DescribeNotebookSessionStatements）用于查询Session中执行的任务列表
    @inlinable
    public func describeNotebookSessionStatements(sessionId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeNotebookSessionStatementsResponse> {
        self.describeNotebookSessionStatements(.init(sessionId: sessionId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询Session中执行的任务列表
    ///
    /// 本接口（DescribeNotebookSessionStatements）用于查询Session中执行的任务列表
    @inlinable
    public func describeNotebookSessionStatements(sessionId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeNotebookSessionStatementsResponse {
        try await self.describeNotebookSessionStatements(.init(sessionId: sessionId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}
