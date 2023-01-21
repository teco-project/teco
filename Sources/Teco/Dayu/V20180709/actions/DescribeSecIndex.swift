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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Dayu {
    /// DescribeSecIndex请求参数结构体
    public struct DescribeSecIndexRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeSecIndex返回参数结构体
    public struct DescribeSecIndexResponse: TCResponseModel {
        /// 字段值，如下：
        /// AttackIpCount：受攻击的IP数
        /// AttackCount：攻击次数
        /// BlockCount：封堵次数
        /// MaxMbps：攻击峰值Mbps
        /// IpNum：统计的IP数据
        public let data: [KeyValue]

        /// 本月开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginDate: Date

        /// 本月结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endDate: Date

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case beginDate = "BeginDate"
            case endDate = "EndDate"
            case requestId = "RequestId"
        }
    }

    /// 获取安全统计
    ///
    /// 获取本月安全统计
    @inlinable
    public func describeSecIndex(_ input: DescribeSecIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecIndexResponse> {
        self.client.execute(action: "DescribeSecIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取安全统计
    ///
    /// 获取本月安全统计
    @inlinable
    public func describeSecIndex(_ input: DescribeSecIndexRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecIndexResponse {
        try await self.client.execute(action: "DescribeSecIndex", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取安全统计
    ///
    /// 获取本月安全统计
    @inlinable
    public func describeSecIndex(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeSecIndexResponse> {
        self.describeSecIndex(DescribeSecIndexRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取安全统计
    ///
    /// 获取本月安全统计
    @inlinable
    public func describeSecIndex(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeSecIndexResponse {
        try await self.describeSecIndex(DescribeSecIndexRequest(), region: region, logger: logger, on: eventLoop)
    }
}
