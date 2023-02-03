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

extension Iotvideoindustry {
    /// DescribeDeviceMonitorData请求参数结构体
    public struct DescribeDeviceMonitorDataRequest: TCRequestModel {
        /// 开始时间戳
        public let startTime: Int64

        /// 结束时间戳
        public let endTime: Int64

        /// 类型 支持 OnlineChannels/OnlineDevices/RecordingChannels
        public let type: String

        /// 时间粒度 目前只支持 1h
        public let timesSpec: String

        public init(startTime: Int64, endTime: Int64, type: String, timesSpec: String) {
            self.startTime = startTime
            self.endTime = endTime
            self.type = type
            self.timesSpec = timesSpec
        }

        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case endTime = "EndTime"
            case type = "Type"
            case timesSpec = "TimesSpec"
        }
    }

    /// DescribeDeviceMonitorData返回参数结构体
    public struct DescribeDeviceMonitorDataResponse: TCResponseModel {
        /// 查询设备统计monitor信息列表
        public let data: [DeviceMonitorValue]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询设备统计monitor信息
    @inlinable
    public func describeDeviceMonitorData(_ input: DescribeDeviceMonitorDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceMonitorDataResponse> {
        self.client.execute(action: "DescribeDeviceMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备统计monitor信息
    @inlinable
    public func describeDeviceMonitorData(_ input: DescribeDeviceMonitorDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceMonitorDataResponse {
        try await self.client.execute(action: "DescribeDeviceMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备统计monitor信息
    @inlinable
    public func describeDeviceMonitorData(startTime: Int64, endTime: Int64, type: String, timesSpec: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDeviceMonitorDataResponse> {
        let input = DescribeDeviceMonitorDataRequest(startTime: startTime, endTime: endTime, type: type, timesSpec: timesSpec)
        return self.client.execute(action: "DescribeDeviceMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备统计monitor信息
    @inlinable
    public func describeDeviceMonitorData(startTime: Int64, endTime: Int64, type: String, timesSpec: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeviceMonitorDataResponse {
        let input = DescribeDeviceMonitorDataRequest(startTime: startTime, endTime: endTime, type: type, timesSpec: timesSpec)
        return try await self.client.execute(action: "DescribeDeviceMonitorData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
