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
    /// DescribeConsumerGroup请求参数结构体
    public struct DescribeConsumerGroupRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 消费组名称
        public let consumerGroup: String?

        public init(instanceId: String, consumerGroup: String? = nil) {
            self.instanceId = instanceId
            self.consumerGroup = consumerGroup
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case consumerGroup = "ConsumerGroup"
        }
    }

    /// DescribeConsumerGroup返回参数结构体
    public struct DescribeConsumerGroupResponse: TCResponse {
        /// 在线消费者数量
        public let consumerNum: Int64

        /// TPS
        public let tps: Int64

        /// 消息堆积数量
        public let consumerLag: Int64

        /// 消费者类型
        public let consumeType: String

        /// 创建时间，秒为单位
        public let createdTime: Int64

        /// 顺序投递：true
        /// 并发投递：false
        public let consumeMessageOrderly: Bool

        /// 是否开启消费
        public let consumeEnable: Bool

        /// 最大重试次数
        public let maxRetryTimes: Int64

        /// 备注
        public let remark: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case consumerNum = "ConsumerNum"
            case tps = "Tps"
            case consumerLag = "ConsumerLag"
            case consumeType = "ConsumeType"
            case createdTime = "CreatedTime"
            case consumeMessageOrderly = "ConsumeMessageOrderly"
            case consumeEnable = "ConsumeEnable"
            case maxRetryTimes = "MaxRetryTimes"
            case remark = "Remark"
            case requestId = "RequestId"
        }
    }

    /// 查询消费组详情
    @inlinable
    public func describeConsumerGroup(_ input: DescribeConsumerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConsumerGroupResponse> {
        self.client.execute(action: "DescribeConsumerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询消费组详情
    @inlinable
    public func describeConsumerGroup(_ input: DescribeConsumerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConsumerGroupResponse {
        try await self.client.execute(action: "DescribeConsumerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询消费组详情
    @inlinable
    public func describeConsumerGroup(instanceId: String, consumerGroup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConsumerGroupResponse> {
        self.describeConsumerGroup(.init(instanceId: instanceId, consumerGroup: consumerGroup), region: region, logger: logger, on: eventLoop)
    }

    /// 查询消费组详情
    @inlinable
    public func describeConsumerGroup(instanceId: String, consumerGroup: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConsumerGroupResponse {
        try await self.describeConsumerGroup(.init(instanceId: instanceId, consumerGroup: consumerGroup), region: region, logger: logger, on: eventLoop)
    }
}
