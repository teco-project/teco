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

extension Ocr {
    /// RecognizeHealthCodeOCR请求参数结构体
    public struct RecognizeHealthCodeOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经Base64编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 支持的图片格式：PNG、JPG、JPEG，暂不支持 GIF 格式。
        /// 支持的图片大小：所下载图片经 Base64 编码后不超过 7M。图片下载时间不超过 3 秒。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。
        /// 非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 需要识别的健康码类型列表，为空或不填表示默认为自动识别。
        /// 0:自动识别
        public let type: Int64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, type: Int64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.type = type
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case type = "Type"
        }
    }

    /// RecognizeHealthCodeOCR返回参数结构体
    public struct RecognizeHealthCodeOCRResponse: TCResponseModel {
        /// 持码人姓名，如：王*（允许返回空值）
        public let name: String

        /// 持码人身份证号，如：11**************01（允许返回空值）
        public let idNumber: String

        /// 健康码更新时间（允许返回空值）
        public let time: String

        /// 健康码颜色：绿色、黄色、红色（允许返回空值）
        public let color: String

        /// 核酸检测间隔时长（允许返回空值）
        public let testingInterval: String

        /// 核酸检测结果：阴性、阳性、暂无核酸检测记录（允许返回空值）
        public let testingResult: String

        /// 核酸检测时间（允许返回空值）
        public let testingTime: String

        /// 疫苗接种信息，返回接种针数或接种情况（允许返回空值）
        public let vaccination: String

        /// 场所名称（允许返回空值）
        public let spotName: String

        /// 疫苗接种时间
        public let vaccinationTime: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case idNumber = "IDNumber"
            case time = "Time"
            case color = "Color"
            case testingInterval = "TestingInterval"
            case testingResult = "TestingResult"
            case testingTime = "TestingTime"
            case vaccination = "Vaccination"
            case spotName = "SpotName"
            case vaccinationTime = "VaccinationTime"
            case requestId = "RequestId"
        }
    }

    /// 健康码识别
    ///
    /// 本接口支持北京、上海、广东、江苏、吉林、黑龙江、天津、辽宁、浙江、河南、四川、贵州、山东、安徽、福建、江西、湖北、湖南等省份健康码的识别，包括持码人姓名、持码人身份证号、健康码更新时间、健康码颜色、核酸检测结果、核酸检测间隔时长、核酸检测时间，疫苗接种信息，八个字段的识别结果输出。不同省市健康码显示的字段信息有所不同，上述字段的识别结果可能为空，以图片上具体展示的信息为准。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeHealthCodeOCR(_ input: RecognizeHealthCodeOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeHealthCodeOCRResponse> {
        self.client.execute(action: "RecognizeHealthCodeOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 健康码识别
    ///
    /// 本接口支持北京、上海、广东、江苏、吉林、黑龙江、天津、辽宁、浙江、河南、四川、贵州、山东、安徽、福建、江西、湖北、湖南等省份健康码的识别，包括持码人姓名、持码人身份证号、健康码更新时间、健康码颜色、核酸检测结果、核酸检测间隔时长、核酸检测时间，疫苗接种信息，八个字段的识别结果输出。不同省市健康码显示的字段信息有所不同，上述字段的识别结果可能为空，以图片上具体展示的信息为准。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeHealthCodeOCR(_ input: RecognizeHealthCodeOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeHealthCodeOCRResponse {
        try await self.client.execute(action: "RecognizeHealthCodeOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 健康码识别
    ///
    /// 本接口支持北京、上海、广东、江苏、吉林、黑龙江、天津、辽宁、浙江、河南、四川、贵州、山东、安徽、福建、江西、湖北、湖南等省份健康码的识别，包括持码人姓名、持码人身份证号、健康码更新时间、健康码颜色、核酸检测结果、核酸检测间隔时长、核酸检测时间，疫苗接种信息，八个字段的识别结果输出。不同省市健康码显示的字段信息有所不同，上述字段的识别结果可能为空，以图片上具体展示的信息为准。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeHealthCodeOCR(imageBase64: String? = nil, imageUrl: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<RecognizeHealthCodeOCRResponse> {
        self.recognizeHealthCodeOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, type: type), region: region, logger: logger, on: eventLoop)
    }

    /// 健康码识别
    ///
    /// 本接口支持北京、上海、广东、江苏、吉林、黑龙江、天津、辽宁、浙江、河南、四川、贵州、山东、安徽、福建、江西、湖北、湖南等省份健康码的识别，包括持码人姓名、持码人身份证号、健康码更新时间、健康码颜色、核酸检测结果、核酸检测间隔时长、核酸检测时间，疫苗接种信息，八个字段的识别结果输出。不同省市健康码显示的字段信息有所不同，上述字段的识别结果可能为空，以图片上具体展示的信息为准。
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func recognizeHealthCodeOCR(imageBase64: String? = nil, imageUrl: String? = nil, type: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeHealthCodeOCRResponse {
        try await self.recognizeHealthCodeOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, type: type), region: region, logger: logger, on: eventLoop)
    }
}
