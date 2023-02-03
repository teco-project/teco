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

extension Tione {
    /// DeleteNotebookInstance请求参数结构体
    public struct DeleteNotebookInstanceRequest: TCRequestModel {
        /// Notebook实例名称
        public let notebookInstanceName: String

        public init(notebookInstanceName: String) {
            self.notebookInstanceName = notebookInstanceName
        }

        enum CodingKeys: String, CodingKey {
            case notebookInstanceName = "NotebookInstanceName"
        }
    }

    /// DeleteNotebookInstance返回参数结构体
    public struct DeleteNotebookInstanceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除Notebook实例
    ///
    /// 删除notebook实例
    @inlinable @discardableResult
    public func deleteNotebookInstance(_ input: DeleteNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookInstanceResponse> {
        self.client.execute(action: "DeleteNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Notebook实例
    ///
    /// 删除notebook实例
    @inlinable @discardableResult
    public func deleteNotebookInstance(_ input: DeleteNotebookInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookInstanceResponse {
        try await self.client.execute(action: "DeleteNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除Notebook实例
    ///
    /// 删除notebook实例
    @inlinable @discardableResult
    public func deleteNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteNotebookInstanceResponse> {
        let input = DeleteNotebookInstanceRequest(notebookInstanceName: notebookInstanceName)
        return self.client.execute(action: "DeleteNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除Notebook实例
    ///
    /// 删除notebook实例
    @inlinable @discardableResult
    public func deleteNotebookInstance(notebookInstanceName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteNotebookInstanceResponse {
        let input = DeleteNotebookInstanceRequest(notebookInstanceName: notebookInstanceName)
        return try await self.client.execute(action: "DeleteNotebookInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
