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
    /// UpdateJob请求参数结构体
    public struct UpdateJobRequest: TCRequestModel {
        /// 任务ID
        public let jobId: String
        
        /// 项目ID
        public let projectId: String
        
        /// 场景ID
        public let scenarioId: String
        
        /// 任务备注信息
        public let note: String?
        
        public init (jobId: String, projectId: String, scenarioId: String, note: String? = nil) {
            self.jobId = jobId
            self.projectId = projectId
            self.scenarioId = scenarioId
            self.note = note
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case projectId = "ProjectId"
            case scenarioId = "ScenarioId"
            case note = "Note"
        }
    }
    
    /// UpdateJob返回参数结构体
    public struct UpdateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新任务
    @inlinable
    public func updateJob(_ input: UpdateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateJobResponse > {
        self.client.execute(action: "UpdateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新任务
    @inlinable
    public func updateJob(_ input: UpdateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJobResponse {
        try await self.client.execute(action: "UpdateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
