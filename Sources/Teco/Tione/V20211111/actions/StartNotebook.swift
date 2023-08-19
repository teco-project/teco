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

extension Tione {
    /// StartNotebook请求参数结构体
    public struct StartNotebookRequest: TCRequest {
        /// notebook id
        public let id: String

        public init(id: String) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// StartNotebook返回参数结构体
    public struct StartNotebookResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 启动Notebook
    @inlinable @discardableResult
    public func startNotebook(_ input: StartNotebookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartNotebookResponse> {
        self.client.execute(action: "StartNotebook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 启动Notebook
    @inlinable @discardableResult
    public func startNotebook(_ input: StartNotebookRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartNotebookResponse {
        try await self.client.execute(action: "StartNotebook", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 启动Notebook
    @inlinable @discardableResult
    public func startNotebook(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StartNotebookResponse> {
        self.startNotebook(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 启动Notebook
    @inlinable @discardableResult
    public func startNotebook(id: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartNotebookResponse {
        try await self.startNotebook(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
