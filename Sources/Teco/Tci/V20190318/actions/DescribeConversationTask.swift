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

import TecoCore

extension Tci {
    /// DescribeConversationTask请求参数结构体
    public struct DescribeConversationTaskRequest: TCRequestModel {
        /// 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let jobId: Int64

        /// 要查询明细的流的身份，1 老师 2 学生
        public let identity: Int64?

        /// 限制数目
        public let limit: Int64?

        /// 偏移量
        public let offset: Int64?

        public init(jobId: Int64, identity: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil) {
            self.jobId = jobId
            self.identity = identity
            self.limit = limit
            self.offset = offset
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case identity = "Identity"
            case limit = "Limit"
            case offset = "Offset"
        }
    }

    /// DescribeConversationTask返回参数结构体
    public struct DescribeConversationTaskResponse: TCResponseModel {
        /// 返回的当前音频的统计信息。当进度为100时返回。
        public let asrStat: ASRStat

        /// 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        public let texts: [WholeTextItem]

        /// 返回词汇库中的单词出现的详细时间信息。
        public let vocabAnalysisDetailInfo: [VocabDetailInfomation]

        /// 返回词汇库中的单词出现的次数信息。
        public let vocabAnalysisStatInfo: [VocabStatInfomation]

        /// 整个音频流的全部文本
        public let allTexts: String

        /// 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let jobId: Int64

        /// 返回的当前处理进度。
        public let progress: Float

        /// 结果总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case asrStat = "AsrStat"
            case texts = "Texts"
            case vocabAnalysisDetailInfo = "VocabAnalysisDetailInfo"
            case vocabAnalysisStatInfo = "VocabAnalysisStatInfo"
            case allTexts = "AllTexts"
            case jobId = "JobId"
            case progress = "Progress"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 音频对话任务分析结果查询
    ///
    /// 音频对话任务评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeConversationTask(_ input: DescribeConversationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConversationTaskResponse> {
        self.client.execute(action: "DescribeConversationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 音频对话任务分析结果查询
    ///
    /// 音频对话任务评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeConversationTask(_ input: DescribeConversationTaskRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConversationTaskResponse {
        try await self.client.execute(action: "DescribeConversationTask", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 音频对话任务分析结果查询
    ///
    /// 音频对话任务评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeConversationTask(jobId: Int64, identity: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeConversationTaskResponse> {
        self.describeConversationTask(.init(jobId: jobId, identity: identity, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }

    /// 音频对话任务分析结果查询
    ///
    /// 音频对话任务评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeConversationTask(jobId: Int64, identity: Int64? = nil, limit: Int64? = nil, offset: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeConversationTaskResponse {
        try await self.describeConversationTask(.init(jobId: jobId, identity: identity, limit: limit, offset: offset), region: region, logger: logger, on: eventLoop)
    }
}
