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
    /// SearchFacesReturnsByGroup请求参数结构体
    public struct SearchFacesReturnsByGroupRequest: TCRequest {
        /// 希望搜索的人员库列表，上限60个。数组元素取值为创建人员库接口中的GroupId。
        /// 不可同时搜索不同算法模型版本（FaceModelVersion）的人员库。
        public let groupIds: [String]

        /// 图片 base64 数据，base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。所有格式的图片短边像素不小于64。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let image: String?

        /// 图片的 Url 。对应图片 base64 编码后大小不可超过5M。
        /// jpg格式长边像素不可超过4000，其他格式图片长边像素不可超2000。所有格式的图片短边像素不小于64。
        /// Url、Image必须提供一个，如果都提供，只使用 Url。
        /// 图片存储于腾讯云的Url可保障更高下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的Url速度和稳定性可能受一定影响。
        /// 支持PNG、JPG、JPEG、BMP，不支持 GIF 图片。
        public let url: String?

        /// 最多识别的人脸数目。默认值为1（仅检测图片中面积最大的那张人脸），最大值为10。
        /// MaxFaceNum用于，当输入的待识别图片包含多张人脸时，设定要搜索的人脸的数量。
        /// 例：输入的Image或Url中的图片包含多张人脸，设MaxFaceNum=5，则会识别图片中面积最大的5张人脸。
        public let maxFaceNum: UInt64?

        /// 人脸长和宽的最小尺寸，单位为像素。默认为34。低于34将影响搜索精度。建议设置为80。
        public let minFaceSize: UInt64?

        /// 被检测到的人脸，对应最多返回的最相似人员数目。默认值为5，最大值为10。
        /// 例，设MaxFaceNum为3，MaxPersonNumPerGroup为5，GroupIds长度为3，则最多可能返回3*5*3=45个人员。
        public let maxPersonNumPerGroup: UInt64?

        /// 是否返回人员具体信息。0 为关闭，1 为开启。默认为 0。其他非0非1值默认为0
        public let needPersonInfo: Int64?

        /// 图片质量控制。
        /// 0: 不进行控制；
        /// 1:较低的质量要求，图像存在非常模糊，眼睛鼻子嘴巴遮挡至少其中一种或多种的情况；
        /// 2: 一般的质量要求，图像存在偏亮，偏暗，模糊或一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，至少其中三种的情况；
        /// 3: 较高的质量要求，图像存在偏亮，偏暗，一般模糊，眉毛遮挡，脸颊遮挡，下巴遮挡，其中一到两种的情况；
        /// 4: 很高的质量要求，各个维度均为最好或最多在某一维度上存在轻微问题；
        /// 默认 0。
        /// 若图片质量不满足要求，则返回结果中会提示图片质量检测不符要求。
        public let qualityControl: UInt64?

        /// 出参Score中，只有大于等于FaceMatchThreshold值的结果才会返回。
        /// 默认为0。
        /// 取值范围[0.0,100.0) 。
        public let faceMatchThreshold: Float?

        /// 是否开启图片旋转识别支持。0为不开启，1为开启。默认为0。本参数的作用为，当图片中的人脸被旋转且图片没有exif信息时，如果不开启图片旋转识别支持则无法正确检测、识别图片中的人脸。若您确认图片包含exif信息或者您确认输入图中人脸不会出现被旋转情况，请不要开启本参数。开启后，整体耗时将可能增加数百毫秒。
        public let needRotateDetection: UInt64?

        public init(groupIds: [String], image: String? = nil, url: String? = nil, maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, maxPersonNumPerGroup: UInt64? = nil, needPersonInfo: Int64? = nil, qualityControl: UInt64? = nil, faceMatchThreshold: Float? = nil, needRotateDetection: UInt64? = nil) {
            self.groupIds = groupIds
            self.image = image
            self.url = url
            self.maxFaceNum = maxFaceNum
            self.minFaceSize = minFaceSize
            self.maxPersonNumPerGroup = maxPersonNumPerGroup
            self.needPersonInfo = needPersonInfo
            self.qualityControl = qualityControl
            self.faceMatchThreshold = faceMatchThreshold
            self.needRotateDetection = needRotateDetection
        }

        enum CodingKeys: String, CodingKey {
            case groupIds = "GroupIds"
            case image = "Image"
            case url = "Url"
            case maxFaceNum = "MaxFaceNum"
            case minFaceSize = "MinFaceSize"
            case maxPersonNumPerGroup = "MaxPersonNumPerGroup"
            case needPersonInfo = "NeedPersonInfo"
            case qualityControl = "QualityControl"
            case faceMatchThreshold = "FaceMatchThreshold"
            case needRotateDetection = "NeedRotateDetection"
        }
    }

    /// SearchFacesReturnsByGroup返回参数结构体
    public struct SearchFacesReturnsByGroupResponse: TCResponse {
        /// 搜索的人员库中包含的人脸数。
        public let faceNum: UInt64

        /// 识别结果。
        public let resultsReturnsByGroup: [ResultsReturnsByGroup]

        /// 人脸识别所用的算法模型版本。
        public let faceModelVersion: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case faceNum = "FaceNum"
            case resultsReturnsByGroup = "ResultsReturnsByGroup"
            case faceModelVersion = "FaceModelVersion"
            case requestId = "RequestId"
        }
    }

    /// 人脸搜索分库返回
    ///
    /// 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。
    ///
    /// 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。
    ///
    /// 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。
    ///
    /// 与[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。
    ///
    /// 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/45015)结合使用。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 不可同时搜索不同算法模型版本（FaceModelVersion）的人员库。
    @inlinable
    public func searchFacesReturnsByGroup(_ input: SearchFacesReturnsByGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFacesReturnsByGroupResponse> {
        self.client.execute(action: "SearchFacesReturnsByGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 人脸搜索分库返回
    ///
    /// 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。
    ///
    /// 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。
    ///
    /// 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。
    ///
    /// 与[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。
    ///
    /// 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/45015)结合使用。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 不可同时搜索不同算法模型版本（FaceModelVersion）的人员库。
    @inlinable
    public func searchFacesReturnsByGroup(_ input: SearchFacesReturnsByGroupRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchFacesReturnsByGroupResponse {
        try await self.client.execute(action: "SearchFacesReturnsByGroup", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 人脸搜索分库返回
    ///
    /// 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。
    ///
    /// 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。
    ///
    /// 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。
    ///
    /// 与[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。
    ///
    /// 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/45015)结合使用。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 不可同时搜索不同算法模型版本（FaceModelVersion）的人员库。
    @inlinable
    public func searchFacesReturnsByGroup(groupIds: [String], image: String? = nil, url: String? = nil, maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, maxPersonNumPerGroup: UInt64? = nil, needPersonInfo: Int64? = nil, qualityControl: UInt64? = nil, faceMatchThreshold: Float? = nil, needRotateDetection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SearchFacesReturnsByGroupResponse> {
        self.searchFacesReturnsByGroup(.init(groupIds: groupIds, image: image, url: url, maxFaceNum: maxFaceNum, minFaceSize: minFaceSize, maxPersonNumPerGroup: maxPersonNumPerGroup, needPersonInfo: needPersonInfo, qualityControl: qualityControl, faceMatchThreshold: faceMatchThreshold, needRotateDetection: needRotateDetection), region: region, logger: logger, on: eventLoop)
    }

    /// 人脸搜索分库返回
    ///
    /// 用于对一张待识别的人脸图片，在一个或多个人员库中识别出最相似的 TopK 人员，按照**人员库的维度**以人员相似度从大到小顺序排列。
    ///
    /// 支持一次性识别图片中的最多 10 张人脸，支持跨人员库（Group）搜索。
    ///
    /// 单次搜索的人员库人脸总数量和人员库的算法模型版本（FaceModelVersion）相关。算法模型版本为2.0的人员库，单次搜索人员库人脸总数量不得超过 100 万张；算法模型版本为3.0的人员库，单次搜索人员库人脸总数量不得超过 300 万张。
    ///
    /// 与[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口不同的是，本接口将该人员（Person）下的每个人脸（Face）都作为单独个体进行验证，而[人员搜索](https://cloud.tencent.com/document/product/867/44992)及[人员搜索按库返回](https://cloud.tencent.com/document/product/867/44991)接口 会将该人员（Person）下的所有人脸（Face）进行融合特征处理，即若某个Person下有4张 Face，本接口会将4张 Face 的特征进行融合处理，生成对应这个 Person 的特征，使搜索更加准确。
    ///
    /// 本接口需与[人员库管理相关接口](https://cloud.tencent.com/document/product/867/45015)结合使用。
    /// - 公共参数中的签名方式请使用V3版本，即配置SignatureMethod参数为TC3-HMAC-SHA256。
    /// - 不可同时搜索不同算法模型版本（FaceModelVersion）的人员库。
    @inlinable
    public func searchFacesReturnsByGroup(groupIds: [String], image: String? = nil, url: String? = nil, maxFaceNum: UInt64? = nil, minFaceSize: UInt64? = nil, maxPersonNumPerGroup: UInt64? = nil, needPersonInfo: Int64? = nil, qualityControl: UInt64? = nil, faceMatchThreshold: Float? = nil, needRotateDetection: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SearchFacesReturnsByGroupResponse {
        try await self.searchFacesReturnsByGroup(.init(groupIds: groupIds, image: image, url: url, maxFaceNum: maxFaceNum, minFaceSize: minFaceSize, maxPersonNumPerGroup: maxPersonNumPerGroup, needPersonInfo: needPersonInfo, qualityControl: qualityControl, faceMatchThreshold: faceMatchThreshold, needRotateDetection: needRotateDetection), region: region, logger: logger, on: eventLoop)
    }
}
