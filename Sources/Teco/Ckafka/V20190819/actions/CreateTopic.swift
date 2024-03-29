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
    /// CreateTopic请求参数结构体
    public struct CreateTopicRequest: TCRequest {
        /// 实例Id
        public let instanceId: String

        /// 主题名称，是一个不超过 128 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let topicName: String

        /// Partition个数，大于0
        public let partitionNum: Int64

        /// 副本个数，不能多于 broker 数，最大为3
        public let replicaNum: Int64

        /// ip白名单开关, 1:打开  0:关闭，默认不打开
        public let enableWhiteList: Int64?

        /// Ip白名单列表，配额限制，enableWhileList=1时必选
        public let ipWhiteList: [String]?

        /// 清理日志策略，日志清理模式，默认为"delete"。"delete"：日志按保存时间删除，"compact"：日志按 key 压缩，"compact, delete"：日志按 key 压缩且会按保存时间删除。
        public let cleanUpPolicy: String?

        /// 主题备注，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let note: String?

        /// 默认为1
        public let minInsyncReplicas: Int64?

        /// 是否允许未同步的副本选为leader，false:不允许，true:允许，默认不允许
        public let uncleanLeaderElectionEnable: Int64?

        /// 可选参数。消息保留时间，单位ms，当前最小值为60000ms
        public let retentionMs: Int64?

        /// Segment分片滚动的时长，单位ms，当前最小为3600000ms
        public let segmentMs: Int64?

        /// 主题消息最大值，单位为 Byte，最小值1024Byte(即1KB)，最大值为8388608Byte（即8MB）。
        public let maxMessageBytes: Int64?

        /// 预设ACL规则, 1:打开  0:关闭，默认不打开
        public let enableAclRule: Int64?

        /// 预设ACL规则的名称
        public let aclRuleName: String?

        /// 可选, 保留文件大小. 默认为-1,单位bytes, 当前最小值为1048576B
        public let retentionBytes: Int64?

        /// 标签列表
        public let tags: [Tag]?

        public init(instanceId: String, topicName: String, partitionNum: Int64, replicaNum: Int64, enableWhiteList: Int64? = nil, ipWhiteList: [String]? = nil, cleanUpPolicy: String? = nil, note: String? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil) {
            self.instanceId = instanceId
            self.topicName = topicName
            self.partitionNum = partitionNum
            self.replicaNum = replicaNum
            self.enableWhiteList = enableWhiteList
            self.ipWhiteList = ipWhiteList
            self.cleanUpPolicy = cleanUpPolicy
            self.note = note
            self.minInsyncReplicas = minInsyncReplicas
            self.uncleanLeaderElectionEnable = uncleanLeaderElectionEnable
            self.retentionMs = retentionMs
            self.segmentMs = segmentMs
            self.maxMessageBytes = maxMessageBytes
            self.enableAclRule = enableAclRule
            self.aclRuleName = aclRuleName
            self.retentionBytes = retentionBytes
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case topicName = "TopicName"
            case partitionNum = "PartitionNum"
            case replicaNum = "ReplicaNum"
            case enableWhiteList = "EnableWhiteList"
            case ipWhiteList = "IpWhiteList"
            case cleanUpPolicy = "CleanUpPolicy"
            case note = "Note"
            case minInsyncReplicas = "MinInsyncReplicas"
            case uncleanLeaderElectionEnable = "UncleanLeaderElectionEnable"
            case retentionMs = "RetentionMs"
            case segmentMs = "SegmentMs"
            case maxMessageBytes = "MaxMessageBytes"
            case enableAclRule = "EnableAclRule"
            case aclRuleName = "AclRuleName"
            case retentionBytes = "RetentionBytes"
            case tags = "Tags"
        }
    }

    /// CreateTopic返回参数结构体
    public struct CreateTopicResponse: TCResponse {
        /// 返回创建结果
        public let result: CreateTopicResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建主题
    ///
    /// 创建ckafka主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建主题
    ///
    /// 创建ckafka主题
    @inlinable
    public func createTopic(_ input: CreateTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.client.execute(action: "CreateTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建主题
    ///
    /// 创建ckafka主题
    @inlinable
    public func createTopic(instanceId: String, topicName: String, partitionNum: Int64, replicaNum: Int64, enableWhiteList: Int64? = nil, ipWhiteList: [String]? = nil, cleanUpPolicy: String? = nil, note: String? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTopicResponse> {
        self.createTopic(.init(instanceId: instanceId, topicName: topicName, partitionNum: partitionNum, replicaNum: replicaNum, enableWhiteList: enableWhiteList, ipWhiteList: ipWhiteList, cleanUpPolicy: cleanUpPolicy, note: note, minInsyncReplicas: minInsyncReplicas, uncleanLeaderElectionEnable: uncleanLeaderElectionEnable, retentionMs: retentionMs, segmentMs: segmentMs, maxMessageBytes: maxMessageBytes, enableAclRule: enableAclRule, aclRuleName: aclRuleName, retentionBytes: retentionBytes, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建主题
    ///
    /// 创建ckafka主题
    @inlinable
    public func createTopic(instanceId: String, topicName: String, partitionNum: Int64, replicaNum: Int64, enableWhiteList: Int64? = nil, ipWhiteList: [String]? = nil, cleanUpPolicy: String? = nil, note: String? = nil, minInsyncReplicas: Int64? = nil, uncleanLeaderElectionEnable: Int64? = nil, retentionMs: Int64? = nil, segmentMs: Int64? = nil, maxMessageBytes: Int64? = nil, enableAclRule: Int64? = nil, aclRuleName: String? = nil, retentionBytes: Int64? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTopicResponse {
        try await self.createTopic(.init(instanceId: instanceId, topicName: topicName, partitionNum: partitionNum, replicaNum: replicaNum, enableWhiteList: enableWhiteList, ipWhiteList: ipWhiteList, cleanUpPolicy: cleanUpPolicy, note: note, minInsyncReplicas: minInsyncReplicas, uncleanLeaderElectionEnable: uncleanLeaderElectionEnable, retentionMs: retentionMs, segmentMs: segmentMs, maxMessageBytes: maxMessageBytes, enableAclRule: enableAclRule, aclRuleName: aclRuleName, retentionBytes: retentionBytes, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
