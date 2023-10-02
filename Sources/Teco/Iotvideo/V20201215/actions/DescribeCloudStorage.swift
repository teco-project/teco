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
    /// DescribeCloudStorage请求参数结构体
    public struct DescribeCloudStorageRequest: TCRequest {
        /// 产品ID
        public let productId: String

        /// 设备名称
        public let deviceName: String

        /// 云存用户ID
        public let userId: String?

        /// 通道ID 非NVR设备不填 NVR设备必填 默认为无
        public let channelId: UInt64?

        public init(productId: String, deviceName: String, userId: String? = nil, channelId: UInt64? = nil) {
            self.productId = productId
            self.deviceName = deviceName
            self.userId = userId
            self.channelId = channelId
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case deviceName = "DeviceName"
            case userId = "UserId"
            case channelId = "ChannelId"
        }
    }

    /// DescribeCloudStorage返回参数结构体
    public struct DescribeCloudStorageResponse: TCResponse {
        /// 云存开启状态，1为开启，0为未开启或已过期
        public let status: UInt64

        /// 云存类型，1为全时云存，2为事件云存
        public let type: UInt64

        /// 云存套餐过期时间
        public let expireTime: UInt64

        /// 云存回看时长
        public let shiftDuration: UInt64

        /// 云存用户ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let userId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case type = "Type"
            case expireTime = "ExpireTime"
            case shiftDuration = "ShiftDuration"
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }

    /// 获取设备云存服务详情
    @inlinable
    public func describeCloudStorage(_ input: DescribeCloudStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageResponse> {
        self.client.execute(action: "DescribeCloudStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取设备云存服务详情
    @inlinable
    public func describeCloudStorage(_ input: DescribeCloudStorageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageResponse {
        try await self.client.execute(action: "DescribeCloudStorage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取设备云存服务详情
    @inlinable
    public func describeCloudStorage(productId: String, deviceName: String, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudStorageResponse> {
        self.describeCloudStorage(.init(productId: productId, deviceName: deviceName, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取设备云存服务详情
    @inlinable
    public func describeCloudStorage(productId: String, deviceName: String, userId: String? = nil, channelId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudStorageResponse {
        try await self.describeCloudStorage(.init(productId: productId, deviceName: deviceName, userId: userId, channelId: channelId), region: region, logger: logger, on: eventLoop)
    }
}
