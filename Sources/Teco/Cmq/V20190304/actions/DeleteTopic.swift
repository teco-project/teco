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

extension Cmq {
    /// DeleteTopic请求参数结构体
    public struct DeleteTopicRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let topicName: String

        public init(topicName: String) {
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
        }
    }

    /// DeleteTopic返回参数结构体
    public struct DeleteTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除主题
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicResponse> {
        self.client.execute(action: "DeleteTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除主题
    @inlinable
    public func deleteTopic(_ input: DeleteTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicResponse {
        try await self.client.execute(action: "DeleteTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除主题
    @inlinable
    public func deleteTopic(topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteTopicResponse> {
        self.deleteTopic(DeleteTopicRequest(topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除主题
    @inlinable
    public func deleteTopic(topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteTopicResponse {
        try await self.deleteTopic(DeleteTopicRequest(topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
