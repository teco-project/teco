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

import TecoCore

extension Iotvideoindustry {
    /// DescribeCurrentDeviceData请求参数结构体
    public struct DescribeCurrentDeviceDataRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeCurrentDeviceData返回参数结构体
    public struct DescribeCurrentDeviceDataResponse: TCResponseModel {
        /// 通道数
        public let channels: Int64

        /// 设备数
        public let devices: Int64

        /// 在线通道数
        public let onlineChannels: Int64

        /// 在线设备数
        public let onlineDevices: Int64

        /// 正在录制通道数
        public let recordingChannels: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case channels = "Channels"
            case devices = "Devices"
            case onlineChannels = "OnlineChannels"
            case onlineDevices = "OnlineDevices"
            case recordingChannels = "RecordingChannels"
            case requestId = "RequestId"
        }
    }

    /// 查询设备统计当前信息
    @inlinable
    public func describeCurrentDeviceData(_ input: DescribeCurrentDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentDeviceDataResponse> {
        self.client.execute(action: "DescribeCurrentDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备统计当前信息
    @inlinable
    public func describeCurrentDeviceData(_ input: DescribeCurrentDeviceDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentDeviceDataResponse {
        try await self.client.execute(action: "DescribeCurrentDeviceData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备统计当前信息
    @inlinable
    public func describeCurrentDeviceData(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCurrentDeviceDataResponse> {
        self.describeCurrentDeviceData(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备统计当前信息
    @inlinable
    public func describeCurrentDeviceData(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCurrentDeviceDataResponse {
        try await self.describeCurrentDeviceData(.init(), region: region, logger: logger, on: eventLoop)
    }
}
