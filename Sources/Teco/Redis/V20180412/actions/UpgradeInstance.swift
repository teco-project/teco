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

extension Redis {
    /// UpgradeInstance请求参数结构体
    public struct UpgradeInstanceRequest: TCRequestModel {
        /// 待变更实例 ID。
        public let instanceId: String

        /// 指实例每个分片内存变更后的大小。<ul><li>单位 MB。</li><li>每次只能修改参数MemSize、RedisShardNum和RedisReplicasNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li><li>缩容时，缩容后的规格务必要大于等于使用容量的1.3倍，否则将执行失败。</li></ul>
        public let memSize: UInt64

        /// 指实例变更后的分片数量。<ul><li>标准架构不需要配置该参数，集群架构为必填参数。</li><li>集群架构，每次只能修改参数RedisShardNum、MemSize和RedisReplicasNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li></ul>
        public let redisShardNum: UInt64?

        /// 指实例变更后的副本数量。<ul><li>每次只能修改参数RedisReplicasNum、MemSize和RedisShardNum其中的一个，不能同时修改。且修改其中一个参数时，其他两个参数需输入实例原有的配置规格。</li><li>多AZ实例修改副本时必须要传入NodeSet。</li></ul>
        public let redisReplicasNum: UInt64?

        /// 多AZ实例，增加副本时的附带信息，包括副本的可用区和副本的类型（NodeType为1）。非多AZ实例不需要配置该参数。
        public let nodeSet: [RedisNodeInfo]?

        public init(instanceId: String, memSize: UInt64, redisShardNum: UInt64? = nil, redisReplicasNum: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil) {
            self.instanceId = instanceId
            self.memSize = memSize
            self.redisShardNum = redisShardNum
            self.redisReplicasNum = redisReplicasNum
            self.nodeSet = nodeSet
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case memSize = "MemSize"
            case redisShardNum = "RedisShardNum"
            case redisReplicasNum = "RedisReplicasNum"
            case nodeSet = "NodeSet"
        }
    }

    /// UpgradeInstance返回参数结构体
    public struct UpgradeInstanceResponse: TCResponseModel {
        /// 订单ID。
        public let dealId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dealId = "DealId"
            case requestId = "RequestId"
        }
    }

    /// 变更实例配置
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeInstanceResponse> {
        self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 变更实例配置
    @inlinable
    public func upgradeInstance(_ input: UpgradeInstanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        try await self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 变更实例配置
    @inlinable
    public func upgradeInstance(instanceId: String, memSize: UInt64, redisShardNum: UInt64? = nil, redisReplicasNum: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpgradeInstanceResponse> {
        let input = UpgradeInstanceRequest(instanceId: instanceId, memSize: memSize, redisShardNum: redisShardNum, redisReplicasNum: redisReplicasNum, nodeSet: nodeSet)
        return self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 变更实例配置
    @inlinable
    public func upgradeInstance(instanceId: String, memSize: UInt64, redisShardNum: UInt64? = nil, redisReplicasNum: UInt64? = nil, nodeSet: [RedisNodeInfo]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpgradeInstanceResponse {
        let input = UpgradeInstanceRequest(instanceId: instanceId, memSize: memSize, redisShardNum: redisShardNum, redisReplicasNum: redisReplicasNum, nodeSet: nodeSet)
        return try await self.client.execute(action: "UpgradeInstance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
