//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Iot {
    /// GetTopic请求参数结构体
    public struct GetTopicRequest: TCRequestModel {
        /// TopicId
        public let topicId: String

        /// 产品Id
        public let productId: String

        public init(topicId: String, productId: String) {
            self.topicId = topicId
            self.productId = productId
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
            case productId = "ProductId"
        }
    }

    /// GetTopic返回参数结构体
    public struct GetTopicResponse: TCResponseModel {
        /// Topic信息
        public let topic: Topic

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case requestId = "RequestId"
        }
    }

    /// 获取Topic信息
    @inlinable
    public func getTopic(_ input: GetTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTopicResponse > {
        self.client.execute(action: "GetTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取Topic信息
    @inlinable
    public func getTopic(_ input: GetTopicRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicResponse {
        try await self.client.execute(action: "GetTopic", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取Topic信息
    @inlinable
    public func getTopic(topicId: String, productId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < GetTopicResponse > {
        self.getTopic(GetTopicRequest(topicId: topicId, productId: productId), logger: logger, on: eventLoop)
    }

    /// 获取Topic信息
    @inlinable
    public func getTopic(topicId: String, productId: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTopicResponse {
        try await self.getTopic(GetTopicRequest(topicId: topicId, productId: productId), logger: logger, on: eventLoop)
    }
}
