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

extension Ft {
    /// FaceCartoonPic请求参数结构体
    public struct FaceCartoonPicRequest: TCRequestModel {
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        /// 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        public let rspImgType: String?

        /// 关闭全图动漫化，传入true（不分大小写）即关闭全图动漫化。
        public let disableGlobalEffect: String?

        public init(image: String? = nil, url: String? = nil, rspImgType: String? = nil, disableGlobalEffect: String? = nil) {
            self.image = image
            self.url = url
            self.rspImgType = rspImgType
            self.disableGlobalEffect = disableGlobalEffect
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case rspImgType = "RspImgType"
            case disableGlobalEffect = "DisableGlobalEffect"
        }
    }

    /// FaceCartoonPic返回参数结构体
    public struct FaceCartoonPicResponse: TCResponseModel {
        /// 结果图片Base64信息。
        public let resultImage: String

        /// RspImgType 为 url 时，返回处理后的图片 url 数据。(默认为base64)
        public let resultUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultImage = "ResultImage"
            case resultUrl = "ResultUrl"
            case requestId = "RequestId"
        }
    }

    /// 人像动漫化
    ///
    /// 输入一张人脸照片，生成个性化的二次元动漫形象，可用于打造个性头像、趣味活动、特效类应用等场景，提升社交娱乐的体验。
    @inlinable
    public func faceCartoonPic(_ input: FaceCartoonPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FaceCartoonPicResponse> {
        self.client.execute(action: "FaceCartoonPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人像动漫化
    ///
    /// 输入一张人脸照片，生成个性化的二次元动漫形象，可用于打造个性头像、趣味活动、特效类应用等场景，提升社交娱乐的体验。
    @inlinable
    public func faceCartoonPic(_ input: FaceCartoonPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FaceCartoonPicResponse {
        try await self.client.execute(action: "FaceCartoonPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人像动漫化
    ///
    /// 输入一张人脸照片，生成个性化的二次元动漫形象，可用于打造个性头像、趣味活动、特效类应用等场景，提升社交娱乐的体验。
    @inlinable
    public func faceCartoonPic(image: String? = nil, url: String? = nil, rspImgType: String? = nil, disableGlobalEffect: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FaceCartoonPicResponse> {
        self.faceCartoonPic(.init(image: image, url: url, rspImgType: rspImgType, disableGlobalEffect: disableGlobalEffect), region: region, logger: logger, on: eventLoop)
    }

    /// 人像动漫化
    ///
    /// 输入一张人脸照片，生成个性化的二次元动漫形象，可用于打造个性头像、趣味活动、特效类应用等场景，提升社交娱乐的体验。
    @inlinable
    public func faceCartoonPic(image: String? = nil, url: String? = nil, rspImgType: String? = nil, disableGlobalEffect: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FaceCartoonPicResponse {
        try await self.faceCartoonPic(.init(image: image, url: url, rspImgType: rspImgType, disableGlobalEffect: disableGlobalEffect), region: region, logger: logger, on: eventLoop)
    }
}
