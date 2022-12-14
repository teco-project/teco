//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Ump {
    /// DescribeZones请求参数结构体
    public struct DescribeZonesRequest: TCRequestModel {
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
    public struct DescribeZonesResponse: TCResponseModel {
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
    public func describeZones(_ input: DescribeZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeZonesResponse > {
        self.client.execute(action: "DescribeZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(_ input: DescribeZonesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.client.execute(action: "DescribeZones", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(groupCode: String, mallId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeZonesResponse > {
        self.describeZones(DescribeZonesRequest(groupCode: groupCode, mallId: mallId), logger: logger, on: eventLoop)
    }

    /// 获取点位列表
    ///
    /// 获取集团广场的点位列表
    @inlinable
    public func describeZones(groupCode: String, mallId: UInt64, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeZonesResponse {
        try await self.describeZones(DescribeZonesRequest(groupCode: groupCode, mallId: mallId), logger: logger, on: eventLoop)
    }
}
