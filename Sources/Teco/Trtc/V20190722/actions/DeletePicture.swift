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

import Logging
import NIOCore
import TecoCore

extension Trtc {
    /// DeletePicture请求参数结构体
    public struct DeletePictureRequest: TCRequestModel {
        /// 图片id
        public let pictureId: UInt64

        /// 应用id
        public let sdkAppId: UInt64

        public init(pictureId: UInt64, sdkAppId: UInt64) {
            self.pictureId = pictureId
            self.sdkAppId = sdkAppId
        }

        enum CodingKeys: String, CodingKey {
            case pictureId = "PictureId"
            case sdkAppId = "SdkAppId"
        }
    }

    /// DeletePicture返回参数结构体
    public struct DeletePictureResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁删除自定义背景图或水印，可通过此接口删除已上传的图片。无需频繁删除图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable @discardableResult
    public func deletePicture(_ input: DeletePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePictureResponse> {
        self.client.execute(action: "DeletePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁删除自定义背景图或水印，可通过此接口删除已上传的图片。无需频繁删除图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable @discardableResult
    public func deletePicture(_ input: DeletePictureRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePictureResponse {
        try await self.client.execute(action: "DeletePicture", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁删除自定义背景图或水印，可通过此接口删除已上传的图片。无需频繁删除图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable @discardableResult
    public func deletePicture(pictureId: UInt64, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeletePictureResponse> {
        self.deletePicture(.init(pictureId: pictureId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除图片
    ///
    /// 如果您需要在 [云端混流转码](https://cloud.tencent.com/document/product/647/16827) 时频繁删除自定义背景图或水印，可通过此接口删除已上传的图片。无需频繁删除图片的场景，建议直接在 [控制台 > 应用管理 > 素材管理](https://cloud.tencent.com/document/product/647/50769) 中操作。
    @inlinable @discardableResult
    public func deletePicture(pictureId: UInt64, sdkAppId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeletePictureResponse {
        try await self.deletePicture(.init(pictureId: pictureId, sdkAppId: sdkAppId), region: region, logger: logger, on: eventLoop)
    }
}
