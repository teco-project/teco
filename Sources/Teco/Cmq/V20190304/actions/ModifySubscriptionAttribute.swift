//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cmq {
    /// 修改订阅属性
    ///
    /// 修改订阅属性
    @inlinable
    public func modifySubscriptionAttribute(_ input: ModifySubscriptionAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifySubscriptionAttributeResponse > {
        self.client.execute(action: "ModifySubscriptionAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改订阅属性
    ///
    /// 修改订阅属性
    @inlinable
    public func modifySubscriptionAttribute(_ input: ModifySubscriptionAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscriptionAttributeResponse {
        try await self.client.execute(action: "ModifySubscriptionAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifySubscriptionAttribute请求参数结构体
    public struct ModifySubscriptionAttributeRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String
        
        /// 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let subscriptionName: String
        
        /// 向 Endpoint 推送消息出现错误时，CMQ 推送服务器的重试策略。取值如下：
        /// （1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息。
        /// （2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始1s，后面是2s，4s，8s···由于 Topic 消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是 EXPONENTIAL_DECAY_RETRY。
        public let notifyStrategy: String?
        
        /// 推送内容的格式。取值：（1）JSON；（2）SIMPLIFIED，即 raw 格式。如果 Protocol 是 queue，则取值必须为 SIMPLIFIED。如果 Protocol 是 HTTP，两个值均可以，默认值是 JSON。
        public let notifyContentFormat: String?
        
        /// 消息正文。消息标签（用于消息过滤)。标签数量不能超过5个，每个标签不超过16个字符。与(Batch)PublishMessage的MsgTag参数配合使用，规则：1）如果FilterTag没有设置，则无论MsgTag是否有设置，订阅接收所有发布到Topic的消息；2）如果FilterTag数组有值，则只有数组中至少有一个值在MsgTag数组中也存在时（即FilterTag和MsgTag有交集），订阅才接收该发布到Topic的消息；3）如果FilterTag数组有值，但MsgTag没设置，则不接收任何发布到Topic的消息，可以认为是2）的一种特例，此时FilterTag和MsgTag没有交集。规则整体的设计思想是以订阅者的意愿为主。
        public let filterTags: [String]?
        
        /// BindingKey数量不超过5个， 每个BindingKey长度不超过64字节，该字段表示订阅接收消息的过滤策略，每个BindingKey最多含有15个“.”， 即最多16个词组。
        public let bindingKey: [String]?
        
        public init (topicName: String, subscriptionName: String, notifyStrategy: String?, notifyContentFormat: String?, filterTags: [String]?, bindingKey: [String]?) {
            self.topicName = topicName
            self.subscriptionName = subscriptionName
            self.notifyStrategy = notifyStrategy
            self.notifyContentFormat = notifyContentFormat
            self.filterTags = filterTags
            self.bindingKey = bindingKey
        }
        
        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case subscriptionName = "SubscriptionName"
            case notifyStrategy = "NotifyStrategy"
            case notifyContentFormat = "NotifyContentFormat"
            case filterTags = "FilterTags"
            case bindingKey = "BindingKey"
        }
    }
    
    /// ModifySubscriptionAttribute返回参数结构体
    public struct ModifySubscriptionAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}