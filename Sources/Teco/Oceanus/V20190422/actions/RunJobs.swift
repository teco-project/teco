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

extension Oceanus {
    /// 运行作业
    ///
    /// 批量启动或者恢复作业，批量操作数量上限20
    @inlinable
    public func runJobs(_ input: RunJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RunJobsResponse > {
        self.client.execute(action: "RunJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 运行作业
    ///
    /// 批量启动或者恢复作业，批量操作数量上限20
    @inlinable
    public func runJobs(_ input: RunJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RunJobsResponse {
        try await self.client.execute(action: "RunJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// RunJobs请求参数结构体
    public struct RunJobsRequest: TCRequestModel {
        /// 批量启动作业的描述信息
        public let runJobDescriptions: [RunJobDescription]
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (runJobDescriptions: [RunJobDescription], workSpaceId: String?) {
            self.runJobDescriptions = runJobDescriptions
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case runJobDescriptions = "RunJobDescriptions"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// RunJobs返回参数结构体
    public struct RunJobsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
