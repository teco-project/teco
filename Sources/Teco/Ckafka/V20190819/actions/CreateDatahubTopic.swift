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
    /// CreateDatahubTopic请求参数结构体
    public struct CreateDatahubTopicRequest: TCRequest {
        /// 名称，是一个不超过 128 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let name: String

        /// Partition个数，大于0
        public let partitionNum: Int64

        /// 消息保留时间，单位ms，当前最小值为60000ms
        public let retentionMs: Int64

        /// 主题备注，是一个不超过 64 个字符的字符串，必须以字母为首字符，剩余部分可以包含字母、数字和横划线(-)
        public let note: String?

        /// 标签列表
        public let tags: [Tag]?

        public init(name: String, partitionNum: Int64, retentionMs: Int64, note: String? = nil, tags: [Tag]? = nil) {
            self.name = name
            self.partitionNum = partitionNum
            self.retentionMs = retentionMs
            self.note = note
            self.tags = tags
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case partitionNum = "PartitionNum"
            case retentionMs = "RetentionMs"
            case note = "Note"
            case tags = "Tags"
        }
    }

    /// CreateDatahubTopic返回参数结构体
    public struct CreateDatahubTopicResponse: TCResponse {
        /// 返回创建结果
        public let result: DatahubTopicResp

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 创建Datahub主题
    @inlinable
    public func createDatahubTopic(_ input: CreateDatahubTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatahubTopicResponse> {
        self.client.execute(action: "CreateDatahubTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建Datahub主题
    @inlinable
    public func createDatahubTopic(_ input: CreateDatahubTopicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatahubTopicResponse {
        try await self.client.execute(action: "CreateDatahubTopic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建Datahub主题
    @inlinable
    public func createDatahubTopic(name: String, partitionNum: Int64, retentionMs: Int64, note: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDatahubTopicResponse> {
        self.createDatahubTopic(.init(name: name, partitionNum: partitionNum, retentionMs: retentionMs, note: note, tags: tags), region: region, logger: logger, on: eventLoop)
    }

    /// 创建Datahub主题
    @inlinable
    public func createDatahubTopic(name: String, partitionNum: Int64, retentionMs: Int64, note: String? = nil, tags: [Tag]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDatahubTopicResponse {
        try await self.createDatahubTopic(.init(name: name, partitionNum: partitionNum, retentionMs: retentionMs, note: note, tags: tags), region: region, logger: logger, on: eventLoop)
    }
}
