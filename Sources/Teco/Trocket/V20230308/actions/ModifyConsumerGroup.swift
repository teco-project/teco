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
    /// ModifyConsumerGroup请求参数结构体
    public struct ModifyConsumerGroupRequest: TCRequest {
        /// 实例ID
        public let instanceId: String

        /// 消费组名称
        public let consumerGroup: String?

        /// 是否开启消费
        public let consumeEnable: Bool?

        /// 顺序投递：true
        /// 并发投递：false
        public let consumeMessageOrderly: Bool?

        /// 最大重试次数
        public let maxRetryTimes: Int64?

        /// 备注
        public let remark: String?

        public init(instanceId: String, consumerGroup: String? = nil, consumeEnable: Bool? = nil, consumeMessageOrderly: Bool? = nil, maxRetryTimes: Int64? = nil, remark: String? = nil) {
            self.instanceId = instanceId
            self.consumerGroup = consumerGroup
            self.consumeEnable = consumeEnable
            self.consumeMessageOrderly = consumeMessageOrderly
            self.maxRetryTimes = maxRetryTimes
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case consumerGroup = "ConsumerGroup"
            case consumeEnable = "ConsumeEnable"
            case consumeMessageOrderly = "ConsumeMessageOrderly"
            case maxRetryTimes = "MaxRetryTimes"
            case remark = "Remark"
        }
    }

    /// ModifyConsumerGroup返回参数结构体
    public struct ModifyConsumerGroupResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改消费组属性
    @inlinable @discardableResult
    public func modifyConsumerGroup(_ input: ModifyConsumerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConsumerGroupResponse> {
        self.client.execute(action: "ModifyConsumerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改消费组属性
    @inlinable @discardableResult
    public func modifyConsumerGroup(_ input: ModifyConsumerGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConsumerGroupResponse {
        try await self.client.execute(action: "ModifyConsumerGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改消费组属性
    @inlinable @discardableResult
    public func modifyConsumerGroup(instanceId: String, consumerGroup: String? = nil, consumeEnable: Bool? = nil, consumeMessageOrderly: Bool? = nil, maxRetryTimes: Int64? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyConsumerGroupResponse> {
        self.modifyConsumerGroup(.init(instanceId: instanceId, consumerGroup: consumerGroup, consumeEnable: consumeEnable, consumeMessageOrderly: consumeMessageOrderly, maxRetryTimes: maxRetryTimes, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 修改消费组属性
    @inlinable @discardableResult
    public func modifyConsumerGroup(instanceId: String, consumerGroup: String? = nil, consumeEnable: Bool? = nil, consumeMessageOrderly: Bool? = nil, maxRetryTimes: Int64? = nil, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyConsumerGroupResponse {
        try await self.modifyConsumerGroup(.init(instanceId: instanceId, consumerGroup: consumerGroup, consumeEnable: consumeEnable, consumeMessageOrderly: consumeMessageOrderly, maxRetryTimes: maxRetryTimes, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
