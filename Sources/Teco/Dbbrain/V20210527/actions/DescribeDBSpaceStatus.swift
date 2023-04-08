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

extension Dbbrain {
    /// DescribeDBSpaceStatus请求参数结构体
    public struct DescribeDBSpaceStatusRequest: TCRequestModel {
        /// 实例 ID 。
        public let instanceId: String

        /// 时间段天数，截止日期为当日，默认为7天。
        public let rangeDays: Int64?

        /// 服务产品类型，支持值包括： "mysql" - 云数据库 MySQL， "cynosdb" - 云数据库 CynosDB  for MySQL，默认为"mysql"。
        public let product: String?

        public init(instanceId: String, rangeDays: Int64? = nil, product: String? = nil) {
            self.instanceId = instanceId
            self.rangeDays = rangeDays
            self.product = product
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case rangeDays = "RangeDays"
            case product = "Product"
        }
    }

    /// DescribeDBSpaceStatus返回参数结构体
    public struct DescribeDBSpaceStatusResponse: TCResponseModel {
        /// 磁盘增长量(MB)。
        public let growth: Int64

        /// 磁盘剩余(MB)。
        public let remain: Int64

        /// 磁盘总量(MB)。
        public let total: Int64

        /// 预计可用天数。
        public let availableDays: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case growth = "Growth"
            case remain = "Remain"
            case total = "Total"
            case availableDays = "AvailableDays"
            case requestId = "RequestId"
        }
    }

    /// 获取指定时间段内的实例空间使用概览
    ///
    /// 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。
    @inlinable
    public func describeDBSpaceStatus(_ input: DescribeDBSpaceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSpaceStatusResponse> {
        self.client.execute(action: "DescribeDBSpaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取指定时间段内的实例空间使用概览
    ///
    /// 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。
    @inlinable
    public func describeDBSpaceStatus(_ input: DescribeDBSpaceStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSpaceStatusResponse {
        try await self.client.execute(action: "DescribeDBSpaceStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取指定时间段内的实例空间使用概览
    ///
    /// 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。
    @inlinable
    public func describeDBSpaceStatus(instanceId: String, rangeDays: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDBSpaceStatusResponse> {
        self.describeDBSpaceStatus(.init(instanceId: instanceId, rangeDays: rangeDays, product: product), region: region, logger: logger, on: eventLoop)
    }

    /// 获取指定时间段内的实例空间使用概览
    ///
    /// 获取指定时间段内的实例空间使用概览，包括磁盘增长量(MB)、磁盘剩余(MB)、磁盘总量(MB)及预计可用天数。
    @inlinable
    public func describeDBSpaceStatus(instanceId: String, rangeDays: Int64? = nil, product: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDBSpaceStatusResponse {
        try await self.describeDBSpaceStatus(.init(instanceId: instanceId, rangeDays: rangeDays, product: product), region: region, logger: logger, on: eventLoop)
    }
}
