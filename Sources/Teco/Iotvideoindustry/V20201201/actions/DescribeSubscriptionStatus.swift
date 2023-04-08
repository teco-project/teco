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
    /// DescribeSubscriptionStatus请求参数结构体
    public struct DescribeSubscriptionStatusRequest: TCRequestModel {
        /// 设备ID
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// DescribeSubscriptionStatus返回参数结构体
    public struct DescribeSubscriptionStatusResponse: TCResponseModel {
        /// 设备GB28181报警订阅状态 1：未开启订阅；2：已开启订阅
        public let alarmStatus: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alarmStatus = "AlarmStatus"
            case requestId = "RequestId"
        }
    }

    /// 查询主设备订阅状态
    @inlinable
    public func describeSubscriptionStatus(_ input: DescribeSubscriptionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionStatusResponse> {
        self.client.execute(action: "DescribeSubscriptionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询主设备订阅状态
    @inlinable
    public func describeSubscriptionStatus(_ input: DescribeSubscriptionStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionStatusResponse {
        try await self.client.execute(action: "DescribeSubscriptionStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询主设备订阅状态
    @inlinable
    public func describeSubscriptionStatus(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSubscriptionStatusResponse> {
        self.describeSubscriptionStatus(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询主设备订阅状态
    @inlinable
    public func describeSubscriptionStatus(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSubscriptionStatusResponse {
        try await self.describeSubscriptionStatus(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
