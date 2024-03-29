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

extension Ocr {
    /// GeneralEfficientOCR请求参数结构体
    public struct GeneralEfficientOCRRequest: TCRequest {
        /// 图片的 Base64 值。
        /// 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        public init(imageBase64: String? = nil, imageUrl: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// GeneralEfficientOCR返回参数结构体
    public struct GeneralEfficientOCRResponse: TCResponse {
        /// 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        public let textDetections: [TextDetection]

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看[如何纠正倾斜文本](https://cloud.tencent.com/document/product/866/45139)
        public let angel: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case textDetections = "TextDetections"
            case angel = "Angel"
            case requestId = "RequestId"
        }
    }

    /// 通用印刷体识别（精简版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于快速文本识别场景。
    ///
    /// 产品优势：与通用印刷体识别接口相比，精简版虽然在准确率和召回率上有一定损失，但价格更加优惠。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    ///
    /// | | 通用印刷体识别（精简版） | [【荐】通用印刷体识别](https://cloud.tencent.com/document/product/866/33526) | [【荐】通用印刷体识别（高精度版）](https://cloud.tencent.com/document/product/866/34937) |
    /// |---|---|---|---|
    /// | 适用场景 | 适用于快速文本识别场景，准召率有一定损失，价格更优惠 | 适用于所有通用场景的印刷体识别 | 适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景 |
    /// | 识别准确率 | 91% | 96% | 99% |
    /// | 价格 | 低 | 中 | 高 |
    /// | 支持的语言 | 中文、英文、中英文 | 中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语 | 中文、英文、中英文 |
    /// | 自动语言检测 | 支持 | 支持 | 支持 |
    /// | 返回文本行坐标 | 支持 | 支持 | 支持 |
    /// | 自动旋转纠正 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 |
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalEfficientOCR(_ input: GeneralEfficientOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralEfficientOCRResponse> {
        self.client.execute(action: "GeneralEfficientOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用印刷体识别（精简版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于快速文本识别场景。
    ///
    /// 产品优势：与通用印刷体识别接口相比，精简版虽然在准确率和召回率上有一定损失，但价格更加优惠。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    ///
    /// | | 通用印刷体识别（精简版） | [【荐】通用印刷体识别](https://cloud.tencent.com/document/product/866/33526) | [【荐】通用印刷体识别（高精度版）](https://cloud.tencent.com/document/product/866/34937) |
    /// |---|---|---|---|
    /// | 适用场景 | 适用于快速文本识别场景，准召率有一定损失，价格更优惠 | 适用于所有通用场景的印刷体识别 | 适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景 |
    /// | 识别准确率 | 91% | 96% | 99% |
    /// | 价格 | 低 | 中 | 高 |
    /// | 支持的语言 | 中文、英文、中英文 | 中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语 | 中文、英文、中英文 |
    /// | 自动语言检测 | 支持 | 支持 | 支持 |
    /// | 返回文本行坐标 | 支持 | 支持 | 支持 |
    /// | 自动旋转纠正 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 |
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalEfficientOCR(_ input: GeneralEfficientOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralEfficientOCRResponse {
        try await self.client.execute(action: "GeneralEfficientOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用印刷体识别（精简版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于快速文本识别场景。
    ///
    /// 产品优势：与通用印刷体识别接口相比，精简版虽然在准确率和召回率上有一定损失，但价格更加优惠。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    ///
    /// | | 通用印刷体识别（精简版） | [【荐】通用印刷体识别](https://cloud.tencent.com/document/product/866/33526) | [【荐】通用印刷体识别（高精度版）](https://cloud.tencent.com/document/product/866/34937) |
    /// |---|---|---|---|
    /// | 适用场景 | 适用于快速文本识别场景，准召率有一定损失，价格更优惠 | 适用于所有通用场景的印刷体识别 | 适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景 |
    /// | 识别准确率 | 91% | 96% | 99% |
    /// | 价格 | 低 | 中 | 高 |
    /// | 支持的语言 | 中文、英文、中英文 | 中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语 | 中文、英文、中英文 |
    /// | 自动语言检测 | 支持 | 支持 | 支持 |
    /// | 返回文本行坐标 | 支持 | 支持 | 支持 |
    /// | 自动旋转纠正 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 |
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalEfficientOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralEfficientOCRResponse> {
        self.generalEfficientOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 通用印刷体识别（精简版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于快速文本识别场景。
    ///
    /// 产品优势：与通用印刷体识别接口相比，精简版虽然在准确率和召回率上有一定损失，但价格更加优惠。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    ///
    /// | | 通用印刷体识别（精简版） | [【荐】通用印刷体识别](https://cloud.tencent.com/document/product/866/33526) | [【荐】通用印刷体识别（高精度版）](https://cloud.tencent.com/document/product/866/34937) |
    /// |---|---|---|---|
    /// | 适用场景 | 适用于快速文本识别场景，准召率有一定损失，价格更优惠 | 适用于所有通用场景的印刷体识别 | 适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景 |
    /// | 识别准确率 | 91% | 96% | 99% |
    /// | 价格 | 低 | 中 | 高 |
    /// | 支持的语言 | 中文、英文、中英文 | 中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语 | 中文、英文、中英文 |
    /// | 自动语言检测 | 支持 | 支持 | 支持 |
    /// | 返回文本行坐标 | 支持 | 支持 | 支持 |
    /// | 自动旋转纠正 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 | 支持旋转识别，返回角度信息 |
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalEfficientOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralEfficientOCRResponse {
        try await self.generalEfficientOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
