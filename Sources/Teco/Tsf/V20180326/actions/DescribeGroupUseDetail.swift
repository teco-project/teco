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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Tsf {
    /// DescribeGroupUseDetail请求参数结构体
    public struct DescribeGroupUseDetailRequest: TCRequestModel {
        /// 网关部署组ID
        public let gatewayDeployGroupId: String

        /// 网关分组ID
        public let groupId: String

        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var startTime: Date

        /// 查询的日期,格式：yyyy-MM-dd HH:mm:ss
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var endTime: Date

        /// 指定top的条数,默认为10
        public let count: Int64?

        public init(gatewayDeployGroupId: String, groupId: String, startTime: Date, endTime: Date, count: Int64? = nil) {
            self.gatewayDeployGroupId = gatewayDeployGroupId
            self.groupId = groupId
            self._startTime = .init(wrappedValue: startTime)
            self._endTime = .init(wrappedValue: endTime)
            self.count = count
        }

        enum CodingKeys: String, CodingKey {
            case gatewayDeployGroupId = "GatewayDeployGroupId"
            case groupId = "GroupId"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case count = "Count"
        }
    }

    /// DescribeGroupUseDetail返回参数结构体
    public struct DescribeGroupUseDetailResponse: TCResponseModel {
        /// 日使用统计对象
        public let result: GroupDailyUseStatistics

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 查询网关分组监控明细数据
    @inlinable
    public func describeGroupUseDetail(_ input: DescribeGroupUseDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupUseDetailResponse> {
        self.client.execute(action: "DescribeGroupUseDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询网关分组监控明细数据
    @inlinable
    public func describeGroupUseDetail(_ input: DescribeGroupUseDetailRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupUseDetailResponse {
        try await self.client.execute(action: "DescribeGroupUseDetail", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询网关分组监控明细数据
    @inlinable
    public func describeGroupUseDetail(gatewayDeployGroupId: String, groupId: String, startTime: Date, endTime: Date, count: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeGroupUseDetailResponse> {
        self.describeGroupUseDetail(DescribeGroupUseDetailRequest(gatewayDeployGroupId: gatewayDeployGroupId, groupId: groupId, startTime: startTime, endTime: endTime, count: count), logger: logger, on: eventLoop)
    }

    /// 查询网关分组监控明细数据
    @inlinable
    public func describeGroupUseDetail(gatewayDeployGroupId: String, groupId: String, startTime: Date, endTime: Date, count: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeGroupUseDetailResponse {
        try await self.describeGroupUseDetail(DescribeGroupUseDetailRequest(gatewayDeployGroupId: gatewayDeployGroupId, groupId: groupId, startTime: startTime, endTime: endTime, count: count), logger: logger, on: eventLoop)
    }
}
