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

extension Postgres {
    /// ModifyReadOnlyGroupConfig请求参数结构体
    public struct ModifyReadOnlyGroupConfigRequest: TCRequest {
        /// 只读组ID
        public let readOnlyGroupId: String

        /// 只读组名称
        public let readOnlyGroupName: String?

        /// 延迟时间配置开关：0关、1开
        public let replayLagEliminate: UInt64?

        /// 延迟日志大小配置开关：0关、1开
        public let replayLatencyEliminate: UInt64?

        /// 延迟日志大小阈值，单位MB
        public let maxReplayLatency: UInt64?

        /// 延迟时间大小阈值，单位ms
        public let maxReplayLag: UInt64?

        /// 自动负载均衡开关：0关、1开
        public let rebalance: UInt64?

        /// 延迟剔除最小保留实例数
        public let minDelayEliminateReserve: UInt64?

        public init(readOnlyGroupId: String, readOnlyGroupName: String? = nil, replayLagEliminate: UInt64? = nil, replayLatencyEliminate: UInt64? = nil, maxReplayLatency: UInt64? = nil, maxReplayLag: UInt64? = nil, rebalance: UInt64? = nil, minDelayEliminateReserve: UInt64? = nil) {
            self.readOnlyGroupId = readOnlyGroupId
            self.readOnlyGroupName = readOnlyGroupName
            self.replayLagEliminate = replayLagEliminate
            self.replayLatencyEliminate = replayLatencyEliminate
            self.maxReplayLatency = maxReplayLatency
            self.maxReplayLag = maxReplayLag
            self.rebalance = rebalance
            self.minDelayEliminateReserve = minDelayEliminateReserve
        }

        enum CodingKeys: String, CodingKey {
            case readOnlyGroupId = "ReadOnlyGroupId"
            case readOnlyGroupName = "ReadOnlyGroupName"
            case replayLagEliminate = "ReplayLagEliminate"
            case replayLatencyEliminate = "ReplayLatencyEliminate"
            case maxReplayLatency = "MaxReplayLatency"
            case maxReplayLag = "MaxReplayLag"
            case rebalance = "Rebalance"
            case minDelayEliminateReserve = "MinDelayEliminateReserve"
        }
    }

    /// ModifyReadOnlyGroupConfig返回参数结构体
    public struct ModifyReadOnlyGroupConfigResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改只读组配置
    ///
    /// 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息
    @inlinable @discardableResult
    public func modifyReadOnlyGroupConfig(_ input: ModifyReadOnlyGroupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReadOnlyGroupConfigResponse> {
        self.client.execute(action: "ModifyReadOnlyGroupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改只读组配置
    ///
    /// 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息
    @inlinable @discardableResult
    public func modifyReadOnlyGroupConfig(_ input: ModifyReadOnlyGroupConfigRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReadOnlyGroupConfigResponse {
        try await self.client.execute(action: "ModifyReadOnlyGroupConfig", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改只读组配置
    ///
    /// 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息
    @inlinable @discardableResult
    public func modifyReadOnlyGroupConfig(readOnlyGroupId: String, readOnlyGroupName: String? = nil, replayLagEliminate: UInt64? = nil, replayLatencyEliminate: UInt64? = nil, maxReplayLatency: UInt64? = nil, maxReplayLag: UInt64? = nil, rebalance: UInt64? = nil, minDelayEliminateReserve: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReadOnlyGroupConfigResponse> {
        self.modifyReadOnlyGroupConfig(.init(readOnlyGroupId: readOnlyGroupId, readOnlyGroupName: readOnlyGroupName, replayLagEliminate: replayLagEliminate, replayLatencyEliminate: replayLatencyEliminate, maxReplayLatency: maxReplayLatency, maxReplayLag: maxReplayLag, rebalance: rebalance, minDelayEliminateReserve: minDelayEliminateReserve), region: region, logger: logger, on: eventLoop)
    }

    /// 修改只读组配置
    ///
    /// 本接口(ModifyReadOnlyGroupConfig)用于更新只读组配置信息
    @inlinable @discardableResult
    public func modifyReadOnlyGroupConfig(readOnlyGroupId: String, readOnlyGroupName: String? = nil, replayLagEliminate: UInt64? = nil, replayLatencyEliminate: UInt64? = nil, maxReplayLatency: UInt64? = nil, maxReplayLag: UInt64? = nil, rebalance: UInt64? = nil, minDelayEliminateReserve: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReadOnlyGroupConfigResponse {
        try await self.modifyReadOnlyGroupConfig(.init(readOnlyGroupId: readOnlyGroupId, readOnlyGroupName: readOnlyGroupName, replayLagEliminate: replayLagEliminate, replayLatencyEliminate: replayLatencyEliminate, maxReplayLatency: maxReplayLatency, maxReplayLag: maxReplayLag, rebalance: rebalance, minDelayEliminateReserve: minDelayEliminateReserve), region: region, logger: logger, on: eventLoop)
    }
}
