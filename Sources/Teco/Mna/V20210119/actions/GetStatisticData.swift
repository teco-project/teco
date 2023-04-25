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

extension Mna {
    /// GetStatisticData请求参数结构体
    public struct GetStatisticDataRequest: TCRequestModel {
        /// 设备ID
        public let deviceId: String

        /// 统计开始时间，单位：s
        public let beginTime: Int64

        /// 统计结束时间，单位：s
        public let endTime: Int64

        /// 聚合粒度：
        /// 1:按小时统计
        /// 2:按天统计
        public let timeGranularity: Int64

        public init(deviceId: String, beginTime: Int64, endTime: Int64, timeGranularity: Int64) {
            self.deviceId = deviceId
            self.beginTime = beginTime
            self.endTime = endTime
            self.timeGranularity = timeGranularity
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case timeGranularity = "TimeGranularity"
        }
    }

    /// GetStatisticData返回参数结构体
    public struct GetStatisticDataResponse: TCResponseModel {
        /// 文件地址url
        public let filePath: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case filePath = "FilePath"
            case requestId = "RequestId"
        }
    }

    /// 下载用量统计数据
    ///
    /// 在用量统计页面下载流量数据
    @inlinable
    public func getStatisticData(_ input: GetStatisticDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStatisticDataResponse> {
        self.client.execute(action: "GetStatisticData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载用量统计数据
    ///
    /// 在用量统计页面下载流量数据
    @inlinable
    public func getStatisticData(_ input: GetStatisticDataRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStatisticDataResponse {
        try await self.client.execute(action: "GetStatisticData", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载用量统计数据
    ///
    /// 在用量统计页面下载流量数据
    @inlinable
    public func getStatisticData(deviceId: String, beginTime: Int64, endTime: Int64, timeGranularity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetStatisticDataResponse> {
        self.getStatisticData(.init(deviceId: deviceId, beginTime: beginTime, endTime: endTime, timeGranularity: timeGranularity), region: region, logger: logger, on: eventLoop)
    }

    /// 下载用量统计数据
    ///
    /// 在用量统计页面下载流量数据
    @inlinable
    public func getStatisticData(deviceId: String, beginTime: Int64, endTime: Int64, timeGranularity: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetStatisticDataResponse {
        try await self.getStatisticData(.init(deviceId: deviceId, beginTime: beginTime, endTime: endTime, timeGranularity: timeGranularity), region: region, logger: logger, on: eventLoop)
    }
}
