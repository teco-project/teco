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
    /// ModifyKafkaConsumer请求参数结构体
    public struct ModifyKafkaConsumerRequest: TCRequestModel {
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

    /// ModifyKafkaConsumer返回参数结构体
    public struct ModifyKafkaConsumerResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改Kafka协议消费信息
    @inlinable @discardableResult
    public func modifyKafkaConsumer(_ input: ModifyKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyKafkaConsumerResponse> {
        self.client.execute(action: "ModifyKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改Kafka协议消费信息
    @inlinable @discardableResult
    public func modifyKafkaConsumer(_ input: ModifyKafkaConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyKafkaConsumerResponse {
        try await self.client.execute(action: "ModifyKafkaConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改Kafka协议消费信息
    @inlinable @discardableResult
    public func modifyKafkaConsumer(fromTopicId: String, compression: Int64? = nil, consumerContent: KafkaConsumerContent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyKafkaConsumerResponse> {
        self.modifyKafkaConsumer(.init(fromTopicId: fromTopicId, compression: compression, consumerContent: consumerContent), region: region, logger: logger, on: eventLoop)
    }

    /// 修改Kafka协议消费信息
    @inlinable @discardableResult
    public func modifyKafkaConsumer(fromTopicId: String, compression: Int64? = nil, consumerContent: KafkaConsumerContent? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyKafkaConsumerResponse {
        try await self.modifyKafkaConsumer(.init(fromTopicId: fromTopicId, compression: compression, consumerContent: consumerContent), region: region, logger: logger, on: eventLoop)
    }
}