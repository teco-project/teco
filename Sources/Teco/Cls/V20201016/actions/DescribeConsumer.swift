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
    /// DescribeConsumer请求参数结构体
    public struct DescribeConsumerRequest: TCRequestModel {
        /// 投递任务绑定的日志主题 ID
        public let topicId: String

        public init(topicId: String) {
            self.topicId = topicId
        }

        enum CodingKeys: String, CodingKey {
            case topicId = "TopicId"
        }
    }

    /// DescribeConsumer返回参数结构体
    public struct DescribeConsumerResponse: TCResponseModel {
        /// 投递任务是否生效
        public let effective: Bool

        /// 是否投递日志的元数据信息
        public let needContent: Bool

        /// 如果需要投递元数据信息，元数据信息的描述
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: ConsumerContent?

        /// CKafka的描述
        public let ckafka: Ckafka

        /// 压缩方式[0:NONE；2:SNAPPY；3:LZ4]
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let compression: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case effective = "Effective"
            case needContent = "NeedContent"
            case content = "Content"
            case ckafka = "Ckafka"
            case compression = "Compression"
            case requestId = "RequestId"
        }
    }

    /// 获取投递配置
    ///
    /// 本接口用于获取投递配置
    @inlinable
    public func describeConsumer(_ input: DescribeConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConsumerResponse> {
        self.client.execute(action: "DescribeConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取投递配置
    ///
    /// 本接口用于获取投递配置
    @inlinable
    public func describeConsumer(_ input: DescribeConsumerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConsumerResponse {
        try await self.client.execute(action: "DescribeConsumer", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取投递配置
    ///
    /// 本接口用于获取投递配置
    @inlinable
    public func describeConsumer(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConsumerResponse> {
        self.describeConsumer(.init(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取投递配置
    ///
    /// 本接口用于获取投递配置
    @inlinable
    public func describeConsumer(topicId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConsumerResponse {
        try await self.describeConsumer(.init(topicId: topicId), region: region, logger: logger, on: eventLoop)
    }
}
