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
    /// GeneralAccurateOCR请求参数结构体
    public struct GeneralAccurateOCRRequest: TCRequestModel {
        /// 图片的 Base64 值。
        /// 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 图片的 ImageUrl、ImageBase64 必须提供一个，如果都提供，只使用 ImageUrl。
        public let imageBase64: String?

        /// 图片的 Url 地址。
        /// 要求图片经Base64编码后不超过 7M，分辨率建议600*800以上，支持PNG、JPG、JPEG、BMP格式。
        /// 图片存储于腾讯云的 Url 可保障更高的下载速度和稳定性，建议图片存储于腾讯云。非腾讯云存储的 Url 速度和稳定性可能受一定影响。
        public let imageUrl: String?

        /// 是否返回单字信息，默认关
        public let isWords: Bool?

        /// 是否开启原图切图检测功能，开启后可提升“整图面积大，但单字符占比面积小”（例如：试卷）场景下的识别效果，默认关
        public let enableDetectSplit: Bool?

        /// 是否开启PDF识别，默认值为false，开启后可同时支持图片和PDF的识别。
        public let isPdf: Bool?

        /// 需要识别的PDF页面的对应页码，仅支持PDF单页识别，当上传文件为PDF且IsPdf参数值为true时有效，默认值为1。
        public let pdfPageNumber: UInt64?

        public init(imageBase64: String? = nil, imageUrl: String? = nil, isWords: Bool? = nil, enableDetectSplit: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
            self.isWords = isWords
            self.enableDetectSplit = enableDetectSplit
            self.isPdf = isPdf
            self.pdfPageNumber = pdfPageNumber
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
            case isWords = "IsWords"
            case enableDetectSplit = "EnableDetectSplit"
            case isPdf = "IsPdf"
            case pdfPageNumber = "PdfPageNumber"
        }
    }

    /// GeneralAccurateOCR返回参数结构体
    public struct GeneralAccurateOCRResponse: TCResponseModel {
        /// 检测到的文本信息，包括文本行内容、置信度、文本行坐标以及文本行旋转纠正后的坐标，具体内容请点击左侧链接。
        public let textDetections: [TextDetection]

        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负。点击查看<a href="https://cloud.tencent.com/document/product/866/45139">如何纠正倾斜文本</a>
        public let angel: Float

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case textDetections = "TextDetections"
            case angel = "Angel"
            case requestId = "RequestId"
        }
    }

    /// 通用印刷体识别（高精度版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于文字较多、版式复杂、对识别准召率要求较高的场景，如试卷试题、网络图片、街景店招牌、法律卷宗等场景。
    ///
    /// 产品优势：与通用印刷体识别相比，提供更高精度的文字识别服务，在文字较多、长串数字、小字、模糊字、倾斜文本等困难场景下，高精度版的准确率和召回率更高。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    /// <table style="width:715px">
    ///       <thead>
    ///         <tr>
    ///           <th style="width:150px"></th>
    ///           <th >【荐】通用印刷体识别（高精度版）</th>
    ///           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
    ///           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
    ///         </tr>
    ///       </thead>
    ///       <tbody>
    ///         <tr>
    ///           <td> 适用场景</td>
    ///           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
    ///           <td>适用于所有通用场景的印刷体识别</td>
    ///           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
    ///         </tr>
    ///         <tr>
    ///           <td>识别准确率</td>
    ///           <td>99%</td>
    ///           <td>96%</td>
    ///           <td>91%</td>
    ///         </tr>
    ///         <tr>
    ///           <td>价格</td>
    ///           <td>高</td>
    ///           <td>中</td>
    ///           <td>低</td>
    ///         </tr>
    ///         <tr>
    ///           <td>支持的语言</td>
    ///           <td>中文、英文、中英文</td>
    ///           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
    ///           <td>中文、英文、中英文</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动语言检测</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>返回文本行坐标</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动旋转纠正</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///         </tr>
    ///       </tbody>
    ///     </table>
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalAccurateOCR(_ input: GeneralAccurateOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralAccurateOCRResponse> {
        self.client.execute(action: "GeneralAccurateOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通用印刷体识别（高精度版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于文字较多、版式复杂、对识别准召率要求较高的场景，如试卷试题、网络图片、街景店招牌、法律卷宗等场景。
    ///
    /// 产品优势：与通用印刷体识别相比，提供更高精度的文字识别服务，在文字较多、长串数字、小字、模糊字、倾斜文本等困难场景下，高精度版的准确率和召回率更高。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    /// <table style="width:715px">
    ///       <thead>
    ///         <tr>
    ///           <th style="width:150px"></th>
    ///           <th >【荐】通用印刷体识别（高精度版）</th>
    ///           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
    ///           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
    ///         </tr>
    ///       </thead>
    ///       <tbody>
    ///         <tr>
    ///           <td> 适用场景</td>
    ///           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
    ///           <td>适用于所有通用场景的印刷体识别</td>
    ///           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
    ///         </tr>
    ///         <tr>
    ///           <td>识别准确率</td>
    ///           <td>99%</td>
    ///           <td>96%</td>
    ///           <td>91%</td>
    ///         </tr>
    ///         <tr>
    ///           <td>价格</td>
    ///           <td>高</td>
    ///           <td>中</td>
    ///           <td>低</td>
    ///         </tr>
    ///         <tr>
    ///           <td>支持的语言</td>
    ///           <td>中文、英文、中英文</td>
    ///           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
    ///           <td>中文、英文、中英文</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动语言检测</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>返回文本行坐标</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动旋转纠正</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///         </tr>
    ///       </tbody>
    ///     </table>
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalAccurateOCR(_ input: GeneralAccurateOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralAccurateOCRResponse {
        try await self.client.execute(action: "GeneralAccurateOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通用印刷体识别（高精度版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于文字较多、版式复杂、对识别准召率要求较高的场景，如试卷试题、网络图片、街景店招牌、法律卷宗等场景。
    ///
    /// 产品优势：与通用印刷体识别相比，提供更高精度的文字识别服务，在文字较多、长串数字、小字、模糊字、倾斜文本等困难场景下，高精度版的准确率和召回率更高。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    /// <table style="width:715px">
    ///       <thead>
    ///         <tr>
    ///           <th style="width:150px"></th>
    ///           <th >【荐】通用印刷体识别（高精度版）</th>
    ///           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
    ///           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
    ///         </tr>
    ///       </thead>
    ///       <tbody>
    ///         <tr>
    ///           <td> 适用场景</td>
    ///           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
    ///           <td>适用于所有通用场景的印刷体识别</td>
    ///           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
    ///         </tr>
    ///         <tr>
    ///           <td>识别准确率</td>
    ///           <td>99%</td>
    ///           <td>96%</td>
    ///           <td>91%</td>
    ///         </tr>
    ///         <tr>
    ///           <td>价格</td>
    ///           <td>高</td>
    ///           <td>中</td>
    ///           <td>低</td>
    ///         </tr>
    ///         <tr>
    ///           <td>支持的语言</td>
    ///           <td>中文、英文、中英文</td>
    ///           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
    ///           <td>中文、英文、中英文</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动语言检测</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>返回文本行坐标</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动旋转纠正</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///         </tr>
    ///       </tbody>
    ///     </table>
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalAccurateOCR(imageBase64: String? = nil, imageUrl: String? = nil, isWords: Bool? = nil, enableDetectSplit: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GeneralAccurateOCRResponse> {
        self.generalAccurateOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isWords: isWords, enableDetectSplit: enableDetectSplit, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }

    /// 通用印刷体识别（高精度版）
    ///
    /// 本接口支持图像整体文字的检测和识别。支持中文、英文、中英文、数字和特殊字符号的识别，并返回文字框位置和文字内容。
    ///
    /// 适用于文字较多、版式复杂、对识别准召率要求较高的场景，如试卷试题、网络图片、街景店招牌、法律卷宗等场景。
    ///
    /// 产品优势：与通用印刷体识别相比，提供更高精度的文字识别服务，在文字较多、长串数字、小字、模糊字、倾斜文本等困难场景下，高精度版的准确率和召回率更高。
    ///
    /// 通用印刷体识别不同版本的差异如下：
    /// <table style="width:715px">
    ///       <thead>
    ///         <tr>
    ///           <th style="width:150px"></th>
    ///           <th >【荐】通用印刷体识别（高精度版）</th>
    ///           <th style="width:200px"><a href="https://cloud.tencent.com/document/product/866/33526">【荐】通用印刷体识别</a></th>
    ///           <th><a href="https://cloud.tencent.com/document/product/866/37831">通用印刷体识别（精简版）</a></th>
    ///         </tr>
    ///       </thead>
    ///       <tbody>
    ///         <tr>
    ///           <td> 适用场景</td>
    ///           <td>适用于文字较多、长串数字、小字、模糊字、倾斜文本等困难场景</td>
    ///           <td>适用于所有通用场景的印刷体识别</td>
    ///           <td>适用于快速文本识别场景，准召率有一定损失，价格更优惠</td>
    ///         </tr>
    ///         <tr>
    ///           <td>识别准确率</td>
    ///           <td>99%</td>
    ///           <td>96%</td>
    ///           <td>91%</td>
    ///         </tr>
    ///         <tr>
    ///           <td>价格</td>
    ///           <td>高</td>
    ///           <td>中</td>
    ///           <td>低</td>
    ///         </tr>
    ///         <tr>
    ///           <td>支持的语言</td>
    ///           <td>中文、英文、中英文</td>
    ///           <td>中文、英文、中英文、日语、韩语、西班牙语、法语、德语、葡萄牙语、越南语、马来语、俄语、意大利语、荷兰语、瑞典语、芬兰语、丹麦语、挪威语、匈牙利语、泰语</td>
    ///           <td>中文、英文、中英文</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动语言检测</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>返回文本行坐标</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///           <td>支持</td>
    ///         </tr>
    ///         <tr>
    ///           <td>自动旋转纠正</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///           <td>支持旋转识别，返回角度信息</td>
    ///         </tr>
    ///       </tbody>
    ///     </table>
    ///
    /// 默认接口请求频率限制：10次/秒。
    @inlinable
    public func generalAccurateOCR(imageBase64: String? = nil, imageUrl: String? = nil, isWords: Bool? = nil, enableDetectSplit: Bool? = nil, isPdf: Bool? = nil, pdfPageNumber: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GeneralAccurateOCRResponse {
        try await self.generalAccurateOCR(.init(imageBase64: imageBase64, imageUrl: imageUrl, isWords: isWords, enableDetectSplit: enableDetectSplit, isPdf: isPdf, pdfPageNumber: pdfPageNumber), region: region, logger: logger, on: eventLoop)
    }
}
