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

import TecoCore

extension Nlp {
    /// ChatBot请求参数结构体
    public struct ChatBotRequest: TCRequestModel {
        /// 用户请求的query
        public let query: String

        /// 服务的id,  主要用于儿童闲聊接口，比如手Q的openid
        public let openId: String?

        /// 0: 通用闲聊, 1:儿童闲聊, 默认是通用闲聊
        public let flag: UInt64?

        public init(query: String, openId: String? = nil, flag: UInt64? = nil) {
            self.query = query
            self.openId = openId
            self.flag = flag
        }

        enum CodingKeys: String, CodingKey {
            case query = "Query"
            case openId = "OpenId"
            case flag = "Flag"
        }
    }

    /// ChatBot返回参数结构体
    public struct ChatBotResponse: TCResponseModel {
        /// 闲聊回复
        public let reply: String

        /// 对于当前输出回复的自信度
        public let confidence: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case reply = "Reply"
            case confidence = "Confidence"
            case requestId = "RequestId"
        }
    }

    /// 闲聊
    ///
    /// 闲聊服务基于腾讯领先的NLP引擎能力、数据运算能力和千亿级互联网语料数据的支持，同时集成了广泛的知识问答能力，可实现上百种自定义属性配置，以及儿童语言风格及说话方式，从而让聊天变得更睿智、简单和有趣。
    @inlinable
    public func chatBot(_ input: ChatBotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChatBotResponse> {
        self.client.execute(action: "ChatBot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 闲聊
    ///
    /// 闲聊服务基于腾讯领先的NLP引擎能力、数据运算能力和千亿级互联网语料数据的支持，同时集成了广泛的知识问答能力，可实现上百种自定义属性配置，以及儿童语言风格及说话方式，从而让聊天变得更睿智、简单和有趣。
    @inlinable
    public func chatBot(_ input: ChatBotRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChatBotResponse {
        try await self.client.execute(action: "ChatBot", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 闲聊
    ///
    /// 闲聊服务基于腾讯领先的NLP引擎能力、数据运算能力和千亿级互联网语料数据的支持，同时集成了广泛的知识问答能力，可实现上百种自定义属性配置，以及儿童语言风格及说话方式，从而让聊天变得更睿智、简单和有趣。
    @inlinable
    public func chatBot(query: String, openId: String? = nil, flag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChatBotResponse> {
        self.chatBot(.init(query: query, openId: openId, flag: flag), region: region, logger: logger, on: eventLoop)
    }

    /// 闲聊
    ///
    /// 闲聊服务基于腾讯领先的NLP引擎能力、数据运算能力和千亿级互联网语料数据的支持，同时集成了广泛的知识问答能力，可实现上百种自定义属性配置，以及儿童语言风格及说话方式，从而让聊天变得更睿智、简单和有趣。
    @inlinable
    public func chatBot(query: String, openId: String? = nil, flag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChatBotResponse {
        try await self.chatBot(.init(query: query, openId: openId, flag: flag), region: region, logger: logger, on: eventLoop)
    }
}
