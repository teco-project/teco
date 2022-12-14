//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Nlp {
    /// DependencyParsing请求参数结构体
    public struct DependencyParsingRequest: TCRequestModel {
        /// 待分析的文本（仅支持UTF-8格式，不超过200字）
        public let text: String

        public init(text: String) {
            self.text = text
        }

        enum CodingKeys: String, CodingKey {
            case text = "Text"
        }
    }

    /// DependencyParsing返回参数结构体
    public struct DependencyParsingResponse: TCResponseModel {
        /// 句法依存分析结果，其中句法依存关系的类型包括：
        /// <li>主谓关系，eg: 我送她一束花 (我 <-- 送)
        /// <li>动宾关系，eg: 我送她一束花 (送 --> 花)
        /// <li>间宾关系，eg: 我送她一束花 (送 --> 她)
        /// <li>前置宾语，eg: 他什么书都读 (书 <-- 读)
        /// <li>兼语，eg: 他请我吃饭 (请 --> 我)
        /// <li>定中关系，eg: 红苹果 (红 <-- 苹果)
        /// <li>状中结构，eg: 非常美丽 (非常 <-- 美丽)
        /// <li>动补结构，eg: 做完了作业 (做 --> 完)
        /// <li>并列关系，eg: 大山和大海 (大山 --> 大海)
        /// <li>介宾关系，eg: 在贸易区内 (在 --> 内)
        /// <li>左附加关系，eg: 大山和大海 (和 <-- 大海)
        /// <li>右附加关系，eg: 孩子们 (孩子 --> 们)
        /// <li>独立结构，eg: 两个单句在结构上彼此独立
        /// <li>标点符号，eg: 。
        /// <li>核心关系，eg: 整个句子的核心
        public let dpTokens: [DpToken]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case dpTokens = "DpTokens"
            case requestId = "RequestId"
        }
    }

    /// 句法依存分析
    ///
    /// 句法依存分析接口能够分析出句子中词与词之间的相互依存关系，并揭示其句法结构，包括主谓关系、动宾关系、核心关系等等，可用于提取句子主干、提取句子核心词等，在机器翻译、自动问答、知识抽取等领域都有很好的应用。
    @inlinable
    public func dependencyParsing(_ input: DependencyParsingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DependencyParsingResponse > {
        self.client.execute(action: "DependencyParsing", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 句法依存分析
    ///
    /// 句法依存分析接口能够分析出句子中词与词之间的相互依存关系，并揭示其句法结构，包括主谓关系、动宾关系、核心关系等等，可用于提取句子主干、提取句子核心词等，在机器翻译、自动问答、知识抽取等领域都有很好的应用。
    @inlinable
    public func dependencyParsing(_ input: DependencyParsingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DependencyParsingResponse {
        try await self.client.execute(action: "DependencyParsing", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 句法依存分析
    ///
    /// 句法依存分析接口能够分析出句子中词与词之间的相互依存关系，并揭示其句法结构，包括主谓关系、动宾关系、核心关系等等，可用于提取句子主干、提取句子核心词等，在机器翻译、自动问答、知识抽取等领域都有很好的应用。
    @inlinable
    public func dependencyParsing(text: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DependencyParsingResponse > {
        self.dependencyParsing(DependencyParsingRequest(text: text), logger: logger, on: eventLoop)
    }

    /// 句法依存分析
    ///
    /// 句法依存分析接口能够分析出句子中词与词之间的相互依存关系，并揭示其句法结构，包括主谓关系、动宾关系、核心关系等等，可用于提取句子主干、提取句子核心词等，在机器翻译、自动问答、知识抽取等领域都有很好的应用。
    @inlinable
    public func dependencyParsing(text: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DependencyParsingResponse {
        try await self.dependencyParsing(DependencyParsingRequest(text: text), logger: logger, on: eventLoop)
    }
}
