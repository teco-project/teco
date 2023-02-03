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

extension Privatedns {
    /// DescribePrivateZone请求参数结构体
    public struct DescribePrivateZoneRequest: TCRequestModel {
        /// 域名，格式必须是标准的TLD
        public let zoneId: String

        public init(zoneId: String) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribePrivateZone返回参数结构体
    public struct DescribePrivateZoneResponse: TCResponseModel {
        /// 私有域详情
        public let privateZone: PrivateZone

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case privateZone = "PrivateZone"
            case requestId = "RequestId"
        }
    }

    /// 获取私有域信息
    @inlinable
    public func describePrivateZone(_ input: DescribePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneResponse> {
        self.client.execute(action: "DescribePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域信息
    @inlinable
    public func describePrivateZone(_ input: DescribePrivateZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneResponse {
        try await self.client.execute(action: "DescribePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取私有域信息
    @inlinable
    public func describePrivateZone(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrivateZoneResponse> {
        let input = DescribePrivateZoneRequest(zoneId: zoneId)
        return self.client.execute(action: "DescribePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取私有域信息
    @inlinable
    public func describePrivateZone(zoneId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrivateZoneResponse {
        let input = DescribePrivateZoneRequest(zoneId: zoneId)
        return try await self.client.execute(action: "DescribePrivateZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
