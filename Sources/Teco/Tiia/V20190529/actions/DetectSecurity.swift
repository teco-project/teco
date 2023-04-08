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

extension Tiia {
    /// DetectSecurity请求参数结构体
    public struct DetectSecurityRequest: TCRequestModel {
        /// 图片的 Url 。
        /// ImageUrl和ImageBase64必须提供一个，同时存在时优先使用ImageUrl字段。
        /// 图片限制：
        /// • 图片格式：支持PNG、JPG、JPEG、不支持 GIF 图片。
        /// • 图片大小：对应图片 base64 编码后大小不可超过5M。图片分辨率不超过3840 x 2160 pixel。
        /// 建议：
        /// • 接口响应时间会受到图片下载时间的影响，建议使用更可靠的存储服务，推荐将图片存储在腾讯云COS。
        public let imageUrl: String?

        /// 图片经过base64编码的内容。
        /// 最大不超过4M。与ImageUrl同时存在时优先使用ImageUrl字段。
        /// 注意：图片需要base64编码，并且要去掉编码头部。
        /// 支持的图片格式：PNG、JPG、JPEG、暂不支持GIF格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过5M。
        public let imageBase64: String?

        /// 人体检测模型开关，“true”为开启，“false”为关闭
        /// 开启后可先对图片中的人体进行检测之后再进行属性识别，默认为开启
        public let enableDetect: Bool?

        /// 人体优选开关，“true”为开启，“false”为关闭
        /// 开启后自动对检测质量低的人体进行优选过滤，有助于提高属性识别的准确率。
        /// 默认为开启，仅在人体检测开关开启时可配置，人体检测模型关闭时人体优选也关闭
        /// 如开启人体优选，检测到的人体分辨率需不大于1920*1080 pixel
        public let enablePreferred: Bool?

        public init(imageUrl: String? = nil, imageBase64: String? = nil, enableDetect: Bool? = nil, enablePreferred: Bool? = nil) {
            self.imageUrl = imageUrl
            self.imageBase64 = imageBase64
            self.enableDetect = enableDetect
            self.enablePreferred = enablePreferred
        }

        enum CodingKeys: String, CodingKey {
            case imageUrl = "ImageUrl"
            case imageBase64 = "ImageBase64"
            case enableDetect = "EnableDetect"
            case enablePreferred = "EnablePreferred"
        }
    }

