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
    /// DeleteNotebookSession请求参数结构体
    public struct DeleteNotebookSessionRequest: TCRequestModel {
        /// Session唯一标识
        public let sessionId: String

        public init(sessionId: String) {
            self.sessionId = sessionId
        }

        enum CodingKeys: String, CodingKey {
            case sessionId = "SessionId"
        }
    }

    /// DeleteNotebookSession返回参数结构体
    public struct DeleteNotebookSessionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除notebook livy session
    ///
    /// 本接口（DeleteNotebookSession）用于删除notebook livy session
    @inlinable @discardableResult
    public func deleteNotebookSession(_ input: DeleteNotebookSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookSessionResponse> {
        self.client.execute(action: "DeleteNotebookSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除notebook livy session
    ///
    /// 本接口（DeleteNotebookSession）用于删除notebook livy session
    @inlinable @discardableResult
    public func deleteNotebookSession(_ input: DeleteNotebookSessionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookSessionResponse {
        try await self.client.execute(action: "DeleteNotebookSession", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除notebook livy session
    ///
    /// 本接口（DeleteNotebookSession）用于删除notebook livy session
    @inlinable @discardableResult
    public func deleteNotebookSession(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookSessionResponse> {
        self.deleteNotebookSession(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除notebook livy session
    ///
    /// 本接口（DeleteNotebookSession）用于删除notebook livy session
    @inlinable @discardableResult
    public func deleteNotebookSession(sessionId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookSessionResponse {
        try await self.deleteNotebookSession(.init(sessionId: sessionId), region: region, logger: logger, on: eventLoop)
    }
}
