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

extension Ocr {
    /// EduPaperOCR请求参数结构体
    public struct EduPaperOCRRequest: TCRequestModel {
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

        /// 扩展配置信息。
        /// 配置格式：{"option1":value1,"option2":value2}
        /// 1. task_type：任务类型【0: 关闭版式分析与处理 1: 开启版式分析处理】可选参数，Int32类型，默认值为1
        /// 2. is_structuralization：是否结构化输出【true：返回包体同时返回通用和结构化输出  false：返回包体返回通用输出】 可选参数，Bool类型，默认值为true
        /// 3. if_readable_format：是否按照版式整合通用文本/公式输出结果 可选参数，Bool类型，默认值为false
        /// 示例：
        /// {"task_type": 1,"is_structuralization": true,"if_readable_format": true}
        public let config: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.config = config
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case config = "Config"
        }
    }

    /// EduPaperOCR返回参数结构体
    public struct EduPaperOCRResponse: TCResponseModel {
        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let eduPaperInfos: [TextEduPaper]

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。
        public let angle: Int64

        /// 结构化方式输出，具体内容请点击左侧链接。
        public let questionBlockInfos: [QuestionBlockObj]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eduPaperInfos = "EduPaperInfos"
            case angle = "Angle"
            case questionBlockInfos = "QuestionBlockInfos"
            case requestId = "RequestId"
        }
    }

    /// 数学试题识别
    ///
    /// 本接口支持数学试题内容的识别和结构化输出，包括通用文本解析和小学/初中/高中数学公式解析能力（包括91种题型，180种符号），公式返回格式为 Latex 格式文本。
    @inlinable
    public func eduPaperOCR(_ input: EduPaperOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EduPaperOCRResponse> {
        self.client.execute(action: "EduPaperOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数学试题识别
    ///
    /// 本接口支持数学试题内容的识别和结构化输出，包括通用文本解析和小学/初中/高中数学公式解析能力（包括91种题型，180种符号），公式返回格式为 Latex 格式文本。
    @inlinable
    public func eduPaperOCR(_ input: EduPaperOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EduPaperOCRResponse {
        try await self.client.execute(action: "EduPaperOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数学试题识别
    ///
    /// 本接口支持数学试题内容的识别和结构化输出，包括通用文本解析和小学/初中/高中数学公式解析能力（包括91种题型，180种符号），公式返回格式为 Latex 格式文本。
    @inlinable
    public func eduPaperOCR(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EduPaperOCRResponse> {
        self.eduPaperOCR(EduPaperOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, config: config), region: region, logger: logger, on: eventLoop)
    }

    /// 数学试题识别
    ///
    /// 本接口支持数学试题内容的识别和结构化输出，包括通用文本解析和小学/初中/高中数学公式解析能力（包括91种题型，180种符号），公式返回格式为 Latex 格式文本。
    @inlinable
    public func eduPaperOCR(imageBase64: String? = nil, imageUrl: String? = nil, config: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EduPaperOCRResponse {
        try await self.eduPaperOCR(EduPaperOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl, config: config), region: region, logger: logger, on: eventLoop)
    }
}
