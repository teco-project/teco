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

extension Cfg {
    /// ModifyTaskRunStatus请求参数结构体
    public struct ModifyTaskRunStatusRequest: TCRequestModel {
        /// 任务ID
        public let taskId: Int64

        /// 任务状态, 1001--未开始 1002--进行中（执行）1003--进行中（暂停）1004--执行结束
        public let status: Int64

        /// 执行结果是否符合预期（当前扭转状态为执行结束时，需要必传此字段）
        public let isExpect: Bool?

        /// 演习结论（当演习状态转变为执行结束时，需要填写此字段）
        public let summary: String?

        public init(taskId: Int64, status: Int64, isExpect: Bool? = nil, summary: String? = nil) {
            self.taskId = taskId
            self.status = status
            self.isExpect = isExpect
            self.summary = summary
        }

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case isExpect = "IsExpect"
            case summary = "Summary"
        }
    }

    /// ModifyTaskRunStatus返回参数结构体
    public struct ModifyTaskRunStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改任务运行状态
    @inlinable @discardableResult
    public func modifyTaskRunStatus(_ input: ModifyTaskRunStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskRunStatusResponse> {
        self.client.execute(action: "ModifyTaskRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改任务运行状态
    @inlinable @discardableResult
    public func modifyTaskRunStatus(_ input: ModifyTaskRunStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskRunStatusResponse {
        try await self.client.execute(action: "ModifyTaskRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改任务运行状态
    @inlinable @discardableResult
    public func modifyTaskRunStatus(taskId: Int64, status: Int64, isExpect: Bool? = nil, summary: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTaskRunStatusResponse> {
        let input = ModifyTaskRunStatusRequest(taskId: taskId, status: status, isExpect: isExpect, summary: summary)
        return self.client.execute(action: "ModifyTaskRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改任务运行状态
    @inlinable @discardableResult
    public func modifyTaskRunStatus(taskId: Int64, status: Int64, isExpect: Bool? = nil, summary: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTaskRunStatusResponse {
        let input = ModifyTaskRunStatusRequest(taskId: taskId, status: status, isExpect: isExpect, summary: summary)
        return try await self.client.execute(action: "ModifyTaskRunStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
