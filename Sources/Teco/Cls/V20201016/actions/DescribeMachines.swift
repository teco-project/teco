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

extension Cls {
    /// DescribeMachines请求参数结构体
    public struct DescribeMachinesRequest: TCRequestModel {
        /// 查询的机器组ID
        public let groupId: String

        public init(groupId: String) {
            self.groupId = groupId
        }

        enum CodingKeys: String, CodingKey {
            case groupId = "GroupId"
        }
    }

    /// DescribeMachines返回参数结构体
    public struct DescribeMachinesResponse: TCResponseModel {
        /// 机器状态信息组
        public let machines: [MachineInfo]

        /// 机器组是否开启自动升级功能
        public let autoUpdate: Int64

        /// 机器组自动升级功能预设开始时间
        public let updateStartTime: String

        /// 机器组自动升级功能预设结束时间
        public let updateEndTime: String

        /// 当前用户可用最新的Loglistener版本
        public let latestAgentVersion: String

        /// 是否开启服务日志
        public let serviceLogging: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machines = "Machines"
            case autoUpdate = "AutoUpdate"
            case updateStartTime = "UpdateStartTime"
            case updateEndTime = "UpdateEndTime"
            case latestAgentVersion = "LatestAgentVersion"
            case serviceLogging = "ServiceLogging"
            case requestId = "RequestId"
        }
    }

    /// 获取机器状态
    ///
    /// 获取制定机器组下的机器状态
    @inlinable
    public func describeMachines(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachinesResponse> {
        self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取机器状态
    ///
    /// 获取制定机器组下的机器状态
    @inlinable
    public func describeMachines(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachinesResponse {
        try await self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取机器状态
    ///
    /// 获取制定机器组下的机器状态
    @inlinable
    public func describeMachines(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachinesResponse> {
        self.describeMachines(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取机器状态
    ///
    /// 获取制定机器组下的机器状态
    @inlinable
    public func describeMachines(groupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachinesResponse {
        try await self.describeMachines(.init(groupId: groupId), region: region, logger: logger, on: eventLoop)
    }
}
