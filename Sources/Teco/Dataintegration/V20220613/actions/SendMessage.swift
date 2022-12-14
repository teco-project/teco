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

extension Dataintegration {
    /// SendMessage请求参数结构体
    public struct SendMessageRequest: TCRequestModel {
        /// 接入资源ID
        public let dataHubId: String

        /// 批量消息
        public let message: [BatchContent]

        public init(dataHubId: String, message: [BatchContent]) {
            self.dataHubId = dataHubId
            self.message = message
        }

        enum CodingKeys: String, CodingKey {
            case dataHubId = "DataHubId"
            case message = "Message"
        }
    }

    /// SendMessage返回参数结构体
    public struct SendMessageResponse: TCResponseModel {
        /// 消息ID
        public let messageId: [String]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case messageId = "MessageId"
            case requestId = "RequestId"
        }
    }

    /// 数据上报
    ///
    /// 使用SDK将数据上报到DIP
    @inlinable
    public func sendMessage(_ input: SendMessageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendMessageResponse > {
        self.client.execute(action: "SendMessage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据上报
    ///
    /// 使用SDK将数据上报到DIP
    @inlinable
    public func sendMessage(_ input: SendMessageRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMessageResponse {
        try await self.client.execute(action: "SendMessage", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据上报
    ///
    /// 使用SDK将数据上报到DIP
    @inlinable
    public func sendMessage(dataHubId: String, message: [BatchContent], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < SendMessageResponse > {
        self.sendMessage(SendMessageRequest(dataHubId: dataHubId, message: message), logger: logger, on: eventLoop)
    }

    /// 数据上报
    ///
    /// 使用SDK将数据上报到DIP
    @inlinable
    public func sendMessage(dataHubId: String, message: [BatchContent], logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SendMessageResponse {
        try await self.sendMessage(SendMessageRequest(dataHubId: dataHubId, message: message), logger: logger, on: eventLoop)
    }
}
