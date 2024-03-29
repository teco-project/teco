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

extension Cwp {
    /// DescribeExportMachines请求参数结构体
    public struct DescribeExportMachinesRequest: TCRequest {
        /// 云主机类型。
        /// - CVM：表示虚拟主机
        /// - BM:  表示黑石物理机
        public let machineType: String

        /// 机器所属地域。如：ap-guangzhou，ap-shanghai
        public let machineRegion: String

        /// 返回数量，默认为10，最大值为100。
        public let limit: UInt64?

        /// 偏移量，默认为0。
        public let offset: UInt64?

        /// 过滤条件。
        /// - Keywords - String - 是否必填：否 - 查询关键字
        /// - Status - String - 是否必填：否 - 客户端在线状态（OFFLINE: 离线 | ONLINE: 在线 | UNINSTALLED：未安装）
        /// - Version - String  是否必填：否 - 当前防护版本（ PRO_VERSION：专业版 | BASIC_VERSION：基础版）
        ///
        /// 每个过滤条件只支持一个值，暂不支持多个值“或”关系查询
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
    }

    /// DescribeExportMachines返回参数结构体
    public struct DescribeExportMachinesResponse: TCResponse {
        /// 任务ID,需要到接口“异步导出任务”ExportTasks获取DownloadUrl下载地址
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 导出区域主机列表
    ///
    /// 本接口 (DescribeExportMachines) 用于导出区域主机列表。
    @inlinable
    public func describeExportMachines(_ input: DescribeExportMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportMachinesResponse> {
        self.client.execute(action: "DescribeExportMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 导出区域主机列表
    ///
    /// 本接口 (DescribeExportMachines) 用于导出区域主机列表。
    @inlinable
    public func describeExportMachines(_ input: DescribeExportMachinesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportMachinesResponse {
        try await self.client.execute(action: "DescribeExportMachines", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 导出区域主机列表
    ///
    /// 本接口 (DescribeExportMachines) 用于导出区域主机列表。
    @inlinable
    public func describeExportMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, projectIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeExportMachinesResponse> {
        self.describeExportMachines(.init(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters, projectIds: projectIds), region: region, logger: logger, on: eventLoop)
    }

    /// 导出区域主机列表
    ///
    /// 本接口 (DescribeExportMachines) 用于导出区域主机列表。
    @inlinable
    public func describeExportMachines(machineType: String, machineRegion: String, limit: UInt64? = nil, offset: UInt64? = nil, filters: [Filter]? = nil, projectIds: [UInt64]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeExportMachinesResponse {
        try await self.describeExportMachines(.init(machineType: machineType, machineRegion: machineRegion, limit: limit, offset: offset, filters: filters, projectIds: projectIds), region: region, logger: logger, on: eventLoop)
    }
}
