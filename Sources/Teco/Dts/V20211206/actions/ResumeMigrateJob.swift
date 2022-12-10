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

extension Dts {
    /// 重试迁移任务
    ///
    /// 重试数据迁移任务，针对异常情况可进行重试，对于redis在失败时也可重试。注意：此操作跳过校验阶段，直接重新发起任务，相当于从StartMigrationJob开始执行。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable
    public func resumeMigrateJob(_ input: ResumeMigrateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ResumeMigrateJobResponse > {
        self.client.execute(action: "ResumeMigrateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 重试迁移任务
    ///
    /// 重试数据迁移任务，针对异常情况可进行重试，对于redis在失败时也可重试。注意：此操作跳过校验阶段，直接重新发起任务，相当于从StartMigrationJob开始执行。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable
    public func resumeMigrateJob(_ input: ResumeMigrateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResumeMigrateJobResponse {
        try await self.client.execute(action: "ResumeMigrateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ResumeMigrateJob请求参数结构体
    public struct ResumeMigrateJobRequest: TCRequestModel {
        /// 数据迁移任务ID
        public let jobId: String
        
        /// 恢复任务的模式，目前的取值有：clearData 清空目标实例数据，overwrite 以覆盖写的方式执行任务，normal 跟正常流程一样，不做额外动作
        public let resumeOption: String
        
        public init (jobId: String, resumeOption: String) {
            self.jobId = jobId
            self.resumeOption = resumeOption
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case resumeOption = "ResumeOption"
        }
    }
    
    /// ResumeMigrateJob返回参数结构体
    public struct ResumeMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}