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

extension Cdb {
    /// DescribeDeviceMonitorInfo请求参数结构体
    public struct DescribeDeviceMonitorInfoRequest: TCRequestModel {
        /// 实例ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String

        /// 返回当天最近Count个5分钟粒度的监控数据。最小值1，最大值288，不传该参数默认返回当天所有5分钟粒度监控数据。
        public let count: UInt64?

        public init(instanceId: String, count: UInt64? = nil) {
            self.instanceId = instanceId
            self.count = count
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case count = "Count"
        }
    }

    /// DescribeDeviceMonitorInfo返回参数结构体
    public struct DescribeDeviceMonitorInfoResponse: TCResponseModel {
        /// 实例CPU监控数据
        public let cpu: DeviceCpuInfo

        /// 实例内存监控数据
        public let mem: DeviceMemInfo

        /// 实例网络监控数据
        public let net: DeviceNetInfo

        /// 实例磁盘监控数据
        public let disk: DeviceDiskInfo

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cpu = "Cpu"
            case mem = "Mem"
            case net = "Net"
            case disk = "Disk"
            case requestId = "RequestId"
        }
    }

    /// 物理机监控信息
    ///
    /// 本接口（DescribeDeviceMonitorInfo）用于查询云数据库物理机当天的监控信息，暂只支持内存488G、硬盘6T的实例查询。
    @inlinable
    public func describeDeviceMonitorInfo(_ input: DescribeDeviceMonitorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceMonitorInfoResponse> {
        self.client.execute(action: "DescribeDeviceMonitorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 物理机监控信息
    ///
    /// 本接口（DescribeDeviceMonitorInfo）用于查询云数据库物理机当天的监控信息，暂只支持内存488G、硬盘6T的实例查询。
    @inlinable
    public func describeDeviceMonitorInfo(_ input: DescribeDeviceMonitorInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceMonitorInfoResponse {
        try await self.client.execute(action: "DescribeDeviceMonitorInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 物理机监控信息
    ///
    /// 本接口（DescribeDeviceMonitorInfo）用于查询云数据库物理机当天的监控信息，暂只支持内存488G、硬盘6T的实例查询。
    @inlinable
    public func describeDeviceMonitorInfo(instanceId: String, count: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceMonitorInfoResponse> {
        self.describeDeviceMonitorInfo(.init(instanceId: instanceId, count: count), region: region, logger: logger, on: eventLoop)
    }

    /// 物理机监控信息
    ///
    /// 本接口（DescribeDeviceMonitorInfo）用于查询云数据库物理机当天的监控信息，暂只支持内存488G、硬盘6T的实例查询。
    @inlinable
    public func describeDeviceMonitorInfo(instanceId: String, count: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceMonitorInfoResponse {
        try await self.describeDeviceMonitorInfo(.init(instanceId: instanceId, count: count), region: region, logger: logger, on: eventLoop)
    }
}
