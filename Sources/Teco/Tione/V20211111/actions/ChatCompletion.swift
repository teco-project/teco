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

import Logging
import NIOCore
import TecoCore

extension Tione {
    /// ChatCompletion请求参数结构体
    public struct ChatCompletionRequest: TCRequest {
        /// 部署好的模型服务Id。
        public let model: String

        /// 输入对话历史。旧的对话在前，数组中最后一项应该为这次的问题。
        public let messages: [Message]

        /// 采样随机值，默认值为1.0，取值范围[0,2]。较高的值(如0.8)将使输出更加随机，而较低的值(如0.2)将使输出更加确定。建议仅修改此参数或TopP，但不建议两者都修改。
        public let temperature: Float?

        /// 核采样，默认值为1，取值范围[0,1]。指的是预先设置一个概率界限 p，然后将所有可能生成的token，根据概率大小从高到低排列，依次选取。当这些选取的token的累积概率大于或等于 p 值时停止，然后从已经选取的token中进行采样，生成下一个token。例如top_p为0.1时意味着模型只考虑累积概率为10%的token。建议仅修改此参数或Temperature，不建议两者都修改。
        public let topP: Float?

        /// 最大生成的token数目。默认为无限大。
        public let maxTokens: Int64?

        public init(model: String, messages: [Message], temperature: Float? = nil, topP: Float? = nil, maxTokens: Int64? = nil) {
            self.model = model
            self.messages = messages
            self.temperature = temperature
            self.topP = topP
            self.maxTokens = maxTokens
        }

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case messages = "Messages"
            case temperature = "Temperature"
            case topP = "TopP"
            case maxTokens = "MaxTokens"
        }
    }

    /// ChatCompletion返回参数结构体
    public struct ChatCompletionResponse: TCResponse {
        /// 部署好的服务Id
        public let model: String?

        /// 本次问答的答案。
        public let choices: [Choice]?

        /// 会话Id。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: String?

        /// token统计
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let usage: Usage?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case model = "Model"
            case choices = "Choices"
            case id = "Id"
            case usage = "Usage"
            case requestId = "RequestId"
        }
    }

    /// 大模型聊天
    ///
    /// 与大模型聊天
    @inlinable
    public func chatCompletion(_ input: ChatCompletionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChatCompletionResponse> {
        self.client.execute(action: "ChatCompletion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 大模型聊天
    ///
    /// 与大模型聊天
    @inlinable
    public func chatCompletion(_ input: ChatCompletionRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChatCompletionResponse {
        try await self.client.execute(action: "ChatCompletion", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 大模型聊天
    ///
    /// 与大模型聊天
    @inlinable
    public func chatCompletion(model: String, messages: [Message], temperature: Float? = nil, topP: Float? = nil, maxTokens: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ChatCompletionResponse> {
        self.chatCompletion(.init(model: model, messages: messages, temperature: temperature, topP: topP, maxTokens: maxTokens), region: region, logger: logger, on: eventLoop)
    }

    /// 大模型聊天
    ///
    /// 与大模型聊天
    @inlinable
    public func chatCompletion(model: String, messages: [Message], temperature: Float? = nil, topP: Float? = nil, maxTokens: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ChatCompletionResponse {
        try await self.chatCompletion(.init(model: model, messages: messages, temperature: temperature, topP: topP, maxTokens: maxTokens), region: region, logger: logger, on: eventLoop)
    }
}
