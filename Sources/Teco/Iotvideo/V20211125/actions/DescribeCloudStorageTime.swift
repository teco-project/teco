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

import Logging
import NIOCore
import TecoCore

extension Iotvideo {
    /// DescribeCloudStorageTime请求参数结构体
    public struct DescribeCloudStorageTimeRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 云存日期，例如"2020-01-05"
        public let date: String

        /// 开始时间，unix时间
        public let startTime: UInt64?

        /// 结束时间，unix时间
        public let endTime: UInt64?

        /// 用户ID
        public let userId: String?

        /// 通道ID
        public let channelId: UInt64?

        public init(productId: String, deviceName: String, date: String, startTime: UInt64? = nil, endTime: UInt64? = nil, userId: String? = nil, channelId: UInt64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.date = date
            self.startTime = startTime
            self.endTime = endTime
            self.userId = userId
            self.channelId = channelId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case date = "Date"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case userId = "UserId"
            case channelId = "ChannelId"
        }
    }

    /// DescribeCloudStorageTime返回参数结构体
    public struct DescribeCloudStorageTimeResponse: TCResponse {
        /// 接口返回数据
        public let data: CloudStorageTimeData

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 获取某一天云存时间轴
    @inlinable
    public func describeCloudStorageTime(_ input: DescribeCloudStorageTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageTimeResponse> {
        self.client.execute(action: "DescribeCloudStorageTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取某一天云存时间轴
    @inlinable
    public func describeCloudStorageTime(_ input: DescribeCloudStorageTimeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageTimeResponse {
        try await self.client.execute(action: "DescribeCloudStorageTime", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取某一天云存时间轴
    @inlinable
    public func describeCloudStorageTime(productId: String, deviceName: String, date: String, startTime: UInt64? = nil, endTime: UInt64? = nil, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageTimeResponse> {
        self.describeCloudStorageTime(.init(productId: productId, deviceName: deviceName, date: date, startTime: startTime, endTime: endTime, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取某一天云存时间轴
    @inlinable
    public func describeCloudStorageTime(productId: String, deviceName: String, date: String, startTime: UInt64? = nil, endTime: UInt64? = nil, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageTimeResponse {
        try await self.describeCloudStorageTime(.init(productId: productId, deviceName: deviceName, date: date, startTime: startTime, endTime: endTime, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }
}
