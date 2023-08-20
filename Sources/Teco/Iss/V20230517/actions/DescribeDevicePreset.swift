//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2023 the Teco project authors
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

extension Iss {
    /// DescribeDevicePreset请求参数结构体
    public struct DescribeDevicePresetRequest: TCRequest {
        /// 通道ID（从通道查询接口DescribeDeviceChannel中获取）
        public let channelId: String

        public init(channelId: String) {
            self.channelId = channelId
        }

        enum CodingKeys: String, CodingKey {
            case channelId = "ChannelId"
        }
    }

    /// DescribeDevicePreset返回参数结构体
    public struct DescribeDevicePresetResponse: TCResponse {
        /// 返回数据
        public let data: [DescribeDevicePresetData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 预置位查询
    ///
    /// 用于查询设备通道预置位信息。
    @inlinable
    public func describeDevicePreset(_ input: DescribeDevicePresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePresetResponse> {
        self.client.execute(action: "DescribeDevicePreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 预置位查询
    ///
    /// 用于查询设备通道预置位信息。
    @inlinable
    public func describeDevicePreset(_ input: DescribeDevicePresetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePresetResponse {
        try await self.client.execute(action: "DescribeDevicePreset", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 预置位查询
    ///
    /// 用于查询设备通道预置位信息。
    @inlinable
    public func describeDevicePreset(channelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePresetResponse> {
        self.describeDevicePreset(.init(channelId: channelId), region: region, logger: logger, on: eventLoop)
    }

    /// 预置位查询
    ///
    /// 用于查询设备通道预置位信息。
    @inlinable
    public func describeDevicePreset(channelId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePresetResponse {
        try await self.describeDevicePreset(.init(channelId: channelId), region: region, logger: logger, on: eventLoop)
    }
}
