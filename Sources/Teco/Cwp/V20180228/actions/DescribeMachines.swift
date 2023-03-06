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

import TecoPaginationHelpers

extension Cwp {
    /// DescribeMachines请求参数结构体
    public struct DescribeMachinesRequest: TCPaginatedRequest {
        /// 机器所属专区类型
        /// CVM 云服务器
        /// BM 黑石
        /// ECM 边缘计算
        /// LH 轻量应用服务器
        /// Other 混合云专区
        public let machineType: String

        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// <li>Ips - String - 是否必填：否 - 通过ip查询 </li>
        /// <li>Names - String - 是否必填：否 - 通过实例名查询 </li>
        /// <li>InstanceIds - String - 是否必填：否 - 通过实例id查询 </li>
        /// <li>Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线/关机 | ONLINE: 在线 | UNINSTALLED：未安装 | AGENT_OFFLINE 离线| AGENT_SHUTDOWN 已关机）</li>
        /// <li>Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版 | Flagship : 旗舰版 | ProtectedMachines: 专业版+旗舰版）</li>
        /// <li>Risk - String 是否必填: 否 - 风险主机( yes ) </li>
        /// <li>Os -String 是否必填: 否 - 操作系统( DescribeMachineOsList 接口 值 )
        /// 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
        /// <li>Quuid - String - 是否必填: 否 - 云服务器uuid  最大100条.</li>
        /// <li>AddedOnTheFifteen- String 是否必填: 否 - 是否只查询15天内新增的主机( 1：是) </li>
        public let filters: [Filter]?

        /// 机器所属业务ID列表
        public let projectIds: [UInt64]?

        public init(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, projectIds: [UInt64]? = nil) {
            self.machineType = machineType
            self.machineRegion = machineRegion
            self.limit = limit
            self.offset = offset
            self.filters = filters
            self.projectIds = projectIds
        }

        enum CodingKeys: String, CodingKey {
            case machineType = "MachineType"
            case machineRegion = "MachineRegion"
            case limit = "Limit"
            case offset = "Offset"
            case filters = "Filters"
            case projectIds = "ProjectIds"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeMachinesResponse) -> DescribeMachinesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeMachinesRequest(machineType: self.machineType, machineRegion: self.machineRegion, limit: self.limit, offset: (self.offset ?? 0) + .init(response.getItems().count), filters: self.filters, projectIds: self.projectIds)
        }
    }

    /// DescribeMachines返回参数结构体
    public struct DescribeMachinesResponse: TCPaginatedResponse {
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

        /// Extract the returned item list from the paginated response.
        public func getItems() -> [Machine] {
            self.machines
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
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
    public func describeMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, projectIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachinesResponse> {
        let input = DescribeMachinesRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters, projectIds: projectIds)
        return self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, projectIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachinesResponse {
        let input = DescribeMachinesRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters, projectIds: projectIds)
        return try await self.client.execute(action: "DescribeMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable
    public func describeMachinesPaginated(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [Machine])> {
        self.client.paginate(input: input, region: region, command: self.describeMachines, logger: logger, on: eventLoop)
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    @inlinable @discardableResult
    public func describeMachinesPaginated(_ input: DescribeMachinesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeMachinesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeMachines, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取区域主机列表
    ///
    /// 本接口 (DescribeMachines) 用于获取区域主机列表。
    ///
    /// - Returns: `AsyncSequence`s of `Machine` and `DescribeMachinesResponse` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeMachinesPaginator(_ input: DescribeMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeMachinesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeMachines, logger: logger, on: eventLoop)
    }
}
