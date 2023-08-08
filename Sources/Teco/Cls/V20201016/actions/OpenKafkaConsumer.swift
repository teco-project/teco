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
    /// OpenKafkaConsumer请求参数结构体
    public struct OpenKafkaConsumerRequest: TCRequestModel {
        /// 日志主题ID
        public let fromTopicId: String

        /// 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        public let compression: Int64?

        /// kafka协议消费数据格式
        public let consumerContent: KafkaConsumerContent?

        public init(fromTopicId: String, compression: Int64? = nil, consumerContent: KafkaConsumerContent? = nil) {
            self.fromTopicId = fromTopicId
            self.compression = compression
            self.consumerContent = consumerContent
        }

        enum CodingKeys: String, CodingKey {
            case fromTopicId = "FromTopicId"
            case compression = "Compression"
            case consumerContent = "ConsumerContent"
        }
    }

    /// OpenKafkaConsumer返回参数结构体
    public struct OpenKafkaConsumerResponse: TCResponseModel {
        /// KafkaConsumer 消费时使用的Topic参数
        public let topicID: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case topicID = "TopicID"
            case requestId = "RequestId"
        }
    }

    /// 打开Kafka协议消费
    ///
    /// 打开Kafka协议消费功能
    @inlinable
    public func openKafkaConsumer(_ input: OpenKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenKafkaConsumerResponse> {
        self.client.execute(action: "OpenKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 打开Kafka协议消费
    ///
    /// 打开Kafka协议消费功能
    @inlinable
    public func openKafkaConsumer(_ input: OpenKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenKafkaConsumerResponse {
        try await self.client.execute(action: "OpenKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 打开Kafka协议消费
    ///
    /// 打开Kafka协议消费功能
    @inlinable
    public func openKafkaConsumer(fromTopicId: String, compression: Int64? = nil, consumerContent: KafkaConsumerContent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<OpenKafkaConsumerResponse> {
        self.openKafkaConsumer(.init(fromTopicId: fromTopicId, compression: compression, consumerContent: consumerContent), region: region, logger: logger, on: eventLoop)
    }

    /// 打开Kafka协议消费
    ///
    /// 打开Kafka协议消费功能
    @inlinable
    public func openKafkaConsumer(fromTopicId: String, compression: Int64? = nil, consumerContent: KafkaConsumerContent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> OpenKafkaConsumerResponse {
        try await self.openKafkaConsumer(.init(fromTopicId: fromTopicId, compression: compression, consumerContent: consumerContent), region: region, logger: logger, on: eventLoop)
    }
}
