//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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
    /// FormulaOCR请求参数结构体
    public struct FormulaOCRRequest: TCRequestModel {
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

        public init(imageBase64: String? = nil, imageUrl: String? = nil) {
            self.imageBase64 = imageBase64
            self.imageUrl = imageUrl
        }

        enum CodingKeys: String, CodingKey {
            case imageBase64 = "ImageBase64"
            case imageUrl = "ImageUrl"
        }
    }

    /// FormulaOCR返回参数结构体
    public struct FormulaOCRResponse: TCResponseModel {
        /// 图片旋转角度（角度制），文本的水平方向为0°；顺时针为正，逆时针为负
        public let angle: Int64

        /// 检测到的文本信息，具体内容请点击左侧链接。
        public let formulaInfos: [TextFormula]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case angle = "Angle"
            case formulaInfos = "FormulaInfos"
            case requestId = "RequestId"
        }
    }

    /// 数学公式识别
    ///
    /// 本接口支持识别主流初高中数学符号和公式，返回公式的 Latex 格式文本。
    @inlinable
    public func formulaOCR(_ input: FormulaOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FormulaOCRResponse> {
        self.client.execute(action: "FormulaOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数学公式识别
    ///
    /// 本接口支持识别主流初高中数学符号和公式，返回公式的 Latex 格式文本。
    @inlinable
    public func formulaOCR(_ input: FormulaOCRRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FormulaOCRResponse {
        try await self.client.execute(action: "FormulaOCR", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数学公式识别
    ///
    /// 本接口支持识别主流初高中数学符号和公式，返回公式的 Latex 格式文本。
    @inlinable
    public func formulaOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<FormulaOCRResponse> {
        self.formulaOCR(FormulaOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }

    /// 数学公式识别
    ///
    /// 本接口支持识别主流初高中数学符号和公式，返回公式的 Latex 格式文本。
    @inlinable
    public func formulaOCR(imageBase64: String? = nil, imageUrl: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> FormulaOCRResponse {
        try await self.formulaOCR(FormulaOCRRequest(imageBase64: imageBase64, imageUrl: imageUrl), region: region, logger: logger, on: eventLoop)
    }
}
