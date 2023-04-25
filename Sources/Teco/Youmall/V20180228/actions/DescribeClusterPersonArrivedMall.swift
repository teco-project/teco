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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Youmall {
    /// DescribeClusterPersonArrivedMall请求参数结构体
    public struct DescribeClusterPersonArrivedMallRequest: TCRequestModel {
        /// 卖场编码
        public let mallId: String

        /// 客户编码
        public let personId: String

        /// 查询开始时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询结束时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        public init(mallId: String, personId: String, startTime: Date, endTime: Date) {
            self.mallId = mallId
            self.personId = personId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
        }

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case personId = "PersonId"
            case startTime = "StartTime"
            case endTime = "EndTime"
        }
    }

    /// DescribeClusterPersonArrivedMall返回参数结构体
    public struct DescribeClusterPersonArrivedMallResponse: TCResponseModel {
        /// 卖场系统编码
        public let mallId: String

        /// 卖场客户编码
        public let mallCode: String

        /// 客户编码
        public let personId: String

        /// 到场信息
        public let arrivedMallSet: [ArrivedMallInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case mallId = "MallId"
            case mallCode = "MallCode"
            case personId = "PersonId"
            case arrivedMallSet = "ArrivedMallSet"
            case requestId = "RequestId"
        }
    }

    /// 查询客户到场信息（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。停留时间为多次进出场的停留时间之和。
    @inlinable
    public func describeClusterPersonArrivedMall(_ input: DescribeClusterPersonArrivedMallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterPersonArrivedMallResponse> {
        self.client.execute(action: "DescribeClusterPersonArrivedMall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户到场信息（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。停留时间为多次进出场的停留时间之和。
    @inlinable
    public func describeClusterPersonArrivedMall(_ input: DescribeClusterPersonArrivedMallRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPersonArrivedMallResponse {
        try await self.client.execute(action: "DescribeClusterPersonArrivedMall", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户到场信息（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。停留时间为多次进出场的停留时间之和。
    @inlinable
    public func describeClusterPersonArrivedMall(mallId: String, personId: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClusterPersonArrivedMallResponse> {
        self.describeClusterPersonArrivedMall(.init(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户到场信息（按天聚合）
    ///
    /// 输出开始时间到结束时间段内的进出场数据。按天聚合的情况下，每天多次进出场算一次，以最初进场时间为进场时间，最后离场时间为离场时间。停留时间为多次进出场的停留时间之和。
    @inlinable
    public func describeClusterPersonArrivedMall(mallId: String, personId: String, startTime: Date, endTime: Date, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClusterPersonArrivedMallResponse {
        try await self.describeClusterPersonArrivedMall(.init(mallId: mallId, personId: personId, startTime: startTime, endTime: endTime), region: region, logger: logger, on: eventLoop)
    }
}
