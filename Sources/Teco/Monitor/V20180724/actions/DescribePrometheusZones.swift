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

extension Monitor {
    /// DescribePrometheusZones请求参数结构体
    public struct DescribePrometheusZonesRequest: TCRequestModel {
        /// 地域 ID（RegionId 和 RegionName 只需要填一个）
        public let regionId: Int64?

        /// 地域名（RegionId 和 RegionName 只需要填一个）
        public let regionName: String?

        public init(regionId: Int64? = nil, regionName: String? = nil) {
            self.regionId = regionId
            self.regionName = regionName
        }

        enum CodingKeys: String, CodingKey {
            case regionId = "RegionId"
            case regionName = "RegionName"
        }
    }

    /// DescribePrometheusZones返回参数结构体
    public struct DescribePrometheusZonesResponse: TCResponseModel {
        /// 区域列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let zoneSet: [PrometheusZoneItem]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case zoneSet = "ZoneSet"
            case requestId = "RequestId"
        }
    }

    /// 列出 Prometheus 服务可用区
    @inlinable
    public func describePrometheusZones(_ input: DescribePrometheusZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusZonesResponse> {
        self.client.execute(action: "DescribePrometheusZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 服务可用区
    @inlinable
    public func describePrometheusZones(_ input: DescribePrometheusZonesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusZonesResponse {
        try await self.client.execute(action: "DescribePrometheusZones", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 列出 Prometheus 服务可用区
    @inlinable
    public func describePrometheusZones(regionId: Int64? = nil, regionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePrometheusZonesResponse> {
        self.describePrometheusZones(.init(regionId: regionId, regionName: regionName), region: region, logger: logger, on: eventLoop)
    }

    /// 列出 Prometheus 服务可用区
    @inlinable
    public func describePrometheusZones(regionId: Int64? = nil, regionName: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePrometheusZonesResponse {
        try await self.describePrometheusZones(.init(regionId: regionId, regionName: regionName), region: region, logger: logger, on: eventLoop)
    }
}
