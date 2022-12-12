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
    /// RecognizeMediaForZhiXue请求参数结构体
    public struct RecognizeMediaForZhiXueRequest: TCRequestModel {
        /// 输入媒体文件存储信息。
        public let inputInfo: MediaInputInfo
        
        /// 表情识别参数配置。默认开启。
        public let expressionConfig: ExpressionConfigInfo?
        
        /// 动作识别参数配置。默认开启。
        public let actionConfig: ActionConfigInfo?
        
        public init (inputInfo: MediaInputInfo, expressionConfig: ExpressionConfigInfo? = nil, actionConfig: ActionConfigInfo? = nil) {
            self.inputInfo = inputInfo
            self.expressionConfig = expressionConfig
            self.actionConfig = actionConfig
        }
        
        enum CodingKeys: String, CodingKey {
            case inputInfo = "InputInfo"
            case expressionConfig = "ExpressionConfig"
            case actionConfig = "ActionConfig"
        }
    }
    
    /// RecognizeMediaForZhiXue返回参数结构体
    public struct RecognizeMediaForZhiXueResponse: TCResponseModel {
        /// 任务 ID，可以通过该 ID 查询任务状态和结果。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 智学智能媒体识别
    ///
    /// 智能媒体识别，包含表情和动作识别。仅用于智学，其他调用无效。
    @inlinable
    public func recognizeMediaForZhiXue(_ input: RecognizeMediaForZhiXueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RecognizeMediaForZhiXueResponse > {
        self.client.execute(action: "RecognizeMediaForZhiXue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 智学智能媒体识别
    ///
    /// 智能媒体识别，包含表情和动作识别。仅用于智学，其他调用无效。
    @inlinable
    public func recognizeMediaForZhiXue(_ input: RecognizeMediaForZhiXueRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RecognizeMediaForZhiXueResponse {
        try await self.client.execute(action: "RecognizeMediaForZhiXue", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
