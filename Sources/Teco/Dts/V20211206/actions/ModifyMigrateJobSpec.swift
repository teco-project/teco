//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

import Logging
import NIOCore
import TecoCore

extension Dts {
    /// ModifyMigrateJobSpec请求参数结构体
    public struct ModifyMigrateJobSpecRequest: TCRequestModel {
        /// 任务id
        public let jobId: String

        /// 新实例规格大小，包括：micro、small、medium、large、xlarge、2xlarge
        public let newInstanceClass: String

        public init(jobId: String, newInstanceClass: String) {
            self.jobId = jobId
            self.newInstanceClass = newInstanceClass
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case newInstanceClass = "NewInstanceClass"
        }
    }

    /// ModifyMigrateJobSpec返回参数结构体
    public struct ModifyMigrateJobSpecResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 调整实例规格
    ///
    /// 调整实例规格，此接口只支持按量计费任务的调整。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func modifyMigrateJobSpec(_ input: ModifyMigrateJobSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrateJobSpecResponse> {
        self.client.execute(action: "ModifyMigrateJobSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 调整实例规格
    ///
    /// 调整实例规格，此接口只支持按量计费任务的调整。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func modifyMigrateJobSpec(_ input: ModifyMigrateJobSpecRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrateJobSpecResponse {
        try await self.client.execute(action: "ModifyMigrateJobSpec", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 调整实例规格
    ///
    /// 调整实例规格，此接口只支持按量计费任务的调整。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func modifyMigrateJobSpec(jobId: String, newInstanceClass: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrateJobSpecResponse> {
        self.modifyMigrateJobSpec(.init(jobId: jobId, newInstanceClass: newInstanceClass), region: region, logger: logger, on: eventLoop)
    }

    /// 调整实例规格
    ///
    /// 调整实例规格，此接口只支持按量计费任务的调整。调用此接口后可通过查询迁移服务列表接口`DescribeMigrationJobs`来查询当前任务状态。
    @inlinable @discardableResult
    public func modifyMigrateJobSpec(jobId: String, newInstanceClass: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrateJobSpecResponse {
        try await self.modifyMigrateJobSpec(.init(jobId: jobId, newInstanceClass: newInstanceClass), region: region, logger: logger, on: eventLoop)
    }
}
