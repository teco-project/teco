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

extension Lcic {
    /// GetWatermark请求参数结构体
    public struct GetWatermarkRequest: TCRequestModel {
        /// 低代码互动课堂的SdkAppId。
        public let sdkAppId: UInt64

        public init(sdkAppId: UInt64) {
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
        }
    }

    /// GetWatermark返回参数结构体
    public struct GetWatermarkResponse: TCResponseModel {
        /// 老师视频区域的水印参数配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let teacherLogo: WatermarkConfig?

        /// 白板区域的水印参数配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let boardLogo: WatermarkConfig?

        /// 背景图片配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let backgroundPicture: BackgroundPictureConfig?

        /// 文字水印配置
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let text: TextMarkConfig?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case teacherLogo = "TeacherLogo"
            case boardLogo = "BoardLogo"
            case backgroundPicture = "BackgroundPicture"
            case text = "Text"
            case requestId = "RequestId"
        }
    }

    /// 获取水印设置
    @inlinable
    public func getWatermark(_ input: GetWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWatermarkResponse> {
        self.client.execute(action: "GetWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取水印设置
    @inlinable
    public func getWatermark(_ input: GetWatermarkRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWatermarkResponse {
        try await self.client.execute(action: "GetWatermark", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取水印设置
    @inlinable
    public func getWatermark(sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetWatermarkResponse> {
        self.getWatermark(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取水印设置
    @inlinable
    public func getWatermark(sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetWatermarkResponse {
        try await self.getWatermark(.init(sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
