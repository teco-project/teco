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
    /// DetectFaceAttributes请求参数结构体
    public struct DetectFaceAttributesRequest: TCRequestModel {
        /// 最多处理的人脸数目。
        /// 默认值为1（仅检测图片中面积最大的那张人脸），最大值为120。
        /// 此参数用于控制处理待检测图片中的人脸个数，值越小，处理速度越快。
        public let maxFaceNum: UInt64?

        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。
        /// 对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 是否返回年龄、性别、情绪等属性。
        /// 合法值为（大小写不敏感）：None、Age、Beauty、Emotion、Eye、Eyebrow、
        /// Gender、Hair、Hat、Headpose、Mask、Mouth、Moustache、Nose、Shape、Skin、Smile。
        /// None为不需要返回。默认为 None。即FaceAttributesType属性为空时，各属性返回值为0。
        /// 需要将属性组成一个用逗号分隔的字符串，属性之间的顺序没有要求。
        /// 关于各属性的详细描述，参见下文出参。
        /// 最多返回面积最大的 5 张人脸属性信息，超过 5 张人脸（第 6 张及以后的人脸）的 AttributesInfo 不具备参考意义。
        public let faceAttributesType: String?

        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: UInt64?

        /// 人脸识别服务所用的算法模型版本。本接口仅支持“3.0”输入
        public let faceModelVersion: String?

        public init(maxFaceNum: UInt64? = nil, image: String? = nil, url: String? = nil, faceAttributesType: String? = nil, needRotateDetection: UInt64? = nil, faceModelVersion: String? = nil) {
            self.maxFaceNum = maxFaceNum
            self.image = image
            self.url = url
            self.faceAttributesType = faceAttributesType
            self.needRotateDetection = needRotateDetection
            self.faceModelVersion = faceModelVersion
        }

        enum CodingKeys: String, CodingKey {
            case maxFaceNum = "MaxFaceNum"
            case image = "Image"
            case url = "Url"
            case faceAttributesType = "FaceAttributesType"
            case needRotateDetection = "NeedRotateDetection"
            case faceModelVersion = "FaceModelVersion"
        }
    }

    /// DetectFaceAttributes返回参数结构体
    public struct DetectFaceAttributesResponse: TCResponseModel {
        /// 请求的图片宽度。
        public let imageWidth: UInt64

        /// 请求的图片高度。
        public let imageHeight: UInt64

        /// 人脸信息列表。
        public let faceDetailInfos: [FaceDetailInfo]

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case imageWidth = "ImageWidth"
            case imageHeight = "ImageHeight"
            case faceDetailInfos = "FaceDetailInfos"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 人脸检测与属性分析
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
    ///
    /// >
    /// - 本接口是[人脸检测与分析](https://cloud.tencent.com/document/product/867/44989)的升级，具体在于：
    /// 1.本接口可以指定需要计算返回的人脸属性，避免无效计算，降低耗时；
    /// 2.本接口支持更多属性细项数，也会持续增加更多功能。
    /// 请您使用本接口完成相应的人脸检测与属性分析需求。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFaceAttributes(_ input: DetectFaceAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectFaceAttributesResponse> {
        self.client.execute(action: "DetectFaceAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸检测与属性分析
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
    ///
    /// >
    /// - 本接口是[人脸检测与分析](https://cloud.tencent.com/document/product/867/44989)的升级，具体在于：
    /// 1.本接口可以指定需要计算返回的人脸属性，避免无效计算，降低耗时；
    /// 2.本接口支持更多属性细项数，也会持续增加更多功能。
    /// 请您使用本接口完成相应的人脸检测与属性分析需求。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFaceAttributes(_ input: DetectFaceAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectFaceAttributesResponse {
        try await self.client.execute(action: "DetectFaceAttributes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸检测与属性分析
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
    ///
    /// >
    /// - 本接口是[人脸检测与分析](https://cloud.tencent.com/document/product/867/44989)的升级，具体在于：
    /// 1.本接口可以指定需要计算返回的人脸属性，避免无效计算，降低耗时；
    /// 2.本接口支持更多属性细项数，也会持续增加更多功能。
    /// 请您使用本接口完成相应的人脸检测与属性分析需求。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFaceAttributes(maxFaceNum: UInt64? = nil, image: String? = nil, url: String? = nil, faceAttributesType: String? = nil, needRotateDetection: UInt64? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DetectFaceAttributesResponse> {
        self.detectFaceAttributes(.init(maxFaceNum: maxFaceNum, image: image, url: url, faceAttributesType: faceAttributesType, needRotateDetection: needRotateDetection, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸检测与属性分析
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
    ///
    /// >
    /// - 本接口是[人脸检测与分析](https://cloud.tencent.com/document/product/867/44989)的升级，具体在于：
    /// 1.本接口可以指定需要计算返回的人脸属性，避免无效计算，降低耗时；
    /// 2.本接口支持更多属性细项数，也会持续增加更多功能。
    /// 请您使用本接口完成相应的人脸检测与属性分析需求。
    ///
    /// >
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    @inlinable
    public func detectFaceAttributes(maxFaceNum: UInt64? = nil, image: String? = nil, url: String? = nil, faceAttributesType: String? = nil, needRotateDetection: UInt64? = nil, faceModelVersion: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DetectFaceAttributesResponse {
        try await self.detectFaceAttributes(.init(maxFaceNum: maxFaceNum, image: image, url: url, faceAttributesType: faceAttributesType, needRotateDetection: needRotateDetection, faceModelVersion: faceModelVersion), region: region, logger: logger, on: eventLoop)
    }
}
