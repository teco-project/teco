//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Tci {
    /// 音频分析结果查询
    ///
    /// 音频评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeAudioTask(_ input: DescribeAudioTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAudioTaskResponse > {
        self.client.execute(action: "DescribeAudioTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 音频分析结果查询
    ///
    /// 音频评估任务信息查询接口，异步查询客户提交的请求的结果。
    @inlinable
    public func describeAudioTask(_ input: DescribeAudioTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAudioTaskResponse {
        try await self.client.execute(action: "DescribeAudioTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAudioTask请求参数结构体
    public struct DescribeAudioTaskRequest: TCRequestModel {
        /// 音频任务唯一id。在URL方式时提交请求后会返回一个jobid，后续查询该url的结果时使用这个jobid进行查询。
        public let jobId: Int64
        
        /// 限制数目
        public let limit: Int64?
        
        /// 偏移量
        public let offset: Int64?
        
        public init (jobId: Int64, limit: Int64?, offset: Int64?) {
            self.jobId = jobId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeAudioTask返回参数结构体
    public struct DescribeAudioTaskResponse: TCResponseModel {
        /// 如果请求中开启了静音检测开关，则会返回所有的静音片段（静音时长超过阈值的片段）。
        public let allMuteSlice: AllMuteSlice
        
        /// 返回的当前音频的统计信息。当进度为100时返回。
        public let asrStat: ASRStat
        
        /// 返回当前音频流的详细信息，如果是流模式，返回的是对应流的详细信息，如果是 URL模式，返回的是查询的那一段seq对应的音频的详细信息。
        public let texts: [WholeTextItem]
        
        /// 返回词汇库中的单词出现的详细时间信息。
        public let vocabAnalysisDetailInfo: [VocabDetailInfomation]
        
        /// 返回词汇库中的单词出现的次数信息。
        public let vocabAnalysisStatInfo: [VocabStatInfomation]
        
        /// 返回音频全部文本。
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
            case allMuteSlice = "AllMuteSlice"
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
}