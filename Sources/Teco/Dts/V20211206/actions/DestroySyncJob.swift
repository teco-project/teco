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
    /// DestroySyncJob请求参数结构体
    public struct DestroySyncJobRequest: TCRequestModel {
        /// 同步任务id
        public let jobId: String
        
        public init (jobId: String) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// DestroySyncJob返回参数结构体
    public struct DestroySyncJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 下线同步任务
    ///
    /// 下线同步任务，任务在已隔离状态下可以通过此操作进行任务下线，即彻底删除任务。下线操作后可通过查询同步任务信息接口DescribeSyncJobs获取任务列表查看状态，此操作成功后无法看到此任务表示下线成功。
    @inlinable
    public func destroySyncJob(_ input: DestroySyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroySyncJobResponse > {
        self.client.execute(action: "DestroySyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 下线同步任务
    ///
    /// 下线同步任务，任务在已隔离状态下可以通过此操作进行任务下线，即彻底删除任务。下线操作后可通过查询同步任务信息接口DescribeSyncJobs获取任务列表查看状态，此操作成功后无法看到此任务表示下线成功。
    @inlinable
    public func destroySyncJob(_ input: DestroySyncJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroySyncJobResponse {
        try await self.client.execute(action: "DestroySyncJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
