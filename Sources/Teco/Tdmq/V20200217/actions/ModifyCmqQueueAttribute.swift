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
    /// ModifyCmqQueueAttribute请求参数结构体
    public struct ModifyCmqQueueAttributeRequest: TCRequest {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String

        /// 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        public let maxMsgHeapNum: UInt64?

        /// 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        public let pollingWaitSeconds: UInt64?

        /// 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        public let visibilityTimeout: UInt64?

        /// 消息最大长度，新版CMQ新建的队列默认1024KB，不支持修改
        public let maxMsgSize: UInt64?

        /// 消息最长未确认时间。取值范围 30-43200 秒（30秒~12小时），默认值 3600 (1 小时)。
        public let msgRetentionSeconds: UInt64?

        /// 队列是否开启回溯消息能力，该参数取值范围0-1296000，0表示不开启。
        public let rewindSeconds: UInt64?

        /// 第一次查询时间
        public let firstQueryInterval: UInt64?

        /// 最大查询次数
        public let maxQueryCount: UInt64?

        /// 死信队列名称
        public let deadLetterQueueName: String?

        /// MaxTimeToLivepolicy为1时必选。最大未消费过期时间。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds
        public let maxTimeToLive: UInt64?

        /// 最大接收次数
        public let maxReceiveCount: UInt64?

        /// 死信队列策略
        public let policy: UInt64?

        /// 是否开启消息轨迹标识，true表示开启，false表示不开启，不填表示不开启。
        public let trace: Bool?

        /// 是否开启事务，1开启，0不开启
        public let transaction: UInt64?

        /// 队列可回溯存储空间：若开启消息回溯，取值范围：10240MB - 512000MB，若不开启消息回溯，取值：0
        public let retentionSizeInMB: UInt64?

        public init(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, maxTimeToLive: UInt64? = nil, maxReceiveCount: UInt64? = nil, policy: UInt64? = nil, trace: Bool? = nil, transaction: UInt64? = nil, retentionSizeInMB: UInt64? = nil) {
            self.queueName = queueName
            self.maxMsgHeapNum = maxMsgHeapNum
            self.pollingWaitSeconds = pollingWaitSeconds
            self.visibilityTimeout = visibilityTimeout
            self.maxMsgSize = maxMsgSize
            self.msgRetentionSeconds = msgRetentionSeconds
            self.rewindSeconds = rewindSeconds
            self.firstQueryInterval = firstQueryInterval
            self.maxQueryCount = maxQueryCount
            self.deadLetterQueueName = deadLetterQueueName
            self.maxTimeToLive = maxTimeToLive
            self.maxReceiveCount = maxReceiveCount
            self.policy = policy
            self.trace = trace
            self.transaction = transaction
            self.retentionSizeInMB = retentionSizeInMB
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case maxMsgHeapNum = "MaxMsgHeapNum"
            case pollingWaitSeconds = "PollingWaitSeconds"
            case visibilityTimeout = "VisibilityTimeout"
            case maxMsgSize = "MaxMsgSize"
            case msgRetentionSeconds = "MsgRetentionSeconds"
            case rewindSeconds = "RewindSeconds"
            case firstQueryInterval = "FirstQueryInterval"
            case maxQueryCount = "MaxQueryCount"
            case deadLetterQueueName = "DeadLetterQueueName"
            case maxTimeToLive = "MaxTimeToLive"
            case maxReceiveCount = "MaxReceiveCount"
            case policy = "Policy"
            case trace = "Trace"
            case transaction = "Transaction"
            case retentionSizeInMB = "RetentionSizeInMB"
        }
    }

    /// ModifyCmqQueueAttribute返回参数结构体
    public struct ModifyCmqQueueAttributeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改cmq队列属性
    @inlinable @discardableResult
    public func modifyCmqQueueAttribute(_ input: ModifyCmqQueueAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCmqQueueAttributeResponse> {
        self.client.execute(action: "ModifyCmqQueueAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改cmq队列属性
    @inlinable @discardableResult
    public func modifyCmqQueueAttribute(_ input: ModifyCmqQueueAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCmqQueueAttributeResponse {
        try await self.client.execute(action: "ModifyCmqQueueAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改cmq队列属性
    @inlinable @discardableResult
    public func modifyCmqQueueAttribute(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, maxTimeToLive: UInt64? = nil, maxReceiveCount: UInt64? = nil, policy: UInt64? = nil, trace: Bool? = nil, transaction: UInt64? = nil, retentionSizeInMB: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyCmqQueueAttributeResponse> {
        self.modifyCmqQueueAttribute(.init(queueName: queueName, maxMsgHeapNum: maxMsgHeapNum, pollingWaitSeconds: pollingWaitSeconds, visibilityTimeout: visibilityTimeout, maxMsgSize: maxMsgSize, msgRetentionSeconds: msgRetentionSeconds, rewindSeconds: rewindSeconds, firstQueryInterval: firstQueryInterval, maxQueryCount: maxQueryCount, deadLetterQueueName: deadLetterQueueName, maxTimeToLive: maxTimeToLive, maxReceiveCount: maxReceiveCount, policy: policy, trace: trace, transaction: transaction, retentionSizeInMB: retentionSizeInMB), region: region, logger: logger, on: eventLoop)
    }

    /// 修改cmq队列属性
    @inlinable @discardableResult
    public func modifyCmqQueueAttribute(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, maxTimeToLive: UInt64? = nil, maxReceiveCount: UInt64? = nil, policy: UInt64? = nil, trace: Bool? = nil, transaction: UInt64? = nil, retentionSizeInMB: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCmqQueueAttributeResponse {
        try await self.modifyCmqQueueAttribute(.init(queueName: queueName, maxMsgHeapNum: maxMsgHeapNum, pollingWaitSeconds: pollingWaitSeconds, visibilityTimeout: visibilityTimeout, maxMsgSize: maxMsgSize, msgRetentionSeconds: msgRetentionSeconds, rewindSeconds: rewindSeconds, firstQueryInterval: firstQueryInterval, maxQueryCount: maxQueryCount, deadLetterQueueName: deadLetterQueueName, maxTimeToLive: maxTimeToLive, maxReceiveCount: maxReceiveCount, policy: policy, trace: trace, transaction: transaction, retentionSizeInMB: retentionSizeInMB), region: region, logger: logger, on: eventLoop)
    }
}
