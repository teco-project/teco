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

extension Cls {
    /// DescribeMachineGroupConfigs请求参数结构体
    public struct DescribeMachineGroupConfigsRequest: TCRequest {
        /// 机器组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeMachineGroupConfigs返回参数结构体
    public struct DescribeMachineGroupConfigsResponse: TCResponse {
        /// 采集规则配置列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let configs: [ConfigInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case configs = "Configs"
            case requestId = "RequestId"
        }
    }

    /// 获取机器组绑定的采集规则配置
    @inlinable
    public func describeMachineGroupConfigs(_ input: DescribeMachineGroupConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupConfigsResponse> {
        self.client.execute(action: "DescribeMachineGroupConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器组绑定的采集规则配置
    @inlinable
    public func describeMachineGroupConfigs(_ input: DescribeMachineGroupConfigsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupConfigsResponse {
        try await self.client.execute(action: "DescribeMachineGroupConfigs", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器组绑定的采集规则配置
    @inlinable
    public func describeMachineGroupConfigs(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineGroupConfigsResponse> {
        self.describeMachineGroupConfigs(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器组绑定的采集规则配置
    @inlinable
    public func describeMachineGroupConfigs(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineGroupConfigsResponse {
        try await self.describeMachineGroupConfigs(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
