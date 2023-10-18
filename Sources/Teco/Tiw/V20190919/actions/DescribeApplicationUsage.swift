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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Tiw {
    /// DescribeApplicationUsage请求参数结构体
    public struct DescribeApplicationUsageRequest: TCRequest {
        /// 用量开始时间（包括该时间点）
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$beginTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date

        /// 用量结束时间（不包括该时间点）
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$endTime`) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 白板子产品名
        public let subProduct: String

        /// 时间跨度单位
        /// - MONTHLY：月
        /// - DAILY：天
        /// - MINUTELY：分钟
        public let timeLevel: String

        /// 白板应用的SdkAppId
        public let sdkAppId: Int64?

        /// true: 返回加权求和后的用量数据
        /// false: 返回原始用量数据
        public let isWeighted: Bool?

        public init(beginTime: Date, endTime: Date, subProduct: String, timeLevel: String, sdkAppId: Int64? = nil, isWeighted: Bool? = nil) {
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
            self.subProduct = subProduct
            self.timeLevel = timeLevel
            self.sdkAppId = sdkAppId
            self.isWeighted = isWeighted
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case subProduct = "SubProduct"
            case timeLevel = "TimeLevel"
            case sdkAppId = "SdkAppId"
            case isWeighted = "IsWeighted"
        }
    }

    /// DescribeApplicationUsage返回参数结构体
    public struct DescribeApplicationUsageResponse: TCResponse {
        /// 画图所需的用量数据
        public let data: [DataItem]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 查询互动白板各个子产品用量
    @inlinable
    public func describeApplicationUsage(_ input: DescribeApplicationUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationUsageResponse> {
        self.client.execute(action: "DescribeApplicationUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询互动白板各个子产品用量
    @inlinable
    public func describeApplicationUsage(_ input: DescribeApplicationUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationUsageResponse {
        try await self.client.execute(action: "DescribeApplicationUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询互动白板各个子产品用量
    @inlinable
    public func describeApplicationUsage(beginTime: Date, endTime: Date, subProduct: String, timeLevel: String, sdkAppId: Int64? = nil, isWeighted: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeApplicationUsageResponse> {
        self.describeApplicationUsage(.init(beginTime: beginTime, endTime: endTime, subProduct: subProduct, timeLevel: timeLevel, sdkAppId: sdkAppId, isWeighted: isWeighted), region: region, logger: logger, on: eventLoop)
    }

    /// 查询互动白板各个子产品用量
    @inlinable
    public func describeApplicationUsage(beginTime: Date, endTime: Date, subProduct: String, timeLevel: String, sdkAppId: Int64? = nil, isWeighted: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApplicationUsageResponse {
        try await self.describeApplicationUsage(.init(beginTime: beginTime, endTime: endTime, subProduct: subProduct, timeLevel: timeLevel, sdkAppId: sdkAppId, isWeighted: isWeighted), region: region, logger: logger, on: eventLoop)
    }
}
