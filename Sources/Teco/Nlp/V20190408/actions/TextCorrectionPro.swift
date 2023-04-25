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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Nlp {
    /// TextCorrectionPro请求参数结构体
    public struct TextCorrectionProRequest: TCRequestModel {
        /// 待纠错的文本（仅支持UTF-8格式，不超过128字符）
        public let text: String

        public init(text: String) {
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    /// TextCorrectionPro返回参数结构体
    public struct TextCorrectionProResponse: TCResponseModel {
        /// 纠错详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let cciTokens: [CCIToken]?

        /// 纠错后的文本
        public let resultText: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case cciTokens = "CCITokens"
            case resultText = "ResultText"
            case requestId = "RequestId"
        }
    }

    /// 文本纠错高级版
    ///
    /// 提供对中文文本的自动纠错功能，能够识别输入文本中的错误片段，定位错误并给出正确的文本结果；支持长度不超过128字符（含标点符号）的长文本纠错。
    ///
    /// 此功能是基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升，是搜索引擎、语音识别、内容审核等功能更好运行的基础之一。
    @inlinable
    public func textCorrectionPro(_ input: TextCorrectionProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextCorrectionProResponse> {
        self.client.execute(action: "TextCorrectionPro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本纠错高级版
    ///
    /// 提供对中文文本的自动纠错功能，能够识别输入文本中的错误片段，定位错误并给出正确的文本结果；支持长度不超过128字符（含标点符号）的长文本纠错。
    ///
    /// 此功能是基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升，是搜索引擎、语音识别、内容审核等功能更好运行的基础之一。
    @inlinable
    public func textCorrectionPro(_ input: TextCorrectionProRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextCorrectionProResponse {
        try await self.client.execute(action: "TextCorrectionPro", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本纠错高级版
    ///
    /// 提供对中文文本的自动纠错功能，能够识别输入文本中的错误片段，定位错误并给出正确的文本结果；支持长度不超过128字符（含标点符号）的长文本纠错。
    ///
    /// 此功能是基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升，是搜索引擎、语音识别、内容审核等功能更好运行的基础之一。
    @inlinable
    public func textCorrectionPro(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextCorrectionProResponse> {
        self.textCorrectionPro(.init(text: text), region: region, logger: logger, on: eventLoop)
    }

    /// 文本纠错高级版
    ///
    /// 提供对中文文本的自动纠错功能，能够识别输入文本中的错误片段，定位错误并给出正确的文本结果；支持长度不超过128字符（含标点符号）的长文本纠错。
    ///
    /// 此功能是基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升，是搜索引擎、语音识别、内容审核等功能更好运行的基础之一。
    @inlinable
    public func textCorrectionPro(text: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextCorrectionProResponse {
        try await self.textCorrectionPro(.init(text: text), region: region, logger: logger, on: eventLoop)
    }
}
