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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Cmq {
    /// 死信队列策略
    public struct DeadLetterPolicy: TCOutputModel {
        /// 死信队列。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadLetterQueue: String?

        /// 死信队列名字。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadLetterQueueName: String?

        /// 最大未消费过期时间。Policy为1时必选。范围300-43200，单位秒，需要小于消息最大保留时间MsgRetentionSeconds。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxTimeToLive: UInt64?

        /// 死信队列策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let policy: UInt64?

        /// 最大接收次数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxReceiveCount: UInt64?

        enum CodingKeys: String, CodingKey {
            case deadLetterQueue = "DeadLetterQueue"
            case deadLetterQueueName = "DeadLetterQueueName"
            case maxTimeToLive = "MaxTimeToLive"
            case policy = "Policy"
            case maxReceiveCount = "MaxReceiveCount"
        }
    }

    /// 死信源队列信息
    public struct DeadLetterSource: TCOutputModel {
        /// 消息队列ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let queueId: String?

        /// 消息队列名字。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let queueName: String?

        enum CodingKeys: String, CodingKey {
            case queueId = "QueueId"
            case queueName = "QueueName"
        }
    }

    /// 过滤参数
    public struct Filter: TCInputModel {
        /// 数值
        public let values: [String]?

        /// 过滤参数的名字
        public let name: String?

        public init(values: [String]? = nil, name: String? = nil) {
            self.values = values
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case values = "Values"
            case name = "Name"
        }
    }

    /// 批量queue属性信息
    public struct QueueSet: TCOutputModel {
        /// 消息队列ID。
        public let queueId: String

        /// 回溯队列的消息回溯时间最大值，取值范围0 - 43200秒，0表示不开启消息回溯。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rewindSeconds: UInt64?

        /// 创建者Uin。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUin: UInt64?

        /// 最后一次修改队列属性的时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifyTime: UInt64?

        /// 消息可见性超时。取值范围1 - 43200秒（即12小时内），默认值30。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let visibilityTimeout: UInt64?

        /// 消息队列名字。
        public let queueName: String

        /// 消息轨迹。true表示开启，false表示不开启。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trace: Bool?

        /// 关联的标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 已调用 DelMsg 接口删除，但还在回溯保留时间内的消息数量。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rewindMsgNum: UInt64?

        /// 飞行消息最大保留时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxDelaySeconds: UInt64?

        /// 事务消息策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transactionPolicy: TransactionPolicy?

        /// 消息保留周期。取值范围60-1296000秒（1min-15天），默认值345600秒（4 天）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgRetentionSeconds: UInt64?

        /// 延迟消息数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let delayMsgNum: UInt64?

        /// 最大堆积消息数。取值范围在公测期间为 1,000,000 - 10,000,000，正式上线后范围可达到 1000,000-1000,000,000。默认取值在公测期间为 10,000,000，正式上线后为 100,000,000。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxMsgHeapNum: UInt64?

        /// 消息接收长轮询等待时间。取值范围0 - 30秒，默认值0。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pollingWaitSeconds: UInt64?

        /// 带宽限制。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bps: UInt64?

        /// 在队列中处于 Inactive 状态（正处于被消费状态）的消息总数，为近似值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inactiveMsgNum: UInt64?

        /// 死信队列策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadLetterPolicy: DeadLetterPolicy?

        /// 在队列中处于 Active 状态（不处于被消费状态）的消息总数，为近似值。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let activeMsgNum: UInt64?

        /// 消息最大长度。取值范围1024 - 1048576 Byte（即1K - 1024K），默认值65536。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxMsgSize: UInt64?

        /// 消息最小未消费时间，单位为秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let minMsgTime: UInt64?

        /// 死信队列。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deadLetterSource: [DeadLetterSource]?

        /// 事务消息队列。true表示是事务消息，false表示不是事务消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transaction: Bool?

        /// 每秒钟生产消息条数的限制，消费消息的大小是该值的1.1倍。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qps: UInt64?

        /// 队列的创建时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: UInt64?

        /// 是否迁移到新版本。0 表示仅同步元数据，1 表示迁移中，2 表示已经迁移完毕，3 表示回切状态，曾经迁移过，4 未迁移。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let migrate: Int64?

        enum CodingKeys: String, CodingKey {
            case queueId = "QueueId"
            case rewindSeconds = "RewindSeconds"
            case createUin = "CreateUin"
            case lastModifyTime = "LastModifyTime"
            case visibilityTimeout = "VisibilityTimeout"
            case queueName = "QueueName"
            case trace = "Trace"
            case tags = "Tags"
            case rewindMsgNum = "RewindMsgNum"
            case maxDelaySeconds = "MaxDelaySeconds"
            case transactionPolicy = "TransactionPolicy"
            case msgRetentionSeconds = "MsgRetentionSeconds"
            case delayMsgNum = "DelayMsgNum"
            case maxMsgHeapNum = "MaxMsgHeapNum"
            case pollingWaitSeconds = "PollingWaitSeconds"
            case bps = "Bps"
            case inactiveMsgNum = "InactiveMsgNum"
            case deadLetterPolicy = "DeadLetterPolicy"
            case activeMsgNum = "ActiveMsgNum"
            case maxMsgSize = "MaxMsgSize"
            case minMsgTime = "MinMsgTime"
            case deadLetterSource = "DeadLetterSource"
            case transaction = "Transaction"
            case qps = "Qps"
            case createTime = "CreateTime"
            case migrate = "Migrate"
        }
    }

    /// 订阅返回参数
    public struct Subscription: TCOutputModel {
        /// 订阅名字，在单个地域同一帐号的同一主题下唯一。订阅名称是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscriptionName: String?

        /// 订阅 ID。订阅 ID 在拉取监控数据时会用到。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let subscriptionId: String?

        /// 订阅拥有者的 APPID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicOwner: UInt64?

        /// 该订阅待投递的消息数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgCount: UInt64?

        /// 最后一次修改订阅属性的时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifyTime: UInt64?

        /// 订阅的创建时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: UInt64?

        /// 表示订阅接收消息的过滤策略。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bindingKey: [String]?

        /// 接收通知的 endpoint，根据协议 protocol 区分：对于 HTTP，endpoint 必须以http://开头，host 可以是域名或 IP；对于 queue，则填 queueName。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let endpoint: String?

        /// 描述用户创建订阅时选择的过滤策略：
        /// filterType = 1表示用户使用 filterTag 标签过滤
        /// filterType = 2表示用户使用 bindingKey 过滤。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filterTags: [String]?

        /// 订阅的协议，目前支持两种协议：HTTP、queue。使用 HTTP 协议，用户需自己搭建接受消息的 Web Server。使用 queue，消息会自动推送到 CMQ queue，用户可以并发地拉取消息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let `protocol`: String?

        /// 向 endpoint 推送消息出现错误时，CMQ 推送服务器的重试策略。取值有：
        /// （1）BACKOFF_RETRY，退避重试。每隔一定时间重试一次，重试够一定次数后，就把该消息丢弃，继续推送下一条消息；
        /// （2）EXPONENTIAL_DECAY_RETRY，指数衰退重试。每次重试的间隔是指数递增的，例如开始 1s，后面是 2s，4s，8s...由于 Topic 消息的周期是一天，所以最多重试一天就把消息丢弃。默认值是 EXPONENTIAL_DECAY_RETRY。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notifyStrategy: String?

        /// 推送内容的格式。取值：（1）JSON；（2）SIMPLIFIED，即 raw 格式。如果 protocol 是 queue，则取值必须为 SIMPLIFIED。如果 protocol 是 HTTP，两个值均可以，默认值是 JSON。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let notifyContentFormat: String?

        enum CodingKeys: String, CodingKey {
            case subscriptionName = "SubscriptionName"
            case subscriptionId = "SubscriptionId"
            case topicOwner = "TopicOwner"
            case msgCount = "MsgCount"
            case lastModifyTime = "LastModifyTime"
            case createTime = "CreateTime"
            case bindingKey = "BindingKey"
            case endpoint = "Endpoint"
            case filterTags = "FilterTags"
            case `protocol` = "Protocol"
            case notifyStrategy = "NotifyStrategy"
            case notifyContentFormat = "NotifyContentFormat"
        }
    }

    /// 标签
    public struct Tag: TCOutputModel {
        /// 标签Key
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagKey: String?

        /// 标签值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tagValue: String?

        enum CodingKeys: String, CodingKey {
            case tagKey = "TagKey"
            case tagValue = "TagValue"
        }
    }

    /// topic返回信息展示字段
    public struct TopicSet: TCOutputModel {
        /// 当前该主题中消息数目（消息堆积数）。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgCount: UInt64?

        /// 主题的 ID。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicId: String?

        /// 消息最大长度。取值范围1024 - 1048576Byte（即1 - 1024K），默认值为65536。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxMsgSize: UInt64?

        /// 消息轨迹。true表示开启，false表示不开启。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let trace: Bool?

        /// 关联的标签。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tags: [Tag]?

        /// 创建者 Uin，CAM 鉴权 resource 由该字段组合而成。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createUin: UInt64?

        /// 描述用户创建订阅时选择的过滤策略：
        /// FilterType = 1表示用户使用 FilterTag 标签过滤;
        /// FilterType = 2表示用户使用 BindingKey 过滤。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let filterType: UInt64?

        /// 主题名称。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let topicName: String?

        /// 最后一次修改主题属性的时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let lastModifyTime: UInt64?

        /// 消息在主题中最长存活时间，从发送到该主题开始经过此参数指定的时间后，不论消息是否被成功推送给用户都将被删除，单位为秒。固定为一天（86400秒），该属性不能修改。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msgRetentionSeconds: UInt64?

        /// 每秒钟发布消息的条数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let qps: UInt64?

        /// 主题的创建时间。返回 Unix 时间戳，精确到秒。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: UInt64?

        /// 是否迁移到新版本。0 表示未迁移，1 表示迁移中，2 表示已经迁移完毕，3 表示回切状态，曾经迁移过，4 未知状态。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let migrate: Int64?

        enum CodingKeys: String, CodingKey {
            case msgCount = "MsgCount"
            case topicId = "TopicId"
            case maxMsgSize = "MaxMsgSize"
            case trace = "Trace"
            case tags = "Tags"
            case createUin = "CreateUin"
            case filterType = "FilterType"
            case topicName = "TopicName"
            case lastModifyTime = "LastModifyTime"
            case msgRetentionSeconds = "MsgRetentionSeconds"
            case qps = "Qps"
            case createTime = "CreateTime"
            case migrate = "Migrate"
        }
    }

    /// 事务消息策略
    public struct TransactionPolicy: TCOutputModel {
        /// 最大查询次数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let maxQueryCount: UInt64?

        /// 第一次回查时间。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let firstQueryInterval: UInt64?

        enum CodingKeys: String, CodingKey {
            case maxQueryCount = "MaxQueryCount"
            case firstQueryInterval = "FirstQueryInterval"
        }
    }
}
