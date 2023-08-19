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
    /// CancelNotebookSessionStatement请求参数结构体
    public struct CancelNotebookSessionStatementRequest: TCRequest {
        /// Session唯一标识
        public let sessionId: String

        /// Session Statement唯一标识
        public let statementId: String

        public init(sessionId: String, statementId: String) {
            self.sessionId = sessionId
            self.statementId = statementId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
            case statementId = "StatementId"
        }
    }

    /// CancelNotebookSessionStatement返回参数结构体
    public struct CancelNotebookSessionStatementResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 取消session中执行的任务
    ///
    /// 本接口（CancelNotebookSessionStatement）用于取消session中执行的任务
    @inlinable @discardableResult
    public func cancelNotebookSessionStatement(_ input: CancelNotebookSessionStatementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelNotebookSessionStatementResponse> {
        self.client.execute(action: "CancelNotebookSessionStatement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 取消session中执行的任务
    ///
    /// 本接口（CancelNotebookSessionStatement）用于取消session中执行的任务
    @inlinable @discardableResult
    public func cancelNotebookSessionStatement(_ input: CancelNotebookSessionStatementRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelNotebookSessionStatementResponse {
        try await self.client.execute(action: "CancelNotebookSessionStatement", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 取消session中执行的任务
    ///
    /// 本接口（CancelNotebookSessionStatement）用于取消session中执行的任务
    @inlinable @discardableResult
    public func cancelNotebookSessionStatement(sessionId: String, statementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelNotebookSessionStatementResponse> {
        self.cancelNotebookSessionStatement(.init(sessionId: sessionId, statementId: statementId), region: region, logger: logger, on: eventLoop)
    }

    /// 取消session中执行的任务
    ///
    /// 本接口（CancelNotebookSessionStatement）用于取消session中执行的任务
    @inlinable @discardableResult
    public func cancelNotebookSessionStatement(sessionId: String, statementId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelNotebookSessionStatementResponse {
        try await self.cancelNotebookSessionStatement(.init(sessionId: sessionId, statementId: statementId), region: region, logger: logger, on: eventLoop)
    }
}
