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

extension Iai {
    /// DetectLiveFace请求参数结构体
    public struct DetectLiveFaceRequest: TCRequestModel {
        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。（图片的宽高比请接近3:4，不符合宽高比的图片返回的分值不具备参考意义）。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// （图片的宽高比请接近 3:4，不符合宽高比的图片返回的分值不具备参考意义）
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 人脸识别服务所用的算法模型版本。
        ///
        /// 目前入参支持 “2.0”和“3.0“ 两个输入。
        ///
        /// 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        ///
        /// 2020年11月26日后开通服务的账号仅支持输入“3.0”。
        ///
        /// 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        public let faceModelVersion: String?

        public init(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil) {
            self.image = image
            self.url = url
            self.faceModelVersion = faceModelVersion
        }

        enum CodingKeys: String, CodingKey {
            case image = "Image"
            case url = "Url"
            case faceModelVersion = "FaceModelVersion"
        }
    }

    /// DetectLiveFace返回参数结构体
    public struct DetectLiveFaceResponse: TCResponseModel {
        /// 活体打分，取值范围 [0,100]，分数一般落于[80, 100]区间内，0分也为常见值。推荐相大于 87 时可判断为活体。可根据具体场景自行调整阈值。
        /// 本字段当且仅当FaceModelVersion为2.0时才具备参考意义。
        public let score: Float

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 活体检测是否通过。
        /// 本字段只有FaceModelVersion为3.0时才具备参考意义。
        public let isLiveness: Bool

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case faceModelVersion = "FaceModelVersion"
            case isLiveness = "IsLiveness"
            case requestId = "RequestId"
        }
    }

    /// 人脸静态活体检测
    ///
    /// 用于对用户上传的静态图片进行人脸活体检测。与动态活体检测的区别是：静态活体检测中，用户不需要通过唇语或摇头眨眼等动作来识别。
    ///
    /// 静态活体检测适用于手机自拍的场景，或对防攻击要求不高的场景。如果对活体检测有更高安全性要求，请使用[人脸核身·云智慧眼](https://cloud.tencent.com/product/faceid)产品。
    ///
    /// >
    /// - 图片的宽高比请接近3：4，不符合宽高比的图片返回的分值不具备参考意义。本接口适用于类手机自拍场景，非类手机自拍照返回的分值不具备参考意义。
    ///
    /// >
    /// - 使用过程中建议正对摄像头，不要距离太远，使面部可以完整地显示在识别的框内，识别过程中不要移动设备或遮挡面部。不要选择光线过强或过弱的环境进行面部识别，识别时不要添加任何滤镜。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLiveFace(_ input: DetectLiveFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLiveFaceResponse> {
        self.client.execute(action: "DetectLiveFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸静态活体检测
    ///
    /// 用于对用户上传的静态图片进行人脸活体检测。与动态活体检测的区别是：静态活体检测中，用户不需要通过唇语或摇头眨眼等动作来识别。
    ///
    /// 静态活体检测适用于手机自拍的场景，或对防攻击要求不高的场景。如果对活体检测有更高安全性要求，请使用[人脸核身·云智慧眼](https://cloud.tencent.com/product/faceid)产品。
    ///
    /// >
    /// - 图片的宽高比请接近3：4，不符合宽高比的图片返回的分值不具备参考意义。本接口适用于类手机自拍场景，非类手机自拍照返回的分值不具备参考意义。
    ///
    /// >
    /// - 使用过程中建议正对摄像头，不要距离太远，使面部可以完整地显示在识别的框内，识别过程中不要移动设备或遮挡面部。不要选择光线过强或过弱的环境进行面部识别，识别时不要添加任何滤镜。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLiveFace(_ input: DetectLiveFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLiveFaceResponse {
        try await self.client.execute(action: "DetectLiveFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸静态活体检测
    ///
    /// 用于对用户上传的静态图片进行人脸活体检测。与动态活体检测的区别是：静态活体检测中，用户不需要通过唇语或摇头眨眼等动作来识别。
    ///
    /// 静态活体检测适用于手机自拍的场景，或对防攻击要求不高的场景。如果对活体检测有更高安全性要求，请使用[人脸核身·云智慧眼](https://cloud.tencent.com/product/faceid)产品。
    ///
    /// >
    /// - 图片的宽高比请接近3：4，不符合宽高比的图片返回的分值不具备参考意义。本接口适用于类手机自拍场景，非类手机自拍照返回的分值不具备参考意义。
    ///
    /// >
    /// - 使用过程中建议正对摄像头，不要距离太远，使面部可以完整地显示在识别的框内，识别过程中不要移动设备或遮挡面部。不要选择光线过强或过弱的环境进行面部识别，识别时不要添加任何滤镜。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLiveFace(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectLiveFaceResponse> {
        self.detectLiveFace(.init(image: image, url: url, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸静态活体检测
    ///
    /// 用于对用户上传的静态图片进行人脸活体检测。与动态活体检测的区别是：静态活体检测中，用户不需要通过唇语或摇头眨眼等动作来识别。
    ///
    /// 静态活体检测适用于手机自拍的场景，或对防攻击要求不高的场景。如果对活体检测有更高安全性要求，请使用[人脸核身·云智慧眼](https://cloud.tencent.com/product/faceid)产品。
    ///
    /// >
    /// - 图片的宽高比请接近3：4，不符合宽高比的图片返回的分值不具备参考意义。本接口适用于类手机自拍场景，非类手机自拍照返回的分值不具备参考意义。
    ///
    /// >
    /// - 使用过程中建议正对摄像头，不要距离太远，使面部可以完整地显示在识别的框内，识别过程中不要移动设备或遮挡面部。不要选择光线过强或过弱的环境进行面部识别，识别时不要添加任何滤镜。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectLiveFace(image: String? = nil, url: String? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectLiveFaceResponse {
        try await self.detectLiveFace(.init(image: image, url: url, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }
}
