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
    /// CompareMaskFace请求参数结构体
    public struct CompareMaskFaceRequest: TCRequestModel {
        /// A 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let imageA: String?

        /// B 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let imageB: String?

        /// A 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// A 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let urlA: String?

        /// B 图片的 Url ，对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// B 图片的 Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 若图片中包含多张人脸，只选取其中人脸面积最大的人脸。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let urlB: String?

        /// 人脸识别服务所用的算法模型版本。该接口只支持"3.0"
        public let faceModelVersion: String?

        /// 图片质量控制。
        /// 0: 不进行控制；
        /// 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        /// 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        /// 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        /// 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        /// 默认 0。
        /// 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        public let qualityControl: UInt64?

        public init(imageA: String? = nil, imageB: String? = nil, urlA: String? = nil, urlB: String? = nil, faceModelVersion: String? = nil, qualityControl: UInt64? = nil) {
            self.imageA = imageA
            self.imageB = imageB
            self.urlA = urlA
            self.urlB = urlB
            self.faceModelVersion = faceModelVersion
            self.qualityControl = qualityControl
        }

        enum CodingKeys: String, CodingKey {
            case imageA = "ImageA"
            case imageB = "ImageB"
            case urlA = "UrlA"
            case urlB = "UrlB"
            case faceModelVersion = "FaceModelVersion"
            case qualityControl = "QualityControl"
        }
    }

    /// CompareMaskFace返回参数结构体
    public struct CompareMaskFaceResponse: TCResponseModel {
        /// 两张图片中人脸的相似度分数。
        /// 不同算法版本返回的相似度分数不同。
        /// 若需要验证两张图片中人脸是否为同一人，3.0版本误识率千分之一对应分数为40分，误识率万分之一对应分数为50分，误识率十万分之一对应分数为60分。  一般超过50分则可认定为同一人。
        /// 2.0版本误识率千分之一对应分数为70分，误识率万分之一对应分数为80分，误识率十万分之一对应分数为90分。 一般超过80分则可认定为同一人。
        /// 若需要验证两张图片中的人脸是否为同一人，建议使用人脸验证接口。
        public let score: Float

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case score = "Score"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 防疫场景人脸比对
    ///
    /// 对两张图片中的人脸进行相似度比对，返回人脸相似度分数。
    ///
    /// 防疫场景人脸比对接口可在人脸戴口罩情况下使用，口罩遮挡程度最高可以遮挡鼻尖。
    ///
    /// 如图片人脸不存在防疫场景下戴口罩的情况，建议使用人脸比对服务。
    @inlinable
    public func compareMaskFace(_ input: CompareMaskFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompareMaskFaceResponse> {
        self.client.execute(action: "CompareMaskFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 防疫场景人脸比对
    ///
    /// 对两张图片中的人脸进行相似度比对，返回人脸相似度分数。
    ///
    /// 防疫场景人脸比对接口可在人脸戴口罩情况下使用，口罩遮挡程度最高可以遮挡鼻尖。
    ///
    /// 如图片人脸不存在防疫场景下戴口罩的情况，建议使用人脸比对服务。
    @inlinable
    public func compareMaskFace(_ input: CompareMaskFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompareMaskFaceResponse {
        try await self.client.execute(action: "CompareMaskFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 防疫场景人脸比对
    ///
    /// 对两张图片中的人脸进行相似度比对，返回人脸相似度分数。
    ///
    /// 防疫场景人脸比对接口可在人脸戴口罩情况下使用，口罩遮挡程度最高可以遮挡鼻尖。
    ///
    /// 如图片人脸不存在防疫场景下戴口罩的情况，建议使用人脸比对服务。
    @inlinable
    public func compareMaskFace(imageA: String? = nil, imageB: String? = nil, urlA: String? = nil, urlB: String? = nil, faceModelVersion: String? = nil, qualityControl: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CompareMaskFaceResponse> {
        self.compareMaskFace(CompareMaskFaceRequest(imageA: imageA, imageB: imageB, urlA: urlA, urlB: urlB, faceModelVersion: faceModelVersion, qualityControl: qualityControl), region: region, logger: logger, on: eventLoop)
    }

    /// 防疫场景人脸比对
    ///
    /// 对两张图片中的人脸进行相似度比对，返回人脸相似度分数。
    ///
    /// 防疫场景人脸比对接口可在人脸戴口罩情况下使用，口罩遮挡程度最高可以遮挡鼻尖。
    ///
    /// 如图片人脸不存在防疫场景下戴口罩的情况，建议使用人脸比对服务。
    @inlinable
    public func compareMaskFace(imageA: String? = nil, imageB: String? = nil, urlA: String? = nil, urlB: String? = nil, faceModelVersion: String? = nil, qualityControl: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CompareMaskFaceResponse {
        try await self.compareMaskFace(CompareMaskFaceRequest(imageA: imageA, imageB: imageB, urlA: urlA, urlB: urlB, faceModelVersion: faceModelVersion, qualityControl: qualityControl), region: region, logger: logger, on: eventLoop)
    }
}
