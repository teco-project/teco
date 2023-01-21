//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Teo {
    /// DeleteLogTopicTask请求参数结构体
    public struct DeleteLogTopicTaskRequest: TCRequestModel {
        /// 待删除的推送任务ID。
        public let topicId: String

        /// 推送任务所属日志集地域，此字段仅用于CLS推送任务。
        public let logSetRegion: String?

        public init(topicId: String, logSetRegion: String? = nil) {
            self.topicId = topicId
            self.logSetRegion = logSetRegion
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case logSetRegion = "LogSetRegion"
        }
    }

    /// DeleteLogTopicTask返回参数结构体
    public struct DeleteLogTopicTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除推送任务
    ///
    /// 本接口（DeleteLogTopicTask）用于删除日志推送任务。
    @inlinable @discardableResult
    public func deleteLogTopicTask(_ input: DeleteLogTopicTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogTopicTaskResponse> {
        self.client.execute(action: "DeleteLogTopicTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除推送任务
    ///
    /// 本接口（DeleteLogTopicTask）用于删除日志推送任务。
    @inlinable @discardableResult
    public func deleteLogTopicTask(_ input: DeleteLogTopicTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogTopicTaskResponse {
        try await self.client.execute(action: "DeleteLogTopicTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除推送任务
    ///
    /// 本接口（DeleteLogTopicTask）用于删除日志推送任务。
    @inlinable @discardableResult
    public func deleteLogTopicTask(topicId: String, logSetRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteLogTopicTaskResponse> {
        self.deleteLogTopicTask(DeleteLogTopicTaskRequest(topicId: topicId, logSetRegion: logSetRegion), region: region, logger: logger, on: eventLoop)
    }

    /// 删除推送任务
    ///
    /// 本接口（DeleteLogTopicTask）用于删除日志推送任务。
    @inlinable @discardableResult
    public func deleteLogTopicTask(topicId: String, logSetRegion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteLogTopicTaskResponse {
        try await self.deleteLogTopicTask(DeleteLogTopicTaskRequest(topicId: topicId, logSetRegion: logSetRegion), region: region, logger: logger, on: eventLoop)
    }
}
