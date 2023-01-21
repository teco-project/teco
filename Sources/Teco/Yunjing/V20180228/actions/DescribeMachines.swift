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

extension Yunjing {
    /// DescribeMachines请求参数结构体
    public struct DescribeMachinesRequest: TCRequestModel {
        /// 云主机类型。
        /// <li>CVM：表示虚拟主机</li>
        /// <li>BM:  表示黑石物理机</li>
        public let machineType: String

        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Keywords - String - 是否必填：否 - 查询关键字 </li>
        /// <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装）</li>
        /// <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）</li>
        /// 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        public let filters: [Filter]?

        public init(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil) {
            self.machineType = machineType
            self.machineRegion = machineRegion
            self.limit = limit
            self.offset = offset
            self.filters = filters
        }

        enum CodingKeys: String, CodingKey {
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
        }
    }

    /// DescribeMachines返回参数结构体
    public struct DescribeMachinesResponse: TCResponseModel {
        /// 主机列表
        public let machines: [Machine]

        /// 主机数量
        public let totalCount: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case machines = "Machines"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachines(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachinesResponse> {
        self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachines(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachinesResponse {
        try await self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachinesResponse> {
        self.describeMachines(DescribeMachinesRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachinesResponse {
        try await self.describeMachines(DescribeMachinesRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
