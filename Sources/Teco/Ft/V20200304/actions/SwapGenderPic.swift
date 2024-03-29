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

extension Ft {
    /// SwapGenderPic请求参数结构体
    public struct SwapGenderPicRequest: TCRequest {
        /// 人脸转化性别信息。
        /// 您可以输入最多3个 GenderInfo 来实现给一张图中的最多3张人脸转换性别。
        public let genderInfos: [GenderInfo]

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

        public init(genderInfos: [GenderInfo], image: String? = nil, url: String? = nil, rspImgType: String? = nil) {
            self.genderInfos = genderInfos
            self.image = image
            self.url = url
            self.rspImgType = rspImgType
        }

        enum CodingKeys: String, CodingKey {
            case genderInfos = "GenderInfos"
            case image = "Image"
            case url = "Url"
            case rspImgType = "RspImgType"
        }
    }

    /// SwapGenderPic返回参数结构体
    public struct SwapGenderPicResponse: TCResponse {
        /// RspImgType 为 base64 时，返回处理后的图片 base64 数据。默认返回base64
        public let resultImage: String

        /// RspImgType 为 url 时，返回处理后的图片 url 数据。
        public let resultUrl: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultImage = "ResultImage"
            case resultUrl = "ResultUrl"
            case requestId = "RequestId"
        }
    }

    /// 人脸性别转换
    ///
    /// 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸性别转换的图片。男变女可实现美颜、淡妆、加刘海和长发的效果；女变男可实现加胡须、变短发的效果。
    @inlinable
    public func swapGenderPic(_ input: SwapGenderPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwapGenderPicResponse> {
        self.client.execute(action: "SwapGenderPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸性别转换
    ///
    /// 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸性别转换的图片。男变女可实现美颜、淡妆、加刘海和长发的效果；女变男可实现加胡须、变短发的效果。
    @inlinable
    public func swapGenderPic(_ input: SwapGenderPicRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwapGenderPicResponse {
        try await self.client.execute(action: "SwapGenderPic", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸性别转换
    ///
    /// 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸性别转换的图片。男变女可实现美颜、淡妆、加刘海和长发的效果；女变男可实现加胡须、变短发的效果。
    @inlinable
    public func swapGenderPic(genderInfos: [GenderInfo], image: String? = nil, url: String? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SwapGenderPicResponse> {
        self.swapGenderPic(.init(genderInfos: genderInfos, image: image, url: url, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸性别转换
    ///
    /// 用户上传一张人脸图片，基于人脸编辑与生成算法，输出一张人脸性别转换的图片。男变女可实现美颜、淡妆、加刘海和长发的效果；女变男可实现加胡须、变短发的效果。
    @inlinable
    public func swapGenderPic(genderInfos: [GenderInfo], image: String? = nil, url: String? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SwapGenderPicResponse {
        try await self.swapGenderPic(.init(genderInfos: genderInfos, image: image, url: url, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }
}
