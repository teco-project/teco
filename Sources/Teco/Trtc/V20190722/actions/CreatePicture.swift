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

extension Trtc {
    /// CreatePicture请求参数结构体
    public struct CreatePictureRequest: TCRequest {
        /// 应用id
        public let sdkAppId: UInt64

        /// 图片内容经base64编码后的string格式,最大长度为2M
        public let content: String

        /// 图片后缀名
        public let suffix: String

        /// 图片长度
        public let height: UInt64

        /// 图片宽度
        public let width: UInt64

        /// 显示位置x轴方向
        public let xPosition: UInt64

        /// 显示位置y轴方向
        public let yPosition: UInt64

        public init(sdkAppId: UInt64, content: String, suffix: String, height: UInt64, width: UInt64, xPosition: UInt64, yPosition: UInt64) {
            self.sdkAppId = sdkAppId
            self.content = content
            self.suffix = suffix
            self.height = height
            self.width = width
            self.xPosition = xPosition
            self.yPosition = yPosition
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case content = "Content"
            case suffix = "Suffix"
            case height = "Height"
            case width = "Width"
            case xPosition = "XPosition"
            case yPosition = "YPosition"
        }
    }

    /// CreatePicture返回参数结构体
    public struct CreatePictureResponse: TCResponse {
        /// 图片id
        public let pictureId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case pictureId = "PictureId"
            case requestId = "RequestId"
        }
    }

    /// 上传图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁新增自定义背景图或水印，可通过此接口上传新的图片素材。无需频繁新增图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable
    public func createPicture(_ input: CreatePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePictureResponse> {
        self.client.execute(action: "CreatePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 上传图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁新增自定义背景图或水印，可通过此接口上传新的图片素材。无需频繁新增图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable
    public func createPicture(_ input: CreatePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePictureResponse {
        try await self.client.execute(action: "CreatePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 上传图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁新增自定义背景图或水印，可通过此接口上传新的图片素材。无需频繁新增图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable
    public func createPicture(sdkAppId: UInt64, content: String, suffix: String, height: UInt64, width: UInt64, xPosition: UInt64, yPosition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreatePictureResponse> {
        self.createPicture(.init(sdkAppId: sdkAppId, content: content, suffix: suffix, height: height, width: width, xPosition: xPosition, yPosition: yPosition), region: region, logger: logger, on: eventLoop)
    }

    /// 上传图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁新增自定义背景图或水印，可通过此接口上传新的图片素材。无需频繁新增图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable
    public func createPicture(sdkAppId: UInt64, content: String, suffix: String, height: UInt64, width: UInt64, xPosition: UInt64, yPosition: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreatePictureResponse {
        try await self.createPicture(.init(sdkAppId: sdkAppId, content: content, suffix: suffix, height: height, width: width, xPosition: xPosition, yPosition: yPosition), region: region, logger: logger, on: eventLoop)
    }
}
