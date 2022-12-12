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

extension Pts {
    /// StartJob请求参数结构体
    public struct StartJobRequest: TCRequestModel {
        /// 场景ID
        public let scenarioId: String
        
        /// 任务发起人
        public let jobOwner: String
        
        /// 项目ID
        public let projectId: String
        
        /// 是否调试
        public let debug: Bool?
        
        /// 备注
        public let note: String?
        
        public init (scenarioId: String, jobOwner: String, projectId: String, debug: Bool? = nil, note: String? = nil) {
            self.scenarioId = scenarioId
            self.jobOwner = jobOwner
            self.projectId = projectId
            self.debug = debug
            self.note = note
        }
        
        enum CodingKeys: String, CodingKey {
            case scenarioId = "ScenarioId"
            case jobOwner = "JobOwner"
            case projectId = "ProjectId"
            case debug = "Debug"
            case note = "Note"
        }
    }
    
    /// StartJob返回参数结构体
    public struct StartJobResponse: TCResponseModel {
        /// 任务ID
        public let jobId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建并启动任务
    @inlinable
    public func startJob(_ input: StartJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartJobResponse > {
        self.client.execute(action: "StartJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建并启动任务
    @inlinable
    public func startJob(_ input: StartJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartJobResponse {
        try await self.client.execute(action: "StartJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
