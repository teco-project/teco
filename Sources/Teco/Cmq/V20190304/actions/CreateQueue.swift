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

extension Cmq {
    /// CreateQueue请求参数结构体
    public struct CreateQueueRequest: TCRequestModel {
        /// 队列名字，在单个地域同一帐号下唯一。队列名称是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        public let queueName: String

        /// 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        public let maxMsgHeapNum: UInt64?

        /// 消息接收长轮询等待时间。取值范围 0-30 秒，默认值 0。
        public let pollingWaitSeconds: UInt64?

        /// 消息可见性超时。取值范围 1-43200 秒（即12小时内），默认值 30。
        public let visibilityTimeout: UInt64?

        /// 消息最大长度。取值范围 1024-65536 Byte（即1-64K），默认值 65536。
        public let maxMsgSize: UInt64?

        /// 消息保留周期。取值范围 60-1296000 秒（1min-15天），默认值 345600 (4 天)。
        public let msgRetentionSeconds: UInt64?

        /// 队列是否开启回溯消息能力，该参数取值范围0-msgRetentionSeconds,即最大的回溯时间为消息在队列中的保留周期，0表示不开启。
        public let rewindSeconds: UInt64?

        /// 1 表示事务队列，0 表示普通队列
        public let transaction: UInt64?

        /// 第一次回查间隔
        public let firstQueryInterval: UInt64?

        /// 最大回查次数
        public let maxQueryCount: UInt64?

        /// 死信队列名称
        public let deadLetterQueueName: String?

        /// 死信策略。0为消息被多次消费未删除，1为Time-To-Live过期
        public let policy: UInt64?

        /// 最大接收次数 1-1000
        public let maxReceiveCount: UInt64?

        /// policy为1时必选。最大未消费过期时间。范围300-43200，单位秒，需要小于消息最大保留时间msgRetentionSeconds
        public let maxTimeToLive: UInt64?

        /// 是否开启消息轨迹追踪，当不设置字段时，默认为不开启，该字段为true表示开启，为false表示不开启
        public let trace: Bool?

        public init(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, transaction: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, policy: UInt64? = nil, maxReceiveCount: UInt64? = nil, maxTimeToLive: UInt64? = nil, trace: Bool? = nil) {
            self.queueName = queueName
            self.maxMsgHeapNum = maxMsgHeapNum
            self.pollingWaitSeconds = pollingWaitSeconds
            self.visibilityTimeout = visibilityTimeout
            self.maxMsgSize = maxMsgSize
            self.msgRetentionSeconds = msgRetentionSeconds
            self.rewindSeconds = rewindSeconds
            self.transaction = transaction
            self.firstQueryInterval = firstQueryInterval
            self.maxQueryCount = maxQueryCount
            self.deadLetterQueueName = deadLetterQueueName
            self.policy = policy
            self.maxReceiveCount = maxReceiveCount
            self.maxTimeToLive = maxTimeToLive
            self.trace = trace
        }

        enum CodingKeys: String, CodingKey {
            case queueName = "QueueName"
            case maxMsgHeapNum = "MaxMsgHeapNum"
            case pollingWaitSeconds = "PollingWaitSeconds"
            case visibilityTimeout = "VisibilityTimeout"
            case maxMsgSize = "MaxMsgSize"
            case msgRetentionSeconds = "MsgRetentionSeconds"
            case rewindSeconds = "RewindSeconds"
            case transaction = "Transaction"
            case firstQueryInterval = "FirstQueryInterval"
            case maxQueryCount = "MaxQueryCount"
            case deadLetterQueueName = "DeadLetterQueueName"
            case policy = "Policy"
            case maxReceiveCount = "MaxReceiveCount"
            case maxTimeToLive = "MaxTimeToLive"
            case trace = "Trace"
        }
    }

    /// CreateQueue返回参数结构体
    public struct CreateQueueResponse: TCResponseModel {
        /// 创建成功的queueId
        public let queueId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case queueId = "QueueId"
            case requestId = "RequestId"
        }
    }

    /// 创建队列接口
    @inlinable
    public func createQueue(_ input: CreateQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQueueResponse> {
        self.client.execute(action: "CreateQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建队列接口
    @inlinable
    public func createQueue(_ input: CreateQueueRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQueueResponse {
        try await self.client.execute(action: "CreateQueue", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建队列接口
    @inlinable
    public func createQueue(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, transaction: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, policy: UInt64? = nil, maxReceiveCount: UInt64? = nil, maxTimeToLive: UInt64? = nil, trace: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateQueueResponse> {
        self.createQueue(.init(queueName: queueName, maxMsgHeapNum: maxMsgHeapNum, pollingWaitSeconds: pollingWaitSeconds, visibilityTimeout: visibilityTimeout, maxMsgSize: maxMsgSize, msgRetentionSeconds: msgRetentionSeconds, rewindSeconds: rewindSeconds, transaction: transaction, firstQueryInterval: firstQueryInterval, maxQueryCount: maxQueryCount, deadLetterQueueName: deadLetterQueueName, policy: policy, maxReceiveCount: maxReceiveCount, maxTimeToLive: maxTimeToLive, trace: trace), region: region, logger: logger, on: eventLoop)
    }

    /// 创建队列接口
    @inlinable
    public func createQueue(queueName: String, maxMsgHeapNum: UInt64? = nil, pollingWaitSeconds: UInt64? = nil, visibilityTimeout: UInt64? = nil, maxMsgSize: UInt64? = nil, msgRetentionSeconds: UInt64? = nil, rewindSeconds: UInt64? = nil, transaction: UInt64? = nil, firstQueryInterval: UInt64? = nil, maxQueryCount: UInt64? = nil, deadLetterQueueName: String? = nil, policy: UInt64? = nil, maxReceiveCount: UInt64? = nil, maxTimeToLive: UInt64? = nil, trace: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateQueueResponse {
        try await self.createQueue(.init(queueName: queueName, maxMsgHeapNum: maxMsgHeapNum, pollingWaitSeconds: pollingWaitSeconds, visibilityTimeout: visibilityTimeout, maxMsgSize: maxMsgSize, msgRetentionSeconds: msgRetentionSeconds, rewindSeconds: rewindSeconds, transaction: transaction, firstQueryInterval: firstQueryInterval, maxQueryCount: maxQueryCount, deadLetterQueueName: deadLetterQueueName, policy: policy, maxReceiveCount: maxReceiveCount, maxTimeToLive: maxTimeToLive, trace: trace), region: region, logger: logger, on: eventLoop)
    }
}
