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

extension Ump {
    /// DescribeImage请求参数结构体
    public struct DescribeImageRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 摄像头ID
        public let cameraId: UInt64

        public init(groupCode: String, mallId: UInt64, cameraId: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.cameraId = cameraId
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case cameraId = "CameraId"
        }
    }

    /// DescribeImage返回参数结构体
    public struct DescribeImageResponse: TCResponse {
        /// cos 临时 url，异步上传图片，client需要轮询
        public let imageUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case requestId = "RequestId"
        }
    }

    /// 获取底图
    ///
    /// 实时获取底图接口
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageResponse> {
        self.client.execute(action: "DescribeImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取底图
    ///
    /// 实时获取底图接口
    @inlinable
    public func describeImage(_ input: DescribeImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageResponse {
        try await self.client.execute(action: "DescribeImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取底图
    ///
    /// 实时获取底图接口
    @inlinable
    public func describeImage(groupCode: String, mallId: UInt64, cameraId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeImageResponse> {
        self.describeImage(.init(groupCode: groupCode, mallId: mallId, cameraId: cameraId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取底图
    ///
    /// 实时获取底图接口
    @inlinable
    public func describeImage(groupCode: String, mallId: UInt64, cameraId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeImageResponse {
        try await self.describeImage(.init(groupCode: groupCode, mallId: mallId, cameraId: cameraId), region: region, logger: logger, on: eventLoop)
    }
}
