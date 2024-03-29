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

extension Fmu {
    /// StyleImagePro请求参数结构体
    public struct StyleImageProRequest: TCRequest {
        /// 滤镜类型，取值如下：
        /// 1.白茶；2 白皙；3.初夏；4.东京；5.告白；6.暖阳；7.蔷薇；8.清澄；9.清透；10.甜薄荷；11.默认；12.心动；13.哑灰；14.樱桃布丁；15.自然；16.清逸；17.黑白；18.水果；19.爱情；20.冬日；21.相片；22.夏日；23.香氛；24.魅惑；25.悸动；26.沙滩；27.街拍；28.甜美；29.初吻；30.午后；31.活力；32.朦胧；33.悦动；34.时尚；35.气泡；36.柠檬；37.棉花糖；38.小溪；39.丽人；40.咖啡；41.嫩芽；42.热情；43.渐暖；44.早餐；45.白茶；46.白嫩；47.圣代；48.森林；49.冲浪；50.奶咖；51.清澈；52.微风；53.日落；54.水光；55.日系；56.星光；57.阳光；58.落叶；59.生机；60.甜心；61.清逸；62.春意；63.罗马；64.青涩；65.清风；66.暖心；67.海水；68.神秘；69.旧调1；70.旧调2；71.雪顶；72.日光；73.浮云；74.流彩；75.胶片；76.回味；77.奶酪；78.蝴蝶。
        public let filterType: Int64

        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        /// 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的 Url 可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP 等图片格式，不支持 GIF 图片。
        public let url: String?

        /// 滤镜效果，取值[0,100]，0表示无效果，100表示满滤镜效果。默认值为80。
        public let filterDegree: Int64?

        /// 返回图像方式（base64 或 url ) ，二选一。url有效期为1天。
        public let rspImgType: String?

        public init(filterType: Int64, image: String? = nil, url: String? = nil, filterDegree: Int64? = nil, rspImgType: String? = nil) {
            self.filterType = filterType
            self.image = image
            self.url = url
            self.filterDegree = filterDegree
            self.rspImgType = rspImgType
        }

        enum CodingKeys: String, CodingKey {
            case filterType = "FilterType"
            case image = "Image"
            case url = "Url"
            case filterDegree = "FilterDegree"
            case rspImgType = "RspImgType"
        }
    }

    /// StyleImagePro返回参数结构体
    public struct StyleImageProResponse: TCResponse {
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

    /// 图片滤镜（高级版）
    ///
    /// 上传一张照片，输出滤镜处理后的图片。
    @inlinable
    public func styleImagePro(_ input: StyleImageProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StyleImageProResponse> {
        self.client.execute(action: "StyleImagePro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 图片滤镜（高级版）
    ///
    /// 上传一张照片，输出滤镜处理后的图片。
    @inlinable
    public func styleImagePro(_ input: StyleImageProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StyleImageProResponse {
        try await self.client.execute(action: "StyleImagePro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 图片滤镜（高级版）
    ///
    /// 上传一张照片，输出滤镜处理后的图片。
    @inlinable
    public func styleImagePro(filterType: Int64, image: String? = nil, url: String? = nil, filterDegree: Int64? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StyleImageProResponse> {
        self.styleImagePro(.init(filterType: filterType, image: image, url: url, filterDegree: filterDegree, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }

    /// 图片滤镜（高级版）
    ///
    /// 上传一张照片，输出滤镜处理后的图片。
    @inlinable
    public func styleImagePro(filterType: Int64, image: String? = nil, url: String? = nil, filterDegree: Int64? = nil, rspImgType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StyleImageProResponse {
        try await self.styleImagePro(.init(filterType: filterType, image: image, url: url, filterDegree: filterDegree, rspImgType: rspImgType), region: region, logger: logger, on: eventLoop)
    }
}
