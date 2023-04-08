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

extension Fmu {
    /// BeautifyPic请求参数结构体
    public struct BeautifyPicRequest: TCRequestModel {
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 美白程度，取值范围[0,100]。0不美白，100代表最高程度。默认值30。
        public let whitening: UInt64?

        /// 磨皮程度，取值范围[0,100]。0不磨皮，100代表最高程度。默认值10。
        public let smoothing: UInt64?

        /// 瘦脸程度，取值范围[0,100]。0不瘦脸，100代表最高程度。默认值70。
        public let faceLifting: UInt64?

        /// 大眼程度，取值范围[0,100]。0不大眼，100代表最高程度。默认值70。
        public let eyeEnlarging: UInt64?

        /// 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        public let rspImgType: String?

        public init(image: String? = nil, url: String? = nil, whitening: UInt64? = nil, smoothing: UInt64? = nil, faceLifting: UInt64? = nil, eyeEnlarging: UInt64? = nil, rspImgType: String? = nil) {
            self.image = image
            self.url = url
            self.whitening = whitening
            self.smoothing = smoothing
            self.faceLifting = faceLifting
            self.eyeEnlarging = eyeEnlarging
            self.rspImgType = rspImgType
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case whitening = "Whitening"
            case smoothing = "Smoothing"
            case faceLifting = "FaceLifting"
            case eyeEnlarging = "EyeEnlarging"
            case rspImgType = "RspImgType"
        }
    }

    /// BeautifyPic返回参数结构体
    public struct BeautifyPicResponse: TCResponseModel {
        /// RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultImage: String?

        /// RspImgType 为 url 时，返回处理后的图片 url 数据。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let resultUrl: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultImage = "ResultImage"
            case resultUrl = "ResultUrl"
            case requestId = "RequestId"
        }
    }

    /// 人脸美颜
    ///
    /// 用户上传一张人脸图片，精准定位五官，实现美肤、亮肤、祛痘等美颜功能。
    @inlinable
    public func beautifyPic(_ input: BeautifyPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BeautifyPicResponse> {
        self.client.execute(action: "BeautifyPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸美颜
    ///
    /// 用户上传一张人脸图片，精准定位五官，实现美肤、亮肤、祛痘等美颜功能。
    @inlinable
    public func beautifyPic(_ input: BeautifyPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BeautifyPicResponse {
        try await self.client.execute(action: "BeautifyPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸美颜
    ///
    /// 用户上传一张人脸图片，精准定位五官，实现美肤、亮肤、祛痘等美颜功能。
    @inlinable
    public func beautifyPic(image: String? = nil, url: String? = nil, whitening: UInt64? = nil, smoothing: UInt64? = nil, faceLifting: UInt64? = nil, eyeEnlarging: UInt64? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<BeautifyPicResponse> {
        self.beautifyPic(.init(image: image, url: url, whitening: whitening, smoothing: smoothing, faceLifting: faceLifting, eyeEnlarging: eyeEnlarging, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸美颜
    ///
    /// 用户上传一张人脸图片，精准定位五官，实现美肤、亮肤、祛痘等美颜功能。
    @inlinable
    public func beautifyPic(image: String? = nil, url: String? = nil, whitening: UInt64? = nil, smoothing: UInt64? = nil, faceLifting: UInt64? = nil, eyeEnlarging: UInt64? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> BeautifyPicResponse {
        try await self.beautifyPic(.init(image: image, url: url, whitening: whitening, smoothing: smoothing, faceLifting: faceLifting, eyeEnlarging: eyeEnlarging, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }
}
