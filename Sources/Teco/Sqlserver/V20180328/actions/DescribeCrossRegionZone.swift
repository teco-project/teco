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

extension Sqlserver {
    /// DescribeCrossRegionZone请求参数结构体
    public struct DescribeCrossRegionZoneRequest: TCRequest {
        /// 实例ID，格式如：mssql-3l3fgqn7
        public let instanceId: String

        public init(instanceId: String) {
            self.instanceId = instanceId
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
        }
    }

    /// DescribeCrossRegionZone返回参数结构体
    public struct DescribeCrossRegionZoneResponse: TCResponse {
        /// 备机所在地域的字符串ID，形如：ap-guangzhou
        public let region: String

        /// 备机所在可用区的字符串ID，形如：ap-guangzhou-1
        public let zone: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case region = "Region"
            case zone = "Zone"
            case requestId = "RequestId"
        }
    }

    /// 查询备机的容灾地域和可用区
    ///
    /// 本接口(DescribeCrossRegionZone)根据主实例查询备机的容灾地域和可用区。
    @inlinable
    public func describeCrossRegionZone(_ input: DescribeCrossRegionZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossRegionZoneResponse> {
        self.client.execute(action: "DescribeCrossRegionZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询备机的容灾地域和可用区
    ///
    /// 本接口(DescribeCrossRegionZone)根据主实例查询备机的容灾地域和可用区。
    @inlinable
    public func describeCrossRegionZone(_ input: DescribeCrossRegionZoneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossRegionZoneResponse {
        try await self.client.execute(action: "DescribeCrossRegionZone", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询备机的容灾地域和可用区
    ///
    /// 本接口(DescribeCrossRegionZone)根据主实例查询备机的容灾地域和可用区。
    @inlinable
    public func describeCrossRegionZone(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCrossRegionZoneResponse> {
        self.describeCrossRegionZone(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询备机的容灾地域和可用区
    ///
    /// 本接口(DescribeCrossRegionZone)根据主实例查询备机的容灾地域和可用区。
    @inlinable
    public func describeCrossRegionZone(instanceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCrossRegionZoneResponse {
        try await self.describeCrossRegionZone(.init(instanceId: instanceId), region: region, logger: logger, on: eventLoop)
    }
}
