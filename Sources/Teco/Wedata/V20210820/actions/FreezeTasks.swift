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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Wedata {
    /// FreezeTasks请求参数结构体
    public struct FreezeTasksRequest: TCRequestModel {
        /// 任务列表
        public let tasks: [SimpleTaskInfo]

        /// 任务操作是否消息通知下游任务责任人
        public let operateIsInform: Bool

        public init(tasks: [SimpleTaskInfo], operateIsInform: Bool) {
            self.tasks = tasks
            self.operateIsInform = operateIsInform
        }

        enum CodingKeys: String, CodingKey {
            case tasks = "Tasks"
            case operateIsInform = "OperateIsInform"
        }
    }

    /// FreezeTasks返回参数结构体
    public struct FreezeTasksResponse: TCResponseModel {
        /// 操作结果
        public let data: OperateResult

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 批量冻结任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量冻结任务
    @inlinable
    public func freezeTasks(_ input: FreezeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FreezeTasksResponse> {
        self.client.execute(action: "FreezeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量冻结任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量冻结任务
    @inlinable
    public func freezeTasks(_ input: FreezeTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FreezeTasksResponse {
        try await self.client.execute(action: "FreezeTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量冻结任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量冻结任务
    @inlinable
    public func freezeTasks(tasks: [SimpleTaskInfo], operateIsInform: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FreezeTasksResponse> {
        self.freezeTasks(.init(tasks: tasks, operateIsInform: operateIsInform), region: region, logger: logger, on: eventLoop)
    }

    /// 批量冻结任务【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 批量冻结任务
    @inlinable
    public func freezeTasks(tasks: [SimpleTaskInfo], operateIsInform: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FreezeTasksResponse {
        try await self.freezeTasks(.init(tasks: tasks, operateIsInform: operateIsInform), region: region, logger: logger, on: eventLoop)
    }
}
