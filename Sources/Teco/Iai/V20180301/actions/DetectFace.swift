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

extension Iai {
    /// DetectFace请求参数结构体
    public struct DetectFaceRequest: TCRequestModel {
        /// 最多处理的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为120。
        /// 此参数用于控制处理待检测图片中的人脸个数，值越小，处理速度越快。
        public let maxFaceNum: UInt64?

        /// 人脸长和宽的最小尺寸，单位为像素。
        /// 默认为34。建议不低于34。
        /// 低于MinFaceSize值的人脸不会被检测。
        public let minFaceSize: UInt64?

        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 是否需要返回人脸属性信息（FaceAttributesInfo）。0 为不需要返回，1 为需要返回。默认为 0。
        /// 非 1 值均视为不需要返回，此时 FaceAttributesInfo 不具备参考意义。
        /// 最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 FaceAttributesInfo 不具备参考意义。
        /// 提取人脸属性信息较为耗时，如不需要人脸属性信息，建议关闭此项功能，加快人脸检测速度。
        public let needFaceAttributes: UInt64?

        /// 是否开启质量检测。0 为关闭，1 为开启。默认为 0。
        /// 非 1 值均视为不进行质量检测。
        /// 最多返回面积最大的 30 张人脸质量分信息，超过 30 张人脸（第 31 张及以后的人脸）的 FaceQualityInfo不具备参考意义。
        /// 建议：人脸入库操作建议开启此功能。
        public let needQualityDetection: UInt64?

        /// 人脸识别服务所用的算法模型版本。目前入参支持 “2.0”和“3.0“ 两个输入。
        /// 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        /// 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        public let faceModelVersion: String?

        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: UInt64?

        public init(maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, image: String? = nil, url: String? = nil, needFaceAttributes: UInt64? = nil, needQualityDetection: UInt64? = nil, faceModelVersion: String? = nil, needRotateDetection: UInt64? = nil) {
            self.maxFaceNum = maxFaceNum
            self.minFaceSize = minFaceSize
            self.image = image
            self.url = url
            self.needFaceAttributes = needFaceAttributes
            self.needQualityDetection = needQualityDetection
            self.faceModelVersion = faceModelVersion
            self.needRotateDetection = needRotateDetection
        }

        enum CodingKeys: String, CodingKey {
            case maxFaceNum = "MaxFaceNum"
            case minFaceSize = "MinFaceSize"
            case image = "Image"
            case url = "Url"
            case needFaceAttributes = "NeedFaceAttributes"
            case needQualityDetection = "NeedQualityDetection"
            case faceModelVersion = "FaceModelVersion"
            case needRotateDetection = "NeedRotateDetection"
        }
    }

    /// DetectFace返回参数结构体
    public struct DetectFaceResponse: TCResponseModel {
        /// 请求的图片宽度。
        public let imageWidth: Int64

        /// 请求的图片高度。
        public let imageHeight: Int64

        /// 人脸信息列表。包含人脸坐标信息、属性信息（若需要）、质量分信息（若需要）。
        public let faceInfos: [FaceInfo]

        /// 人脸识别服务所用的算法模型版本。
        ///
        /// 目前入参支持 “2.0”和“3.0“ 两个输入。
        ///
        /// 2020年4月2日开始，默认为“3.0”，之前使用过本接口的账号若未填写本参数默认为“2.0”。
        ///
        /// 2020年11月26日后开通服务的账号仅支持输入“3.0”。
        ///
        /// 不同算法模型版本对应的人脸识别算法不同，新版本的整体效果会优于旧版本，建议使用“3.0”版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageWidth = "ImageWidth"
            case imageHeight = "ImageHeight"
            case faceInfos = "FaceInfos"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 人脸检测与分析
    ///
    /// 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。
    ///
    /// 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：
    ///
    /// 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。
    ///
    /// 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。
    ///
    /// 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。
    ///
    /// 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFace(_ input: DetectFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectFaceResponse> {
        self.client.execute(action: "DetectFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸检测与分析
    ///
    /// 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。
    ///
    /// 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：
    ///
    /// 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。
    ///
    /// 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。
    ///
    /// 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。
    ///
    /// 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFace(_ input: DetectFaceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectFaceResponse {
        try await self.client.execute(action: "DetectFace", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸检测与分析
    ///
    /// 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。
    ///
    /// 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：
    ///
    /// 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。
    ///
    /// 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。
    ///
    /// 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。
    ///
    /// 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFace(maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, image: String? = nil, url: String? = nil, needFaceAttributes: UInt64? = nil, needQualityDetection: UInt64? = nil, faceModelVersion: String? = nil, needRotateDetection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectFaceResponse> {
        self.detectFace(.init(maxFaceNum: maxFaceNum, minFaceSize: minFaceSize, image: image, url: url, needFaceAttributes: needFaceAttributes, needQualityDetection: needQualityDetection, faceModelVersion: faceModelVersion, needRotateDetection: needRotateDetection), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸检测与分析
    ///
    /// 检测给定图片中的人脸（Face）的位置、相应的面部属性和人脸质量信息，位置包括 (x，y，w，h)，面部属性包括性别（gender）、年龄（age）、表情（expression）、魅力（beauty）、眼镜（glass）、发型（hair）、口罩（mask）和姿态 (pitch，roll，yaw)，人脸质量信息包括整体质量分（score）、模糊分（sharpness）、光照分（brightness）和五官遮挡分（completeness）。
    ///
    /// 其中，人脸质量信息主要用于评价输入的人脸图片的质量。在使用人脸识别服务时，建议您对输入的人脸图片进行质量检测，提升后续业务处理的效果。该功能的应用场景包括：
    ///
    /// 1） 人员库[创建人员](https://cloud.tencent.com/document/product/867/32793)/[增加人脸](https://cloud.tencent.com/document/product/867/32795)：保证人员人脸信息的质量，便于后续的业务处理。
    ///
    /// 2） [人脸搜索](https://cloud.tencent.com/document/product/867/32798)：保证输入的图片质量，快速准确匹配到对应的人员。
    ///
    /// 3） [人脸验证](https://cloud.tencent.com/document/product/867/32806)：保证人脸信息的质量，避免明明是本人却认证不通过的情况。
    ///
    /// 4） [人脸融合](https://cloud.tencent.com/product/facefusion)：保证上传的人脸质量，人脸融合的效果更好。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFace(maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, image: String? = nil, url: String? = nil, needFaceAttributes: UInt64? = nil, needQualityDetection: UInt64? = nil, faceModelVersion: String? = nil, needRotateDetection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectFaceResponse {
        try await self.detectFace(.init(maxFaceNum: maxFaceNum, minFaceSize: minFaceSize, image: image, url: url, needFaceAttributes: needFaceAttributes, needQualityDetection: needQualityDetection, faceModelVersion: faceModelVersion, needRotateDetection: needRotateDetection), region: region, logger: logger, on: eventLoop)
    }
}
