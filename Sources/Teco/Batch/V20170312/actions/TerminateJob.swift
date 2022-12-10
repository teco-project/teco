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

extension Batch {
    /// 终止作业
    ///
    /// 用于终止作业。
    /// 当作业处于“SUBMITTED”状态时，禁止终止操作；当作业处于“SUCCEED”状态时，终止操作不会生效。
    /// 终止作业是一个异步过程。整个终止过程的耗时和任务总数成正比。终止的效果相当于所含的所有任务实例进行TerminateTaskInstance操作。具体效果和用法可参考TerminateTaskInstance。
    @inlinable
    public func terminateJob(_ input: TerminateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < TerminateJobResponse > {
        self.client.execute(action: "TerminateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 终止作业
    ///
    /// 用于终止作业。
    /// 当作业处于“SUBMITTED”状态时，禁止终止操作；当作业处于“SUCCEED”状态时，终止操作不会生效。
    /// 终止作业是一个异步过程。整个终止过程的耗时和任务总数成正比。终止的效果相当于所含的所有任务实例进行TerminateTaskInstance操作。具体效果和用法可参考TerminateTaskInstance。
    @inlinable
    public func terminateJob(_ input: TerminateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateJobResponse {
        try await self.client.execute(action: "TerminateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// TerminateJob请求参数结构体
    public struct TerminateJobRequest: TCRequestModel {
        /// 作业ID
        public let jobId: String
        
        public init (jobId: String) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// TerminateJob返回参数结构体
    public struct TerminateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