    /// DetectSecurity返回参数结构体
    public struct DetectSecurityResponse: TCResponseModel {
        /// 识别到的人体属性信息。单个人体属性信息包括人体检测置信度，属性信息，人体检测框。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bodies: [AttributesForBody]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case bodies = "Bodies"
            case requestId = "RequestId"
        }
    }

    /// 安全属性识别
    ///
    /// 安全属性识别可对图片中人体安全防护属性进行识别，支持识别安全帽，反光衣，护目镜，工服，手套，工地安全带，口罩，抽烟，玩手机等多种属性。
    /// "被优选过滤"标签值在人体优选开关开启时才会返回。
    ///
    /// |序号 | 标签名称 | 标签值 |
    /// | :-----|  :----------   |:-----------------  |
    /// | 1 | 安全帽识别<div style="width: 70pt"> |无安全帽、有安全帽、被优选过滤|
    /// | 2 | 玩手机识别<div style="width: 70pt"> |没有电话、打电话、玩手机、被优选过滤|
    /// | 3 | 抽烟识别<div style="width: 70pt"> |没有抽烟、抽烟、被优选过滤	|
    /// | 4 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤|
    /// | 5 | 工地安全带识别<div style="width: 70pt"> |无工地安全带、工地安全带、被优选过滤	|
    /// | 6 | 手套识别<div style="width: 70pt"> |无手套、有手套、手套不确定、被优选过滤	|
    /// | 7 | 工服识别<div style="width: 70pt"> |无工服、有工服、被优选过滤|
    /// | 8 | 护目镜识别<div style="width: 70pt"> |无护目镜、有护目镜、被优选过滤|
    /// | 9 | 反光衣识别<div style="width: 70pt"> |无反光衣、有反光衣、被优选过滤|
    @inlinable
    public func detectSecurity(_ input: DetectSecurityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectSecurityResponse> {
        self.client.execute(action: "DetectSecurity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 安全属性识别
    ///
    /// 安全属性识别可对图片中人体安全防护属性进行识别，支持识别安全帽，反光衣，护目镜，工服，手套，工地安全带，口罩，抽烟，玩手机等多种属性。
    /// "被优选过滤"标签值在人体优选开关开启时才会返回。
    ///
    /// |序号 | 标签名称 | 标签值 |
    /// | :-----|  :----------   |:-----------------  |
    /// | 1 | 安全帽识别<div style="width: 70pt"> |无安全帽、有安全帽、被优选过滤|
    /// | 2 | 玩手机识别<div style="width: 70pt"> |没有电话、打电话、玩手机、被优选过滤|
    /// | 3 | 抽烟识别<div style="width: 70pt"> |没有抽烟、抽烟、被优选过滤	|
    /// | 4 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤|
    /// | 5 | 工地安全带识别<div style="width: 70pt"> |无工地安全带、工地安全带、被优选过滤	|
    /// | 6 | 手套识别<div style="width: 70pt"> |无手套、有手套、手套不确定、被优选过滤	|
    /// | 7 | 工服识别<div style="width: 70pt"> |无工服、有工服、被优选过滤|
    /// | 8 | 护目镜识别<div style="width: 70pt"> |无护目镜、有护目镜、被优选过滤|
    /// | 9 | 反光衣识别<div style="width: 70pt"> |无反光衣、有反光衣、被优选过滤|
    @inlinable
    public func detectSecurity(_ input: DetectSecurityRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectSecurityResponse {
        try await self.client.execute(action: "DetectSecurity", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 安全属性识别
    ///
    /// 安全属性识别可对图片中人体安全防护属性进行识别，支持识别安全帽，反光衣，护目镜，工服，手套，工地安全带，口罩，抽烟，玩手机等多种属性。
    /// "被优选过滤"标签值在人体优选开关开启时才会返回。
    ///
    /// |序号 | 标签名称 | 标签值 |
    /// | :-----|  :----------   |:-----------------  |
    /// | 1 | 安全帽识别<div style="width: 70pt"> |无安全帽、有安全帽、被优选过滤|
    /// | 2 | 玩手机识别<div style="width: 70pt"> |没有电话、打电话、玩手机、被优选过滤|
    /// | 3 | 抽烟识别<div style="width: 70pt"> |没有抽烟、抽烟、被优选过滤	|
    /// | 4 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤|
    /// | 5 | 工地安全带识别<div style="width: 70pt"> |无工地安全带、工地安全带、被优选过滤	|
    /// | 6 | 手套识别<div style="width: 70pt"> |无手套、有手套、手套不确定、被优选过滤	|
    /// | 7 | 工服识别<div style="width: 70pt"> |无工服、有工服、被优选过滤|
    /// | 8 | 护目镜识别<div style="width: 70pt"> |无护目镜、有护目镜、被优选过滤|
    /// | 9 | 反光衣识别<div style="width: 70pt"> |无反光衣、有反光衣、被优选过滤|
    @inlinable
    public func detectSecurity(imageUrl: String? = nil, imageBase64: String? = nil, enableDetect: Bool? = nil, enablePreferred: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectSecurityResponse> {
        self.detectSecurity(.init(imageUrl: imageUrl, imageBase64: imageBase64, enableDetect: enableDetect, enablePreferred: enablePreferred), region: region, logger: logger, on: eventLoop)
    }

    /// 安全属性识别
    ///
    /// 安全属性识别可对图片中人体安全防护属性进行识别，支持识别安全帽，反光衣，护目镜，工服，手套，工地安全带，口罩，抽烟，玩手机等多种属性。
    /// "被优选过滤"标签值在人体优选开关开启时才会返回。
    ///
    /// |序号 | 标签名称 | 标签值 |
    /// | :-----|  :----------   |:-----------------  |
    /// | 1 | 安全帽识别<div style="width: 70pt"> |无安全帽、有安全帽、被优选过滤|
    /// | 2 | 玩手机识别<div style="width: 70pt"> |没有电话、打电话、玩手机、被优选过滤|
    /// | 3 | 抽烟识别<div style="width: 70pt"> |没有抽烟、抽烟、被优选过滤	|
    /// | 4 | 口罩识别<div style="width: 70pt"> |无口罩、有口罩、口罩不确定、被优选过滤|
    /// | 5 | 工地安全带识别<div style="width: 70pt"> |无工地安全带、工地安全带、被优选过滤	|
    /// | 6 | 手套识别<div style="width: 70pt"> |无手套、有手套、手套不确定、被优选过滤	|
    /// | 7 | 工服识别<div style="width: 70pt"> |无工服、有工服、被优选过滤|
    /// | 8 | 护目镜识别<div style="width: 70pt"> |无护目镜、有护目镜、被优选过滤|
    /// | 9 | 反光衣识别<div style="width: 70pt"> |无反光衣、有反光衣、被优选过滤|
    @inlinable
    public func detectSecurity(imageUrl: String? = nil, imageBase64: String? = nil, enableDetect: Bool? = nil, enablePreferred: Bool? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectSecurityResponse {
        try await self.detectSecurity(.init(imageUrl: imageUrl, imageBase64: imageBase64, enableDetect: enableDetect, enablePreferred: enablePreferred), region: region, logger: logger, on: eventLoop)
    }
}
