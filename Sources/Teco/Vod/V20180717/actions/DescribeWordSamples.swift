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

extension Vod {
    /// DescribeWordSamples请求参数结构体
    public struct DescribeWordSamplesRequest: TCRequestModel {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// <b>关键词应用场景过滤条件，可选值：</b>
        /// 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        /// 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        /// 3. Review.Ocr：通过光学字符识别技术，进行不适宜的内容识别；
        /// 4. Review.Asr：通过音频识别技术，进行不适宜的内容识别；
        /// <b>可合并简写为：</b>
        /// 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        /// 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜的内容识别，等价于 3+4；
        /// 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        public let usages: [String]?

        /// 关键词过滤条件，数组长度限制：100 个词。
        public let keywords: [String]?

        /// 标签过滤条件，数组长度限制：20 个词。
        public let tags: [String]?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：100，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, usages: [String]? = nil, keywords: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.usages = usages
            self.keywords = keywords
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case usages = "Usages"
            case keywords = "Keywords"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeWordSamples返回参数结构体
    public struct DescribeWordSamplesResponse: TCResponseModel {
        /// 符合条件的记录总数。
        public let totalCount: UInt64

        /// 关键词信息。
        public let wordSet: [AiSampleWord]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case wordSet = "WordSet"
            case requestId = "RequestId"
        }
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordSamplesResponse> {
        self.client.execute(action: "DescribeWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordSamplesResponse {
        try await self.client.execute(action: "DescribeWordSamples", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(subAppId: UInt64? = nil, usages: [String]? = nil, keywords: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeWordSamplesResponse> {
        self.describeWordSamples(DescribeWordSamplesRequest(subAppId: subAppId, usages: usages, keywords: keywords, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(subAppId: UInt64? = nil, usages: [String]? = nil, keywords: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordSamplesResponse {
        try await self.describeWordSamples(DescribeWordSamplesRequest(subAppId: subAppId, usages: usages, keywords: keywords, tags: tags, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }
}
