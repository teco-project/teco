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

extension Cfs {
    /// DescribeAvailableZoneInfo请求参数结构体
    public struct DescribeAvailableZoneInfoRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeAvailableZoneInfo返回参数结构体
    public struct DescribeAvailableZoneInfoResponse: TCResponseModel {
        /// 各可用区的资源售卖情况以及支持的存储类型、存储协议等信息
        public let regionZones: [AvailableRegion]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case regionZones = "RegionZones"
            case requestId = "RequestId"
        }
    }

    /// 查询区域可用情况
    ///
    /// 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。
    @inlinable
    public func describeAvailableZoneInfo(_ input: DescribeAvailableZoneInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableZoneInfoResponse> {
        self.client.execute(action: "DescribeAvailableZoneInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询区域可用情况
    ///
    /// 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。
    @inlinable
    public func describeAvailableZoneInfo(_ input: DescribeAvailableZoneInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableZoneInfoResponse {
        try await self.client.execute(action: "DescribeAvailableZoneInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询区域可用情况
    ///
    /// 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。
    @inlinable
    public func describeAvailableZoneInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeAvailableZoneInfoResponse> {
        self.describeAvailableZoneInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 查询区域可用情况
    ///
    /// 本接口（DescribeAvailableZoneInfo）用于查询区域的可用情况。
    @inlinable
    public func describeAvailableZoneInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAvailableZoneInfoResponse {
        try await self.describeAvailableZoneInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}
