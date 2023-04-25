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

extension Teo {
    /// DescribeSpeedTestingDetails请求参数结构体
    public struct DescribeSpeedTestingDetailsRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String?

        public init(zoneId: String? = nil) {
            self.zoneId = zoneId
        }

        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
        }
    }

    /// DescribeSpeedTestingDetails返回参数结构体
    public struct DescribeSpeedTestingDetailsResponse: TCResponseModel {
        /// 分地域拨测统计数据。
        public let speedTestingDetailData: SpeedTestingDetailData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case speedTestingDetailData = "SpeedTestingDetailData"
            case requestId = "RequestId"
        }
    }

    /// 查询拨测分地区数据
    ///
    /// 用于查询拨测分地区数据
    @inlinable
    public func describeSpeedTestingDetails(_ input: DescribeSpeedTestingDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpeedTestingDetailsResponse> {
        self.client.execute(action: "DescribeSpeedTestingDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询拨测分地区数据
    ///
    /// 用于查询拨测分地区数据
    @inlinable
    public func describeSpeedTestingDetails(_ input: DescribeSpeedTestingDetailsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpeedTestingDetailsResponse {
        try await self.client.execute(action: "DescribeSpeedTestingDetails", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询拨测分地区数据
    ///
    /// 用于查询拨测分地区数据
    @inlinable
    public func describeSpeedTestingDetails(zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSpeedTestingDetailsResponse> {
        self.describeSpeedTestingDetails(.init(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询拨测分地区数据
    ///
    /// 用于查询拨测分地区数据
    @inlinable
    public func describeSpeedTestingDetails(zoneId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSpeedTestingDetailsResponse {
        try await self.describeSpeedTestingDetails(.init(zoneId: zoneId), region: region, logger: logger, on: eventLoop)
    }
}
