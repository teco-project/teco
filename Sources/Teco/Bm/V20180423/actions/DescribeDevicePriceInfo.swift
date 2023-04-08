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

extension Bm {
    /// DescribeDevicePriceInfo请求参数结构体
    public struct DescribeDevicePriceInfoRequest: TCRequestModel {
        /// 需要查询的实例列表
        public let instanceIds: [String]

        /// 购买时长单位，当前只支持取值为m
        public let timeUnit: String?

        /// 购买时长
        public let timeSpan: UInt64?

        public init(instanceIds: [String], timeUnit: String? = nil, timeSpan: UInt64? = nil) {
            self.instanceIds = instanceIds
            self.timeUnit = timeUnit
            self.timeSpan = timeSpan
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case timeUnit = "TimeUnit"
            case timeSpan = "TimeSpan"
        }
    }

    /// DescribeDevicePriceInfo返回参数结构体
    public struct DescribeDevicePriceInfoResponse: TCResponseModel {
        /// 服务器价格信息列表
        public let devicePriceInfoSet: [DevicePriceInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case devicePriceInfoSet = "DevicePriceInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 查询服务器价格信息
    ///
    /// 查询服务器价格信息，支持设备的批量查找，支持标准机型和弹性机型的混合查找
    @inlinable
    public func describeDevicePriceInfo(_ input: DescribeDevicePriceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePriceInfoResponse> {
        self.client.execute(action: "DescribeDevicePriceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询服务器价格信息
    ///
    /// 查询服务器价格信息，支持设备的批量查找，支持标准机型和弹性机型的混合查找
    @inlinable
    public func describeDevicePriceInfo(_ input: DescribeDevicePriceInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePriceInfoResponse {
        try await self.client.execute(action: "DescribeDevicePriceInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询服务器价格信息
    ///
    /// 查询服务器价格信息，支持设备的批量查找，支持标准机型和弹性机型的混合查找
    @inlinable
    public func describeDevicePriceInfo(instanceIds: [String], timeUnit: String? = nil, timeSpan: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDevicePriceInfoResponse> {
        self.describeDevicePriceInfo(.init(instanceIds: instanceIds, timeUnit: timeUnit, timeSpan: timeSpan), region: region, logger: logger, on: eventLoop)
    }

    /// 查询服务器价格信息
    ///
    /// 查询服务器价格信息，支持设备的批量查找，支持标准机型和弹性机型的混合查找
    @inlinable
    public func describeDevicePriceInfo(instanceIds: [String], timeUnit: String? = nil, timeSpan: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDevicePriceInfoResponse {
        try await self.describeDevicePriceInfo(.init(instanceIds: instanceIds, timeUnit: timeUnit, timeSpan: timeSpan), region: region, logger: logger, on: eventLoop)
    }
}
