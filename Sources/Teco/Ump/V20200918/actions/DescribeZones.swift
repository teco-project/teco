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

extension Ump {
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        public init(groupCode: String, mallId: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
        }
    }

    /// DescribeZones返回参数结构体
    public struct DescribeZonesResponse: TCResponse {
        /// 点位列表
        public let zones: [ZoneConfig]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zones = "Zones"
            case requestId = "RequestId"
        }
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(groupCode: String, mallId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeZonesResponse> {
        self.describeZones(.init(groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(groupCode: String, mallId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.describeZones(.init(groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }
}
