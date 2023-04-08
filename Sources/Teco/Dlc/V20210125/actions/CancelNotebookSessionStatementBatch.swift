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

import TecoCore

extension Dlc {
    /// CancelNotebookSessionStatementBatch请求参数结构体
    public struct CancelNotebookSessionStatementBatchRequest: TCRequestModel {
        /// Session唯一标识
        public let sessionId: String

        /// 批任务唯一标识
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

    /// CancelNotebookSessionStatementBatch返回参数结构体
    public struct CancelNotebookSessionStatementBatchResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 按批取消Session statement.
    ///
    /// 本接口（CancelNotebookSessionStatementBatch）用于按批取消Session statement。
    @inlinable @discardableResult
    public func cancelNotebookSessionStatementBatch(_ input: CancelNotebookSessionStatementBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelNotebookSessionStatementBatchResponse> {
        self.client.execute(action: "CancelNotebookSessionStatementBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 按批取消Session statement.
    ///
    /// 本接口（CancelNotebookSessionStatementBatch）用于按批取消Session statement。
    @inlinable @discardableResult
    public func cancelNotebookSessionStatementBatch(_ input: CancelNotebookSessionStatementBatchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelNotebookSessionStatementBatchResponse {
        try await self.client.execute(action: "CancelNotebookSessionStatementBatch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 按批取消Session statement.
    ///
    /// 本接口（CancelNotebookSessionStatementBatch）用于按批取消Session statement。
    @inlinable @discardableResult
    public func cancelNotebookSessionStatementBatch(sessionId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CancelNotebookSessionStatementBatchResponse> {
        self.cancelNotebookSessionStatementBatch(.init(sessionId: sessionId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }

    /// 按批取消Session statement.
    ///
    /// 本接口（CancelNotebookSessionStatementBatch）用于按批取消Session statement。
    @inlinable @discardableResult
    public func cancelNotebookSessionStatementBatch(sessionId: String, batchId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CancelNotebookSessionStatementBatchResponse {
        try await self.cancelNotebookSessionStatementBatch(.init(sessionId: sessionId, batchId: batchId), region: region, logger: logger, on: eventLoop)
    }
}