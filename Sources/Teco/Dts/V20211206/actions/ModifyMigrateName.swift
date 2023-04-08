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

import TecoCore

extension Dts {
    /// ModifyMigrateName请求参数结构体
    public struct ModifyMigrateNameRequest: TCRequestModel {
        /// 迁移任务id
        public let jobId: String

        /// 修改后的迁移任务名
        public let jobName: String

        public init(jobId: String, jobName: String) {
            self.jobId = jobId
            self.jobName = jobName
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case jobName = "JobName"
        }
    }

    /// ModifyMigrateName返回参数结构体
    public struct ModifyMigrateNameResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改迁移名称
    ///
    /// 修改迁移任务名
    @inlinable @discardableResult
    public func modifyMigrateName(_ input: ModifyMigrateNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrateNameResponse> {
        self.client.execute(action: "ModifyMigrateName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改迁移名称
    ///
    /// 修改迁移任务名
    @inlinable @discardableResult
    public func modifyMigrateName(_ input: ModifyMigrateNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrateNameResponse {
        try await self.client.execute(action: "ModifyMigrateName", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改迁移名称
    ///
    /// 修改迁移任务名
    @inlinable @discardableResult
    public func modifyMigrateName(jobId: String, jobName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrateNameResponse> {
        self.modifyMigrateName(.init(jobId: jobId, jobName: jobName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改迁移名称
    ///
    /// 修改迁移任务名
    @inlinable @discardableResult
    public func modifyMigrateName(jobId: String, jobName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrateNameResponse {
        try await self.modifyMigrateName(.init(jobId: jobId, jobName: jobName), region: region, logger: logger, on: eventLoop)
    }
}
