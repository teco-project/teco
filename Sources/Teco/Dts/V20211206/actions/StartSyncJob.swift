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

extension Dts {
    /// StartSyncJob请求参数结构体
    public struct StartSyncJobRequest: TCRequestModel {
        /// 同步任务id
        public let jobId: String?
        
        public init (jobId: String? = nil) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// StartSyncJob返回参数结构体
    public struct StartSyncJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 启动同步任务
    @inlinable
    public func startSyncJob(_ input: StartSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < StartSyncJobResponse > {
        self.client.execute(action: "StartSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 启动同步任务
    @inlinable
    public func startSyncJob(_ input: StartSyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StartSyncJobResponse {
        try await self.client.execute(action: "StartSyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
