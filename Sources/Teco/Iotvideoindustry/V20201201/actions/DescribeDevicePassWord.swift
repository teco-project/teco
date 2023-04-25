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

extension Iotvideoindustry {
    /// DescribeDevicePassWord请求参数结构体
    public struct DescribeDevicePassWordRequest: TCRequestModel {
        /// 设备唯一标识
        public let deviceId: String

        public init(deviceId: String) {
            self.deviceId = deviceId
        }

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
        }
    }

    /// DescribeDevicePassWord返回参数结构体
    public struct DescribeDevicePassWordResponse: TCResponseModel {
        /// 设备密码
        public let passWord: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case passWord = "PassWord"
            case requestId = "RequestId"
        }
    }

    /// 查询设备密码
    ///
    /// 本接口(DescribeDevicePassWord)用于查询设备密码。
    @inlinable
    public func describeDevicePassWord(_ input: DescribeDevicePassWordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePassWordResponse> {
        self.client.execute(action: "DescribeDevicePassWord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询设备密码
    ///
    /// 本接口(DescribeDevicePassWord)用于查询设备密码。
    @inlinable
    public func describeDevicePassWord(_ input: DescribeDevicePassWordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePassWordResponse {
        try await self.client.execute(action: "DescribeDevicePassWord", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询设备密码
    ///
    /// 本接口(DescribeDevicePassWord)用于查询设备密码。
    @inlinable
    public func describeDevicePassWord(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePassWordResponse> {
        self.describeDevicePassWord(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询设备密码
    ///
    /// 本接口(DescribeDevicePassWord)用于查询设备密码。
    @inlinable
    public func describeDevicePassWord(deviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePassWordResponse {
        try await self.describeDevicePassWord(.init(deviceId: deviceId), region: region, logger: logger, on: eventLoop)
    }
}
