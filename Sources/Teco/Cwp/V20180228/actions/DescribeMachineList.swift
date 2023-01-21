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

extension Cwp {
    /// DescribeMachineList请求参数结构体
    public struct DescribeMachineListRequest: TCRequestModel {
        /// 云主机类型。
        /// <li>CVM：表示虚拟主机</li>
        /// <li>BM:  表示黑石物理机</li>
        /// <li>ECM:  表示边缘计算服务器</li>
        /// <li>LH:  表示轻量应用服务器</li>
        /// <li>Other:  表示混合云机器</li>
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
        public let filters: [AssetFilters]?

        public init(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil) {
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

    /// DescribeMachineList返回参数结构体
    public struct DescribeMachineListResponse: TCResponseModel {
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

    /// 网页防篡改获取区域主机列表
    ///
    /// 用于网页防篡改获取区域主机列表。
    @inlinable
    public func describeMachineList(_ input: DescribeMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineListResponse> {
        self.client.execute(action: "DescribeMachineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网页防篡改获取区域主机列表
    ///
    /// 用于网页防篡改获取区域主机列表。
    @inlinable
    public func describeMachineList(_ input: DescribeMachineListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineListResponse {
        try await self.client.execute(action: "DescribeMachineList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网页防篡改获取区域主机列表
    ///
    /// 用于网页防篡改获取区域主机列表。
    @inlinable
    public func describeMachineList(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeMachineListResponse> {
        self.describeMachineList(DescribeMachineListRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }

    /// 网页防篡改获取区域主机列表
    ///
    /// 用于网页防篡改获取区域主机列表。
    @inlinable
    public func describeMachineList(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [AssetFilters]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeMachineListResponse {
        try await self.describeMachineList(DescribeMachineListRequest(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters), region: region, logger: logger, on: eventLoop)
    }
}
