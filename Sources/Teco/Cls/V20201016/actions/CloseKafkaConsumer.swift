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

extension Cls {
    /// CloseKafkaConsumer请求参数结构体
    public struct CloseKafkaConsumerRequest: TCRequestModel {
        /// 日志主题ID
        public let fromTopicId: String

        public init(fromTopicId: String) {
            self.fromTopicId = fromTopicId
        }

        enum CodingKeys: String, CodingKey {
            case fromTopicId = "FromTopicId"
        }
    }

    /// CloseKafkaConsumer返回参数结构体
    public struct CloseKafkaConsumerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 关闭Kafka协议消费
    @inlinable @discardableResult
    public func closeKafkaConsumer(_ input: CloseKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseKafkaConsumerResponse> {
        self.client.execute(action: "CloseKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 关闭Kafka协议消费
    @inlinable @discardableResult
    public func closeKafkaConsumer(_ input: CloseKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseKafkaConsumerResponse {
        try await self.client.execute(action: "CloseKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 关闭Kafka协议消费
    @inlinable @discardableResult
    public func closeKafkaConsumer(fromTopicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CloseKafkaConsumerResponse> {
        self.closeKafkaConsumer(.init(fromTopicId: fromTopicId), region: region, logger: logger, on: eventLoop)
    }

    /// 关闭Kafka协议消费
    @inlinable @discardableResult
    public func closeKafkaConsumer(fromTopicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CloseKafkaConsumerResponse {
        try await self.closeKafkaConsumer(.init(fromTopicId: fromTopicId), region: region, logger: logger, on: eventLoop)
    }
}
