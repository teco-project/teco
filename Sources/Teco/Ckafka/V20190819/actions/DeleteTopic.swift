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

extension Ckafka {
    /// DeleteTopic请求参数结构体
    public struct DeleteTopicRequest: TCRequestModel {
        /// ckafka 实例Id
        public let instanceId: String

        /// ckafka 主题名称
        public let topicName: String

        public init(instanceId: String, topicName: String) {
            self.instanceId = instanceId
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
        }
    }

    /// DeleteTopic返回参数结构体
    public struct DeleteTopicResponse: TCResponseModel {
        /// 返回的结果集
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除主题
    ///
    /// 删除ckafka主题
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicResponse> {
        self.client.execute(action: "DeleteTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除主题
    ///
    /// 删除ckafka主题
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicResponse {
        try await self.client.execute(action: "DeleteTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除主题
    ///
    /// 删除ckafka主题
    @inlinable
    public func deleteTopic(instanceId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicResponse> {
        self.deleteTopic(DeleteTopicRequest(instanceId: instanceId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除主题
    ///
    /// 删除ckafka主题
    @inlinable
    public func deleteTopic(instanceId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicResponse {
        try await self.deleteTopic(DeleteTopicRequest(instanceId: instanceId, topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
