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

extension Batch {
    /// DeleteTaskTemplates请求参数结构体
    public struct DeleteTaskTemplatesRequest: TCRequestModel {
        /// 用于删除任务模板信息
        public let taskTemplateIds: [String]

        public init(taskTemplateIds: [String]) {
            self.taskTemplateIds = taskTemplateIds
        }

        enum CodingKeys: String, CodingKey {
            case taskTemplateIds = "TaskTemplateIds"
        }
    }

    /// DeleteTaskTemplates返回参数结构体
    public struct DeleteTaskTemplatesResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除任务模板
    ///
    /// 用于删除任务模板信息
    @inlinable @discardableResult
    public func deleteTaskTemplates(_ input: DeleteTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskTemplatesResponse> {
        self.client.execute(action: "DeleteTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除任务模板
    ///
    /// 用于删除任务模板信息
    @inlinable @discardableResult
    public func deleteTaskTemplates(_ input: DeleteTaskTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskTemplatesResponse {
        try await self.client.execute(action: "DeleteTaskTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除任务模板
    ///
    /// 用于删除任务模板信息
    @inlinable @discardableResult
    public func deleteTaskTemplates(taskTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTaskTemplatesResponse> {
        self.deleteTaskTemplates(DeleteTaskTemplatesRequest(taskTemplateIds: taskTemplateIds), region: region, logger: logger, on: eventLoop)
    }

    /// 删除任务模板
    ///
    /// 用于删除任务模板信息
    @inlinable @discardableResult
    public func deleteTaskTemplates(taskTemplateIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTaskTemplatesResponse {
        try await self.deleteTaskTemplates(DeleteTaskTemplatesRequest(taskTemplateIds: taskTemplateIds), region: region, logger: logger, on: eventLoop)
    }
}
