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

extension Tione {
    /// StopNotebookInstance请求参数结构体
    public struct StopNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称
        public let notebookInstanceName: String

        public init(notebookInstanceName: String) {
            self.notebookInstanceName = notebookInstanceName
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
        }
    }

    /// StopNotebookInstance返回参数结构体
    public struct StopNotebookInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 停止Notebook实例
    @inlinable @discardableResult
    public func stopNotebookInstance(_ input: StopNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopNotebookInstanceResponse> {
        self.client.execute(action: "StopNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止Notebook实例
    @inlinable @discardableResult
    public func stopNotebookInstance(_ input: StopNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopNotebookInstanceResponse {
        try await self.client.execute(action: "StopNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止Notebook实例
    @inlinable @discardableResult
    public func stopNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopNotebookInstanceResponse> {
        self.stopNotebookInstance(.init(notebookInstanceName: notebookInstanceName), region: region, logger: logger, on: eventLoop)
    }

    /// 停止Notebook实例
    @inlinable @discardableResult
    public func stopNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopNotebookInstanceResponse {
        try await self.stopNotebookInstance(.init(notebookInstanceName: notebookInstanceName), region: region, logger: logger, on: eventLoop)
    }
}
