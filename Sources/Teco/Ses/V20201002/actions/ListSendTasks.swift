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

extension Ses {
    /// ListSendTasks请求参数结构体
    public struct ListSendTasksRequest: TCRequestModel {
        /// 偏移量，整型，从0开始，0代表跳过0行
        public let offset: UInt64

        /// 限制数目，整型,不超过100
        public let limit: UInt64

        /// 任务状态 1 待开始 5 发送中 6 今日暂停发送  7 发信异常 10 发送完成。查询所有状态，则不传这个字段
        public let status: UInt64?

        /// 收件人列表ID
        public let receiverId: UInt64?

        /// 任务类型 1即时 2定时 3周期，查询所有类型则不传这个字段
        public let taskType: UInt64?

        public init(offset: UInt64, limit: UInt64, status: UInt64? = nil, receiverId: UInt64? = nil, taskType: UInt64? = nil) {
            self.offset = offset
            self.limit = limit
            self.status = status
            self.receiverId = receiverId
            self.taskType = taskType
        }

        enum CodingKeys: String, CodingKey {
            case offset = "Offset"
            case limit = "Limit"
            case status = "Status"
            case receiverId = "ReceiverId"
            case taskType = "TaskType"
        }
    }

    /// ListSendTasks返回参数结构体
    public struct ListSendTasksResponse: TCResponseModel {
        /// 总数
        public let totalCount: UInt64

        /// 数据记录
        public let data: [SendTaskData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询发送任务
    ///
    /// 分页查询批量发送邮件任务，包含即时发送任务，定时发送任务，周期重复发送任务，查询发送情况，包括请求数量，已发数量，缓存数量，任务状态等信息
    @inlinable
    public func listSendTasks(_ input: ListSendTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSendTasksResponse> {
        self.client.execute(action: "ListSendTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询发送任务
    ///
    /// 分页查询批量发送邮件任务，包含即时发送任务，定时发送任务，周期重复发送任务，查询发送情况，包括请求数量，已发数量，缓存数量，任务状态等信息
    @inlinable
    public func listSendTasks(_ input: ListSendTasksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSendTasksResponse {
        try await self.client.execute(action: "ListSendTasks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询发送任务
    ///
    /// 分页查询批量发送邮件任务，包含即时发送任务，定时发送任务，周期重复发送任务，查询发送情况，包括请求数量，已发数量，缓存数量，任务状态等信息
    @inlinable
    public func listSendTasks(offset: UInt64, limit: UInt64, status: UInt64? = nil, receiverId: UInt64? = nil, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListSendTasksResponse> {
        self.listSendTasks(ListSendTasksRequest(offset: offset, limit: limit, status: status, receiverId: receiverId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }

    /// 查询发送任务
    ///
    /// 分页查询批量发送邮件任务，包含即时发送任务，定时发送任务，周期重复发送任务，查询发送情况，包括请求数量，已发数量，缓存数量，任务状态等信息
    @inlinable
    public func listSendTasks(offset: UInt64, limit: UInt64, status: UInt64? = nil, receiverId: UInt64? = nil, taskType: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListSendTasksResponse {
        try await self.listSendTasks(ListSendTasksRequest(offset: offset, limit: limit, status: status, receiverId: receiverId, taskType: taskType), region: region, logger: logger, on: eventLoop)
    }
}
