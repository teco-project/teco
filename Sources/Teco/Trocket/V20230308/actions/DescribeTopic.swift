//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Trocket {
    /// DescribeTopic请求参数结构体
    public struct DescribeTopicRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 主题
        public let topic: String

        /// 查询起始位置
        public let offset: Int64

        /// 查询结果限制数量
        public let limit: Int64

        /// 查询条件列表
        public let filters: [Filter]?

        public init(instanceId: String, topic: String, offset: Int64, limit: Int64, filters: [Filter]? = nil) {
            self.instanceId = instanceId
            self.topic = topic
            self.offset = offset
            self.limit = limit
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topic = "Topic"
            case offset = "Offset"
            case limit = "Limit"
            case filters = "Filters"
        }
    }

    /// DescribeTopic返回参数结构体
    public struct DescribeTopicResponse: TCResponse {
        /// 实例ID
        public let instanceId: String

        /// 主题名称
        public let topic: String

        /// 主题类型
        /// UNSPECIFIED:未指定,
        /// NORMAL:普通消息,
        /// FIFO:顺序消息,
        /// DELAY:延时消息,
        /// TRANSACTION:事务消息
        public let topicType: String

        /// 备注
        public let remark: String

        /// 创建时间，秒为单位
        public let createdTime: Int64

        /// 最后写入时间，秒为单位
        public let lastUpdateTime: Int64

        /// 订阅数量
        public let subscriptionCount: Int64

        /// 订阅关系列表
        public let subscriptionData: [SubscriptionData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topic = "Topic"
            case topicType = "TopicType"
            case remark = "Remark"
            case createdTime = "CreatedTime"
            case lastUpdateTime = "LastUpdateTime"
            case subscriptionCount = "SubscriptionCount"
            case subscriptionData = "SubscriptionData"
            case requestId = "RequestId"
        }
    }

    /// 查询主题详情
    ///
    /// 查询主题详情，Offset和Limit参数是指订阅该主题的消费组查询分页参数，Filter参数使用说明如下：
    ///
    /// ConsumerGroup，消费组名称过滤
    @inlinable
    public func describeTopic(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicResponse> {
        self.client.execute(action: "DescribeTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    ///
    /// 查询主题详情，Offset和Limit参数是指订阅该主题的消费组查询分页参数，Filter参数使用说明如下：
    ///
    /// ConsumerGroup，消费组名称过滤
    @inlinable
    public func describeTopic(_ input: DescribeTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicResponse {
        try await self.client.execute(action: "DescribeTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主题详情
    ///
    /// 查询主题详情，Offset和Limit参数是指订阅该主题的消费组查询分页参数，Filter参数使用说明如下：
    ///
    /// ConsumerGroup，消费组名称过滤
    @inlinable
    public func describeTopic(instanceId: String, topic: String, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTopicResponse> {
        self.describeTopic(.init(instanceId: instanceId, topic: topic, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主题详情
    ///
    /// 查询主题详情，Offset和Limit参数是指订阅该主题的消费组查询分页参数，Filter参数使用说明如下：
    ///
    /// ConsumerGroup，消费组名称过滤
    @inlinable
    public func describeTopic(instanceId: String, topic: String, offset: Int64, limit: Int64, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTopicResponse {
        try await self.describeTopic(.init(instanceId: instanceId, topic: topic, offset: offset, limit: limit, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
