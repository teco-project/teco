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
    /// 隔离数据迁移任务
    ///
    ///  隔离退还数据迁移服务。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。对于计费任务，在任务隔离后可进行解除隔离(RecoverMigrationJob)操作或直接进行下线销毁(DestroyMigrateJob)操作。对于不计费任务，调用此接口会直接销毁任务，无法进行恢复操作。
    @inlinable
    public func isolateMigrateJob(_ input: IsolateMigrateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < IsolateMigrateJobResponse > {
        self.client.execute(action: "IsolateMigrateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 隔离数据迁移任务
    ///
    ///  隔离退还数据迁移服务。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。对于计费任务，在任务隔离后可进行解除隔离(RecoverMigrationJob)操作或直接进行下线销毁(DestroyMigrateJob)操作。对于不计费任务，调用此接口会直接销毁任务，无法进行恢复操作。
    @inlinable
    public func isolateMigrateJob(_ input: IsolateMigrateJobRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> IsolateMigrateJobResponse {
        try await self.client.execute(action: "IsolateMigrateJob", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// IsolateMigrateJob请求参数结构体
    public struct IsolateMigrateJobRequest: TCRequestModel {
        /// 任务id
        public let jobId: String
        
        public init (jobId: String) {
            self.jobId = jobId
        }
        
        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
        }
    }
    
    /// IsolateMigrateJob返回参数结构体
    public struct IsolateMigrateJobResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
