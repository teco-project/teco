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

import Logging
import NIOCore
import TecoCore

extension Ckafka {
    /// ModifyGroupOffsets请求参数结构体
    public struct ModifyGroupOffsetsRequest: TCRequestModel {
        /// kafka实例id
        public let instanceId: String

        /// kafka 消费分组
        public let group: String

        /// 重置offset的策略，入参含义 0. 对齐shift-by参数，代表把offset向前或向后移动shift条 1. 对齐参考(by-duration,to-datetime,to-earliest,to-latest),代表把offset移动到指定timestamp的位置 2. 对齐参考(to-offset)，代表把offset移动到指定的offset位置
        public let strategy: Int64

        /// 表示需要重置的topics， 不填表示全部
        public let topics: [String]?

        /// 当strategy为0时，必须包含该字段，可以大于零代表会把offset向后移动shift条，小于零则将offset向前回溯shift条数。正确重置后新的offset应该是(old_offset + shift)，需要注意的是如果新的offset小于partition的earliest则会设置为earliest，如果大于partition 的latest则会设置为latest
        public let shift: Int64?

        /// 单位ms。当strategy为1时，必须包含该字段，其中-2表示重置offset到最开始的位置，-1表示重置到最新的位置(相当于清空)，其它值则代表指定的时间，会获取topic中指定时间的offset然后进行重置，需要注意的时，如果指定的时间不存在消息，则获取最末尾的offset。
        public let shiftTimestamp: Int64?

        /// 需要重新设置的offset位置。当strategy为2，必须包含该字段。
        public let offset: Int64?

        /// 需要重新设置的partition的列表，如果没有指定Topics参数。则重置全部topics的对应的Partition列表里的partition。指定Topics时则重置指定的topic列表的对应的Partitions列表的partition。
        public let partitions: [Int64]?

        public init(instanceId: String, group: String, strategy: Int64, topics: [String]? = nil, shift: Int64? = nil, shiftTimestamp: Int64? = nil, offset: Int64? = nil, partitions: [Int64]? = nil) {
            self.instanceId = instanceId
            self.group = group
            self.strategy = strategy
            self.topics = topics
            self.shift = shift
            self.shiftTimestamp = shiftTimestamp
            self.offset = offset
            self.partitions = partitions
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case group = "Group"
            case strategy = "Strategy"
            case topics = "Topics"
            case shift = "Shift"
            case shiftTimestamp = "ShiftTimestamp"
            case offset = "Offset"
            case partitions = "Partitions"
        }
    }

    /// ModifyGroupOffsets返回参数结构体
    public struct ModifyGroupOffsetsResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 设置Groups 消费分组offset
    @inlinable
    public func modifyGroupOffsets(_ input: ModifyGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupOffsetsResponse> {
        self.client.execute(action: "ModifyGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置Groups 消费分组offset
    @inlinable
    public func modifyGroupOffsets(_ input: ModifyGroupOffsetsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupOffsetsResponse {
        try await self.client.execute(action: "ModifyGroupOffsets", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置Groups 消费分组offset
    @inlinable
    public func modifyGroupOffsets(instanceId: String, group: String, strategy: Int64, topics: [String]? = nil, shift: Int64? = nil, shiftTimestamp: Int64? = nil, offset: Int64? = nil, partitions: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyGroupOffsetsResponse> {
        self.modifyGroupOffsets(.init(instanceId: instanceId, group: group, strategy: strategy, topics: topics, shift: shift, shiftTimestamp: shiftTimestamp, offset: offset, partitions: partitions), region: region, logger: logger, on: eventLoop)
    }

    /// 设置Groups 消费分组offset
    @inlinable
    public func modifyGroupOffsets(instanceId: String, group: String, strategy: Int64, topics: [String]? = nil, shift: Int64? = nil, shiftTimestamp: Int64? = nil, offset: Int64? = nil, partitions: [Int64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGroupOffsetsResponse {
        try await self.modifyGroupOffsets(.init(instanceId: instanceId, group: group, strategy: strategy, topics: topics, shift: shift, shiftTimestamp: shiftTimestamp, offset: offset, partitions: partitions), region: region, logger: logger, on: eventLoop)
    }
}
