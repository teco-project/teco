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

extension Mps {
    /// DescribeWordSamples请求参数结构体
    public struct DescribeWordSamplesRequest: TCRequestModel {
        /// 关键词过滤条件，数组长度限制：100 个词。
        public let keywords: [String]?
        
        /// <b>关键词应用场景过滤条件，可选值：</b>
        /// 1. Recognition.Ocr：通过光学字符识别技术，进行内容识别；
        /// 2. Recognition.Asr：通过音频识别技术，进行内容识别；
        /// 3. Review.Ocr：通过光学字符识别技术，进行不适宜内容的识别；
        /// 4. Review.Asr：通过音频识别技术，进行不适宜内容的识别；
        /// <b>可合并简写为：</b>
        /// 5. Recognition：通过光学字符识别技术、音频识别技术，进行内容识别，等价于 1+2；
        /// 6. Review：通过光学字符识别技术、音频识别技术，进行不适宜内容的识别，等价于 3+4；
        /// 可多选，元素间关系为 or，即关键词的应用场景包含该字段集合中任意元素的记录，均符合该条件。
        public let usages: [String]?
        
        /// 标签过滤条件，数组长度限制：20 个词。
        public let tags: [String]?
        
        /// 分页偏移量，默认值：0。
        public let offset: UInt64?
        
        /// 返回记录条数，默认值：100，最大值：100。
        public let limit: UInt64?
        
        public init (keywords: [String]? = nil, usages: [String]? = nil, tags: [String]? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.keywords = keywords
            self.usages = usages
            self.tags = tags
            self.offset = offset
            self.limit = limit
        }
        
        enum CodingKeys: String, CodingKey {
            case keywords = "Keywords"
            case usages = "Usages"
            case tags = "Tags"
            case offset = "Offset"
            case limit = "Limit"
        }
    }
    
    /// DescribeWordSamples返回参数结构体
    public struct DescribeWordSamplesResponse: TCResponseModel {
        /// 符合条件的记录总数。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: UInt64?
        
        /// 关键词信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let wordSet: [AiSampleWord]?
        
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
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeWordSamplesResponse > {
        self.client.execute(action: "DescribeWordSamples", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取关键词样本列表
    ///
    /// 该接口用于根据应用场景、关键词、标签，分页查询关键词样本信息。
    @inlinable
    public func describeWordSamples(_ input: DescribeWordSamplesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeWordSamplesResponse {
        try await self.client.execute(action: "DescribeWordSamples", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
