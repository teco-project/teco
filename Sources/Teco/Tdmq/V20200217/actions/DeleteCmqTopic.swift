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

extension Tdmq {
    /// DeleteCmqTopic请求参数结构体
    public struct DeleteCmqTopicRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let topicName: String

        public init(topicName: String) {
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
        }
    }

    /// DeleteCmqTopic返回参数结构体
    public struct DeleteCmqTopicResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除cmq主题
    @inlinable @discardableResult
    public func deleteCmqTopic(_ input: DeleteCmqTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCmqTopicResponse> {
        self.client.execute(action: "DeleteCmqTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除cmq主题
    @inlinable @discardableResult
    public func deleteCmqTopic(_ input: DeleteCmqTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCmqTopicResponse {
        try await self.client.execute(action: "DeleteCmqTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除cmq主题
    @inlinable @discardableResult
    public func deleteCmqTopic(topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCmqTopicResponse> {
        self.deleteCmqTopic(.init(topicName: topicName), region: region, logger: logger, on: eventLoop)
    }

    /// 删除cmq主题
    @inlinable @discardableResult
    public func deleteCmqTopic(topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCmqTopicResponse {
        try await self.deleteCmqTopic(.init(topicName: topicName), region: region, logger: logger, on: eventLoop)
    }
}
