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
    /// 删除作业
    ///
    /// 批量删除作业接口，批量操作数量上限20
    @inlinable
    public func deleteJobs(_ input: DeleteJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteJobsResponse > {
        self.client.execute(action: "DeleteJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 删除作业
    ///
    /// 批量删除作业接口，批量操作数量上限20
    @inlinable
    public func deleteJobs(_ input: DeleteJobsRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteJobsResponse {
        try await self.client.execute(action: "DeleteJobs", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DeleteJobs请求参数结构体
    public struct DeleteJobsRequest: TCRequestModel {
        /// 作业Id列表
        public let jobIds: [String]
        
        /// 工作空间Id
        public let workSpaceId: String?
        
        public init (jobIds: [String], workSpaceId: String?) {
            self.jobIds = jobIds
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobIds = "JobIds"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// DeleteJobs返回参数结构体
    public struct DeleteJobsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
