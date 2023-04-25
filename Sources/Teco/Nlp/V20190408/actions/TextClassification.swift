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
    /// TextClassification请求参数结构体
    public struct TextClassificationRequest: TCRequestModel {
        /// 待分类的文本（仅支持UTF-8格式，不超过10000字）
        public let text: String

        /// 领域分类体系（默认取1值）：
        /// 1、通用领域，二分类
        /// 2、新闻领域，五分类。类别数据不一定全部返回，详情见类目映射表（注意：目前五分类已下线不可用）
        public let flag: UInt64?

        public init(text: String, flag: UInt64? = nil) {
            self.text = text
            self.flag = flag
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case flag = "Flag"
        }
    }

    /// TextClassification返回参数结构体
    public struct TextClassificationResponse: TCResponseModel {
        /// 文本分类结果（文本分类映射表请参见附录）
        public let classes: [ClassificationResult]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case classes = "Classes"
            case requestId = "RequestId"
        }
    }

    /// 文本分类
    ///
    /// 文本分类接口能够对用户输入的文本进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    ///
    /// 目前已提供：
    ///
    /// - 通用领域分类体系，二级分类，包括14个分类类目，分别是汽车、科技、健康、体育、旅行、教育、职业、文化、房产、娱乐、女性、奥运、财经以及其他，适用于通用的场景。
    @inlinable
    public func textClassification(_ input: TextClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextClassificationResponse> {
        self.client.execute(action: "TextClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 文本分类
    ///
    /// 文本分类接口能够对用户输入的文本进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    ///
    /// 目前已提供：
    ///
    /// - 通用领域分类体系，二级分类，包括14个分类类目，分别是汽车、科技、健康、体育、旅行、教育、职业、文化、房产、娱乐、女性、奥运、财经以及其他，适用于通用的场景。
    @inlinable
    public func textClassification(_ input: TextClassificationRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextClassificationResponse {
        try await self.client.execute(action: "TextClassification", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 文本分类
    ///
    /// 文本分类接口能够对用户输入的文本进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    ///
    /// 目前已提供：
    ///
    /// - 通用领域分类体系，二级分类，包括14个分类类目，分别是汽车、科技、健康、体育、旅行、教育、职业、文化、房产、娱乐、女性、奥运、财经以及其他，适用于通用的场景。
    @inlinable
    public func textClassification(text: String, flag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TextClassificationResponse> {
        self.textClassification(.init(text: text, flag: flag), region: region, logger: logger, on: eventLoop)
    }

    /// 文本分类
    ///
    /// 文本分类接口能够对用户输入的文本进行自动分类，将其映射到具体的类目上，用户只需要提供待分类的文本，而无需关注具体实现。
    ///
    /// 该功能基于千亿级大规模互联网语料和LSTM、BERT等深度神经网络模型进行训练，并持续迭代更新，以保证效果不断提升。
    ///
    /// 目前已提供：
    ///
    /// - 通用领域分类体系，二级分类，包括14个分类类目，分别是汽车、科技、健康、体育、旅行、教育、职业、文化、房产、娱乐、女性、奥运、财经以及其他，适用于通用的场景。
    @inlinable
    public func textClassification(text: String, flag: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TextClassificationResponse {
        try await self.textClassification(.init(text: text, flag: flag), region: region, logger: logger, on: eventLoop)
    }
}
