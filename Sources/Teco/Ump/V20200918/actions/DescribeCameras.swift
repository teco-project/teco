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
    /// DescribeCameras请求参数结构体
    public struct DescribeCamerasRequest: TCRequest {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        public init(groupCode: String, mallId: UInt64) {
            self.groupCode = groupCode
            self.mallId = mallId
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
        }
    }

    /// DescribeCameras返回参数结构体
    public struct DescribeCamerasResponse: TCResponse {
        /// 摄像头列表
        public let cameras: [CameraZones]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cameras = "Cameras"
            case requestId = "RequestId"
        }
    }

    /// 获取摄像头状态列表
    ///
    /// 获取集团广场对应的摄像头列表
    @inlinable
    public func describeCameras(_ input: DescribeCamerasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCamerasResponse> {
        self.client.execute(action: "DescribeCameras", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取摄像头状态列表
    ///
    /// 获取集团广场对应的摄像头列表
    @inlinable
    public func describeCameras(_ input: DescribeCamerasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCamerasResponse {
        try await self.client.execute(action: "DescribeCameras", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取摄像头状态列表
    ///
    /// 获取集团广场对应的摄像头列表
    @inlinable
    public func describeCameras(groupCode: String, mallId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCamerasResponse> {
        self.describeCameras(.init(groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取摄像头状态列表
    ///
    /// 获取集团广场对应的摄像头列表
    @inlinable
    public func describeCameras(groupCode: String, mallId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCamerasResponse {
        try await self.describeCameras(.init(groupCode: groupCode, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }
}
