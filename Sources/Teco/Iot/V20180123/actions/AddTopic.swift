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

extension Iot {
    /// AddTopic请求参数结构体
    public struct AddTopicRequest: TCRequestModel {
        /// 产品Id
        public let productId: String

        /// Topic名称
        public let topicName: String

        public init(productId: String, topicName: String) {
            self.productId = productId
            self.topicName = topicName
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case topicName = "TopicName"
        }
    }

    /// AddTopic返回参数结构体
    public struct AddTopicResponse: TCResponseModel {
        /// Topic信息
        public let topic: Topic

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topic = "Topic"
            case requestId = "RequestId"
        }
    }

    /// 新增Topic
    ///
    /// 新增Topic，用于设备或应用发布消息至该Topic或订阅该Topic的消息。
    @inlinable
    public func addTopic(_ input: AddTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTopicResponse> {
        self.client.execute(action: "AddTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增Topic
    ///
    /// 新增Topic，用于设备或应用发布消息至该Topic或订阅该Topic的消息。
    @inlinable
    public func addTopic(_ input: AddTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTopicResponse {
        try await self.client.execute(action: "AddTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增Topic
    ///
    /// 新增Topic，用于设备或应用发布消息至该Topic或订阅该Topic的消息。
    @inlinable
    public func addTopic(productId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<AddTopicResponse> {
        let input = AddTopicRequest(productId: productId, topicName: topicName)
        return self.client.execute(action: "AddTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增Topic
    ///
    /// 新增Topic，用于设备或应用发布消息至该Topic或订阅该Topic的消息。
    @inlinable
    public func addTopic(productId: String, topicName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> AddTopicResponse {
        let input = AddTopicRequest(productId: productId, topicName: topicName)
        return try await self.client.execute(action: "AddTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
