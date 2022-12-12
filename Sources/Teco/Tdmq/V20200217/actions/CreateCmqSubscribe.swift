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

extension Tdmq {
    /// CreateCmqSubscribe请求参数结构体
    public struct CreateCmqSubscribeRequest: TCRequestModel {
        /// 主题名字，在单个地域同一帐号下唯一。主题名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线（-）。
        public let topicName: String
        
        /// 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let subscriptionName: String
        
        /// 订阅的协议，目前支持两种协议：http、queue。使用http协议，用户需自己搭建接受消息的web server。使用queue，消息会自动推送到CMQ queue，用户可以并发地拉取消息。
        public let `protocol`: String
        
        /// 接收通知的Endpoint，根据协议Protocol区分：对于http，Endpoint必须以“`http://`”开头，host可以是域名或IP；对于Queue，则填QueueName。 请注意，目前推送服务不能推送到私有网络中，因此Endpoint填写为私有网络域名或地址将接收不到推送的消息，目前支持推送到公网和基础网络。
        public let endpoint: String
        
        /// 向Endpoint推送消息出现错误时，CMQ推送服务器的重试策略。取值有：1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息；2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始1s，后面是2s，4s，8s...由于Topic消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是EXPONENTIAL_DECAY_RETRY。
        public let notifyStrategy: String?
        
        /// 消息正文。消息标签（用于消息过滤)。标签数量不能超过5个，每个标签不超过16个字符。与(Batch)PublishMessage的MsgTag参数配合使用，规则：1）如果FilterTag没有设置，则无论MsgTag是否有设置，订阅接收所有发布到Topic的消息；2）如果FilterTag数组有值，则只有数组中至少有一个值在MsgTag数组中也存在时（即FilterTag和MsgTag有交集），订阅才接收该发布到Topic的消息；3）如果FilterTag数组有值，但MsgTag没设置，则不接收任何发布到Topic的消息，可以认为是2）的一种特例，此时FilterTag和MsgTag没有交集。规则整体的设计思想是以订阅者的意愿为主。
        public let filterTag: [String]?
        
        /// BindingKey数量不超过5个， 每个BindingKey长度不超过64字节，该字段表示订阅接收消息的过滤策略，每个BindingKey最多含有15个“.”， 即最多16个词组。
        public let bindingKey: [String]?
        
        /// 推送内容的格式。取值：1）JSON；2）SIMPLIFIED，即raw格式。如果Protocol是queue，则取值必须为SIMPLIFIED。如果Protocol是http，两个值均可以，默认值是JSON。
        public let notifyContentFormat: String?
        
        public init (topicName: String, subscriptionName: String, `protocol`: String, endpoint: String, notifyStrategy: String? = nil, filterTag: [String]? = nil, bindingKey: [String]? = nil, notifyContentFormat: String? = nil) {
            self.topicName = topicName
            self.subscriptionName = subscriptionName
            self.`protocol` = `protocol`
            self.endpoint = endpoint
            self.notifyStrategy = notifyStrategy
            self.filterTag = filterTag
            self.bindingKey = bindingKey
            self.notifyContentFormat = notifyContentFormat
        }
        
        enum CodingKeys: String, CodingKey {
            case topicName = "TopicName"
            case subscriptionName = "SubscriptionName"
            case `protocol` = "Protocol"
            case endpoint = "Endpoint"
            case notifyStrategy = "NotifyStrategy"
            case filterTag = "FilterTag"
            case bindingKey = "BindingKey"
            case notifyContentFormat = "NotifyContentFormat"
        }
    }
    
    /// CreateCmqSubscribe返回参数结构体
    public struct CreateCmqSubscribeResponse: TCResponseModel {
        /// 订阅id
        public let subscriptionId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case subscriptionId = "SubscriptionId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建cmq订阅接口
    @inlinable
    public func createCmqSubscribe(_ input: CreateCmqSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateCmqSubscribeResponse > {
        self.client.execute(action: "CreateCmqSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建cmq订阅接口
    @inlinable
    public func createCmqSubscribe(_ input: CreateCmqSubscribeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCmqSubscribeResponse {
        try await self.client.execute(action: "CreateCmqSubscribe", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
