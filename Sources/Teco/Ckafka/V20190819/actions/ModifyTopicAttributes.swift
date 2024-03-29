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

extension Ckafka {
    /// ModifyTopicAttributes请求参数结构体
    public struct ModifyTopicAttributesRequest: TCRequest {
        /// 实例 ID。
        public let instanceId: String

        /// 主题名称。
        public let topicName: String

        /// 主题备注，是一个不超过64个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线-。
        public let note: String?

        /// IP 白名单开关，1：打开；0：关闭。
        public let enableWhiteList: Int64?

        /// 默认为1。
        public let minInsyncReplicas: Int64?

        /// 默认为 0，0：false；1：true。
        public let uncleanLeaderElectionEnable: Int64?

        /// 消息保留时间，单位：ms，当前最小值为60000ms。
        public let retentionMs: Int64?

        /// Segment 分片滚动的时长，单位：ms，当前最小为86400000ms。
        public let segmentMs: Int64?

        /// 主题消息最大值，单位为 Byte，最大值为12582912Byte（即12MB）。
        public let maxMessageBytes: Int64?

        /// 消息删除策略，可以选择delete 或者compact
        public let cleanUpPolicy: String?

        /// Ip白名单列表，配额限制，enableWhileList=1时必选
        public let ipWhiteList: [String]?

        /// 预设ACL规则, 1:打开  0:关闭，默认不打开
        public let enableAclRule: Int64?

        /// 预设ACL规则的名称
        public let aclRuleName: String?

        /// 可选, 保留文件大小. 默认为-1,单位bytes, 当前最小值为1048576B
        public let retentionBytes: Int64?

        /// 标签列表
        public let tags: [Tag]?

        /// 生产限流，单位 MB/s
        public let quotaProducerByteRate: Int64?

        /// 消费限流，单位 MB/s
        public let quotaConsumerByteRate: Int64?

        /// 调整topic副本数
        public let replicaNum: Int64?

        public init(instanceId: String, topicName: String, note: String? = nil, enableWhiteList: Int64? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, cleanUpPolicy: String? = nil, ipWhiteList: [String]? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil, quotaProducerByteRate: Int64? = nil, quotaConsumerByteRate: Int64? = nil, replicaNum: Int64? = nil) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.note = note
            self.enableWhiteList = enableWhiteList
            self.minInsyncReplicas = minInsyncReplicas
            self.uncleanLeaderElectionEnable = uncleanLeaderElectionEnable
            self.retentionMs = retentionMs
            self.segmentMs = segmentMs
            self.maxMessageBytes = maxMessageBytes
            self.cleanUpPolicy = cleanUpPolicy
            self.ipWhiteList = ipWhiteList
            self.enableAclRule = enableAclRule
            self.aclRuleName = aclRuleName
            self.retentionBytes = retentionBytes
            self.tags = tags
            self.quotaProducerByteRate = quotaProducerByteRate
            self.quotaConsumerByteRate = quotaConsumerByteRate
            self.replicaNum = replicaNum
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case note = "Note"
            case enableWhiteList = "EnableWhiteList"
            case minInsyncReplicas = "MinInsyncReplicas"
            case uncleanLeaderElectionEnable = "UncleanLeaderElectionEnable"
            case retentionMs = "RetentionMs"
            case segmentMs = "SegmentMs"
            case maxMessageBytes = "MaxMessageBytes"
            case cleanUpPolicy = "CleanUpPolicy"
            case ipWhiteList = "IpWhiteList"
            case enableAclRule = "EnableAclRule"
            case aclRuleName = "AclRuleName"
            case retentionBytes = "RetentionBytes"
            case tags = "Tags"
            case quotaProducerByteRate = "QuotaProducerByteRate"
            case quotaConsumerByteRate = "QuotaConsumerByteRate"
            case replicaNum = "ReplicaNum"
        }
    }

    /// ModifyTopicAttributes返回参数结构体
    public struct ModifyTopicAttributesResponse: TCResponse {
        /// 返回结果集
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 设置主题属性
    ///
    /// 本接口用于修改主题属性。
    @inlinable
    public func modifyTopicAttributes(_ input: ModifyTopicAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicAttributesResponse> {
        self.client.execute(action: "ModifyTopicAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置主题属性
    ///
    /// 本接口用于修改主题属性。
    @inlinable
    public func modifyTopicAttributes(_ input: ModifyTopicAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicAttributesResponse {
        try await self.client.execute(action: "ModifyTopicAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置主题属性
    ///
    /// 本接口用于修改主题属性。
    @inlinable
    public func modifyTopicAttributes(instanceId: String, topicName: String, note: String? = nil, enableWhiteList: Int64? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, cleanUpPolicy: String? = nil, ipWhiteList: [String]? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil, quotaProducerByteRate: Int64? = nil, quotaConsumerByteRate: Int64? = nil, replicaNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyTopicAttributesResponse> {
        self.modifyTopicAttributes(.init(instanceId: instanceId, topicName: topicName, note: note, enableWhiteList: enableWhiteList, minInsyncReplicas: minInsyncReplicas, uncleanLeaderElectionEnable: uncleanLeaderElectionEnable, retentionMs: retentionMs, segmentMs: segmentMs, maxMessageBytes: maxMessageBytes, cleanUpPolicy: cleanUpPolicy, ipWhiteList: ipWhiteList, enableAclRule: enableAclRule, aclRuleName: aclRuleName, retentionBytes: retentionBytes, tags: tags, quotaProducerByteRate: quotaProducerByteRate, quotaConsumerByteRate: quotaConsumerByteRate, replicaNum: replicaNum), region: region, logger: logger, on: eventLoop)
    }

    /// 设置主题属性
    ///
    /// 本接口用于修改主题属性。
    @inlinable
    public func modifyTopicAttributes(instanceId: String, topicName: String, note: String? = nil, enableWhiteList: Int64? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, cleanUpPolicy: String? = nil, ipWhiteList: [String]? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil, quotaProducerByteRate: Int64? = nil, quotaConsumerByteRate: Int64? = nil, replicaNum: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyTopicAttributesResponse {
        try await self.modifyTopicAttributes(.init(instanceId: instanceId, topicName: topicName, note: note, enableWhiteList: enableWhiteList, minInsyncReplicas: minInsyncReplicas, uncleanLeaderElectionEnable: uncleanLeaderElectionEnable, retentionMs: retentionMs, segmentMs: segmentMs, maxMessageBytes: maxMessageBytes, cleanUpPolicy: cleanUpPolicy, ipWhiteList: ipWhiteList, enableAclRule: enableAclRule, aclRuleName: aclRuleName, retentionBytes: retentionBytes, tags: tags, quotaProducerByteRate: quotaProducerByteRate, quotaConsumerByteRate: quotaConsumerByteRate, replicaNum: replicaNum), region: region, logger: logger, on: eventLoop)
    }
}
