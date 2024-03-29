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
    /// CreateNotebookSessionStatementSupportBatchSQL请求参数结构体
    public struct CreateNotebookSessionStatementSupportBatchSQLRequest: TCRequest {
        /// Session唯一标识
        public let sessionId: String

        /// 执行的代码
        public let code: String

        /// 类型，当前支持：sql
        public let kind: String

        /// 是否保存运行结果
        public let saveResult: Bool

        public init(sessionId: String, code: String, kind: String, saveResult: Bool) {
            self.sessionId = sessionId
            self.code = code
            self.kind = kind
            self.saveResult = saveResult
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case code = "Code"
            case kind = "Kind"
            case saveResult = "SaveResult"
        }
    }

    /// CreateNotebookSessionStatementSupportBatchSQL返回参数结构体
    public struct CreateNotebookSessionStatementSupportBatchSQLResponse: TCResponse {
        /// Session Statement详情
        public let notebookSessionStatementBatches: NotebookSessionStatementBatchInformation

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case notebookSessionStatementBatches = "NotebookSessionStatementBatches"
            case requestId = "RequestId"
        }
    }

    /// 创建交互式session并执行SQL任务
    ///
    /// 本接口（CreateNotebookSessionStatementSupportBatchSQL）用于创建交互式session并执行SQL任务
    @inlinable
    public func createNotebookSessionStatementSupportBatchSQL(_ input: CreateNotebookSessionStatementSupportBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookSessionStatementSupportBatchSQLResponse> {
        self.client.execute(action: "CreateNotebookSessionStatementSupportBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建交互式session并执行SQL任务
    ///
    /// 本接口（CreateNotebookSessionStatementSupportBatchSQL）用于创建交互式session并执行SQL任务
    @inlinable
    public func createNotebookSessionStatementSupportBatchSQL(_ input: CreateNotebookSessionStatementSupportBatchSQLRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookSessionStatementSupportBatchSQLResponse {
        try await self.client.execute(action: "CreateNotebookSessionStatementSupportBatchSQL", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建交互式session并执行SQL任务
    ///
    /// 本接口（CreateNotebookSessionStatementSupportBatchSQL）用于创建交互式session并执行SQL任务
    @inlinable
    public func createNotebookSessionStatementSupportBatchSQL(sessionId: String, code: String, kind: String, saveResult: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateNotebookSessionStatementSupportBatchSQLResponse> {
        self.createNotebookSessionStatementSupportBatchSQL(.init(sessionId: sessionId, code: code, kind: kind, saveResult: saveResult), region: region, logger: logger, on: eventLoop)
    }

    /// 创建交互式session并执行SQL任务
    ///
    /// 本接口（CreateNotebookSessionStatementSupportBatchSQL）用于创建交互式session并执行SQL任务
    @inlinable
    public func createNotebookSessionStatementSupportBatchSQL(sessionId: String, code: String, kind: String, saveResult: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotebookSessionStatementSupportBatchSQLResponse {
        try await self.createNotebookSessionStatementSupportBatchSQL(.init(sessionId: sessionId, code: code, kind: kind, saveResult: saveResult), region: region, logger: logger, on: eventLoop)
    }
}
