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
import TecoCore
import TecoDateHelpers

extension Tiw {
    /// DescribePostpaidUsage请求参数结构体
    public struct DescribePostpaidUsageRequest: TCRequestModel {
        /// 开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var beginTime: Date

        /// 结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        public init(beginTime: Date, endTime: Date) {
            self._beginTime = .init(wrappedValue: beginTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case beginTime = "BeginTime"
            case endTime = "EndTime"
        }
    }

    /// DescribePostpaidUsage返回参数结构体
    public struct DescribePostpaidUsageResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 查询用户后付费用量
    @inlinable @discardableResult
    public func describePostpaidUsage(_ input: DescribePostpaidUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePostpaidUsageResponse> {
        self.client.execute(action: "DescribePostpaidUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询用户后付费用量
    @inlinable @discardableResult
    public func describePostpaidUsage(_ input: DescribePostpaidUsageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePostpaidUsageResponse {
        try await self.client.execute(action: "DescribePostpaidUsage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询用户后付费用量
    @inlinable @discardableResult
    public func describePostpaidUsage(beginTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribePostpaidUsageResponse> {
        self.describePostpaidUsage(.init(beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询用户后付费用量
    @inlinable @discardableResult
    public func describePostpaidUsage(beginTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribePostpaidUsageResponse {
        try await self.describePostpaidUsage(.init(beginTime: beginTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
