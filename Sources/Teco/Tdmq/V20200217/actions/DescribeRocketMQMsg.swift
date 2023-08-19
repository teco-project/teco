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

extension Tdmq {
    /// DescribeRocketMQMsg请求参数结构体
    public struct DescribeRocketMQMsgRequest: TCRequest {
        /// 集群id
        public let clusterId: String

        /// 命名空间
        public let environmentId: String

        /// 主题，查询死信时传groupId
        public let topicName: String

        /// 消息id
        public let msgId: String

        /// pulsar消息id
        public let pulsarMsgId: String

        /// 查询死信时该值为true，只对Rocketmq有效
        public let queryDlqMsg: Bool?

        public init(clusterId: String, environmentId: String, topicName: String, msgId: String, pulsarMsgId: String, queryDlqMsg: Bool? = nil) {
            self.clusterId = clusterId
            self.environmentId = environmentId
            self.topicName = topicName
            self.msgId = msgId
            self.pulsarMsgId = pulsarMsgId
            self.queryDlqMsg = queryDlqMsg
        }

        enum CodingKeys: String, CodingKey {
            case clusterId = "ClusterId"
            case environmentId = "EnvironmentId"
            case topicName = "TopicName"
            case msgId = "MsgId"
            case pulsarMsgId = "PulsarMsgId"
            case queryDlqMsg = "QueryDlqMsg"
        }
    }

    /// DescribeRocketMQMsg返回参数结构体
    public struct DescribeRocketMQMsgResponse: TCResponse {
        /// 消息体
        public let body: String

        /// 详情参数
        public let properties: String

        /// 生产时间
        public let produceTime: String

        /// 消息id
        public let msgId: String

        /// 生产者地址
        public let producerAddr: String

        /// 消费组消费情况
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let messageTracks: [RocketMQMessageTrack]?

        /// 详情页展示的topic名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let showTopicName: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case body = "Body"
            case properties = "Properties"
            case produceTime = "ProduceTime"
            case msgId = "MsgId"
            case producerAddr = "ProducerAddr"
            case messageTracks = "MessageTracks"
            case showTopicName = "ShowTopicName"
            case requestId = "RequestId"
        }
    }

    /// rocketmq消息详情
    @inlinable
    public func describeRocketMQMsg(_ input: DescribeRocketMQMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQMsgResponse> {
        self.client.execute(action: "DescribeRocketMQMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// rocketmq消息详情
    @inlinable
    public func describeRocketMQMsg(_ input: DescribeRocketMQMsgRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQMsgResponse {
        try await self.client.execute(action: "DescribeRocketMQMsg", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// rocketmq消息详情
    @inlinable
    public func describeRocketMQMsg(clusterId: String, environmentId: String, topicName: String, msgId: String, pulsarMsgId: String, queryDlqMsg: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeRocketMQMsgResponse> {
        self.describeRocketMQMsg(.init(clusterId: clusterId, environmentId: environmentId, topicName: topicName, msgId: msgId, pulsarMsgId: pulsarMsgId, queryDlqMsg: queryDlqMsg), region: region, logger: logger, on: eventLoop)
    }

    /// rocketmq消息详情
    @inlinable
    public func describeRocketMQMsg(clusterId: String, environmentId: String, topicName: String, msgId: String, pulsarMsgId: String, queryDlqMsg: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeRocketMQMsgResponse {
        try await self.describeRocketMQMsg(.init(clusterId: clusterId, environmentId: environmentId, topicName: topicName, msgId: msgId, pulsarMsgId: pulsarMsgId, queryDlqMsg: queryDlqMsg), region: region, logger: logger, on: eventLoop)
    }
}
