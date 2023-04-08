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

extension Aiart {
    /// TextToImage请求参数结构体
    public struct TextToImageRequest: TCRequestModel {
        /// 文本描述。
        /// 算法将根据输入的文本智能生成与之相关的图像。建议详细描述画面主体、细节、场景等，文本描述越丰富，生成效果越精美。
        /// 不能为空，推荐使用中文。最多可传512个 utf-8 字符。
        public let prompt: String

        /// 反向文本描述。
        /// 用于一定程度上从反面引导模型生成的走向，减少生成结果中出现描述内容的可能，但不能完全杜绝。
        /// 推荐使用中文。最多可传512个 utf-8 字符。
        public let negativePrompt: String?

        /// 绘画风格。
        /// 请在 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249) 中选择期望的风格，传入风格编号。
        /// 推荐使用且只使用一种风格。不传默认使用201（日系动漫风格）。
        /// 如果想要探索风格列表之外的风格，也可以尝试在 Prompt 中输入其他的风格描述。
        public let styles: [String]?

        /// 生成图结果的配置，包括输出图片分辨率和尺寸等。
        public let resultConfig: ResultConfig?

        /// 为生成结果图添加标识的开关，默认为1。
        /// 1：添加标识。
        /// 0：不添加标识。
        /// 其他数值：默认按1处理。
        /// 建议您使用显著标识来提示结果图使用了 AI 绘画技术，是 AI 生成的图片。
        public let logoAdd: Int64?

        /// 标识内容设置。
        /// 默认在生成结果图右下角添加“图片由 AI 生成”字样，您可根据自身需要替换为其他的标识图片。
        public let logoParam: LogoParam?

        public init(prompt: String, negativePrompt: String? = nil, styles: [String]? = nil, resultConfig: ResultConfig? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil) {
            self.prompt = prompt
            self.negativePrompt = negativePrompt
            self.styles = styles
            self.resultConfig = resultConfig
            self.logoAdd = logoAdd
            self.logoParam = logoParam
        }

        enum CodingKeys: String, CodingKey {
            case prompt = "Prompt"
            case negativePrompt = "NegativePrompt"
            case styles = "Styles"
            case resultConfig = "ResultConfig"
            case logoAdd = "LogoAdd"
            case logoParam = "LogoParam"
        }
    }

    /// TextToImage返回参数结构体
    public struct TextToImageResponse: TCResponseModel {
        /// 返回的生成图 Base64 编码。
        public let resultImage: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case resultImage = "ResultImage"
            case requestId = "RequestId"
        }
    }

    /// 智能文生图
    ///
    /// 智能文生图接口将根据输入的描述文本，智能生成与之相关的结果图。
    /// 输入：512个字符以内的描述性文本，推荐使用中文。
    /// 输出：对应风格及分辨率的 AI 生成图。
    /// 可支持的风格详见 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。
    ///
    /// 请求频率限制为1次/秒。
    @inlinable
    public func textToImage(_ input: TextToImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToImageResponse> {
        self.client.execute(action: "TextToImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 智能文生图
    ///
    /// 智能文生图接口将根据输入的描述文本，智能生成与之相关的结果图。
    /// 输入：512个字符以内的描述性文本，推荐使用中文。
    /// 输出：对应风格及分辨率的 AI 生成图。
    /// 可支持的风格详见 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。
    ///
    /// 请求频率限制为1次/秒。
    @inlinable
    public func textToImage(_ input: TextToImageRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToImageResponse {
        try await self.client.execute(action: "TextToImage", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 智能文生图
    ///
    /// 智能文生图接口将根据输入的描述文本，智能生成与之相关的结果图。
    /// 输入：512个字符以内的描述性文本，推荐使用中文。
    /// 输出：对应风格及分辨率的 AI 生成图。
    /// 可支持的风格详见 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。
    ///
    /// 请求频率限制为1次/秒。
    @inlinable
    public func textToImage(prompt: String, negativePrompt: String? = nil, styles: [String]? = nil, resultConfig: ResultConfig? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextToImageResponse> {
        self.textToImage(.init(prompt: prompt, negativePrompt: negativePrompt, styles: styles, resultConfig: resultConfig, logoAdd: logoAdd, logoParam: logoParam), region: region, logger: logger, on: eventLoop)
    }

    /// 智能文生图
    ///
    /// 智能文生图接口将根据输入的描述文本，智能生成与之相关的结果图。
    /// 输入：512个字符以内的描述性文本，推荐使用中文。
    /// 输出：对应风格及分辨率的 AI 生成图。
    /// 可支持的风格详见 [智能文生图风格列表](https://cloud.tencent.com/document/product/1668/86249)，请将列表中的“风格编号”传入 Styles 数组，建议选择一种风格。
    ///
    /// 请求频率限制为1次/秒。
    @inlinable
    public func textToImage(prompt: String, negativePrompt: String? = nil, styles: [String]? = nil, resultConfig: ResultConfig? = nil, logoAdd: Int64? = nil, logoParam: LogoParam? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextToImageResponse {
        try await self.textToImage(.init(prompt: prompt, negativePrompt: negativePrompt, styles: styles, resultConfig: resultConfig, logoAdd: logoAdd, logoParam: logoParam), region: region, logger: logger, on: eventLoop)
    }
}
