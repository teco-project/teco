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
    /// ClearSubscriptionFilterTags请求参数结构体
    public struct ClearSubscriptionFilterTagsRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String

        /// 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let subscriptionName: String

        public init(topicName: String, subscriptionName: String) {
            self.topicName = topicName
            self.subscriptionName = subscriptionName
        }

        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case subscriptionName = "SubscriptionName"
        }
    }

    /// ClearSubscriptionFilterTags返回参数结构体
    public struct ClearSubscriptionFilterTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 清空订阅者消息标签
    @inlinable @discardableResult
    public func clearSubscriptionFilterTags(_ input: ClearSubscriptionFilterTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearSubscriptionFilterTagsResponse> {
        self.client.execute(action: "ClearSubscriptionFilterTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 清空订阅者消息标签
    @inlinable @discardableResult
    public func clearSubscriptionFilterTags(_ input: ClearSubscriptionFilterTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearSubscriptionFilterTagsResponse {
        try await self.client.execute(action: "ClearSubscriptionFilterTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 清空订阅者消息标签
    @inlinable @discardableResult
    public func clearSubscriptionFilterTags(topicName: String, subscriptionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ClearSubscriptionFilterTagsResponse> {
        self.clearSubscriptionFilterTags(ClearSubscriptionFilterTagsRequest(topicName: topicName, subscriptionName: subscriptionName), region: region, logger: logger, on: eventLoop)
    }

    /// 清空订阅者消息标签
    @inlinable @discardableResult
    public func clearSubscriptionFilterTags(topicName: String, subscriptionName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ClearSubscriptionFilterTagsResponse {
        try await self.clearSubscriptionFilterTags(ClearSubscriptionFilterTagsRequest(topicName: topicName, subscriptionName: subscriptionName), region: region, logger: logger, on: eventLoop)
    }
}
