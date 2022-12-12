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

extension Vod {
    /// ResetProcedureTemplate请求参数结构体
    public struct ResetProcedureTemplateRequest: TCRequestModel {
        /// 任务流名字
        public let name: String
        
        /// 模板描述信息，长度限制：256 个字符。
        public let comment: String?
        
        /// 视频处理类型任务参数。
        public let mediaProcessTask: MediaProcessTaskInput?
        
        /// AI 智能内容审核类型任务参数。
        public let aiContentReviewTask: AiContentReviewTaskInput?
        
        /// AI 智能内容分析类型任务参数。
        public let aiAnalysisTask: AiAnalysisTaskInput?
        
        /// AI 内容识别类型任务参数。
        public let aiRecognitionTask: AiRecognitionTaskInput?
        
        /// 点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。
        public let subAppId: UInt64?
        
        public init (name: String, comment: String? = nil, mediaProcessTask: MediaProcessTaskInput? = nil, aiContentReviewTask: AiContentReviewTaskInput? = nil, aiAnalysisTask: AiAnalysisTaskInput? = nil, aiRecognitionTask: AiRecognitionTaskInput? = nil, subAppId: UInt64? = nil) {
            self.name = name
            self.comment = comment
            self.mediaProcessTask = mediaProcessTask
            self.aiContentReviewTask = aiContentReviewTask
            self.aiAnalysisTask = aiAnalysisTask
            self.aiRecognitionTask = aiRecognitionTask
            self.subAppId = subAppId
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case comment = "Comment"
            case mediaProcessTask = "MediaProcessTask"
            case aiContentReviewTask = "AiContentReviewTask"
            case aiAnalysisTask = "AiAnalysisTask"
            case aiRecognitionTask = "AiRecognitionTask"
            case subAppId = "SubAppId"
        }
    }
    
    /// ResetProcedureTemplate返回参数结构体
    public struct ResetProcedureTemplateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 重设任务流模板
    ///
    /// 重新设置用户自定义任务流模板的内容。  
    @inlinable
    public func resetProcedureTemplate(_ input: ResetProcedureTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResetProcedureTemplateResponse > {
        self.client.execute(action: "ResetProcedureTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重设任务流模板
    ///
    /// 重新设置用户自定义任务流模板的内容。  
    @inlinable
    public func resetProcedureTemplate(_ input: ResetProcedureTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResetProcedureTemplateResponse {
        try await self.client.execute(action: "ResetProcedureTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
