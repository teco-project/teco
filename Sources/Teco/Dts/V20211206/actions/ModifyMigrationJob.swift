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
    /// ModifyMigrationJob请求参数结构体
    public struct ModifyMigrationJobRequest: TCRequest {
        /// 任务id
        public let jobId: String

        /// 运行模式，取值如：immediate(表示立即运行)、timed(表示定时运行)
        public let runMode: String

        /// 迁移任务配置选项，描述任务如何执行迁移等一系列配置信息；字段下的RateLimitOption不可配置、如果需要修改任务的限速信息、请在任务运行后通过ModifyMigrateRateLimit接口修改
        public let migrateOption: MigrateOption

        /// 源实例信息
        public let srcInfo: DBEndpointInfo

        /// 目标实例信息
        public let dstInfo: DBEndpointInfo

        /// 迁移任务名称，最大长度128
        public let jobName: String?

        /// 期待启动时间，当RunMode取值为timed时，此值必填，形如："2006-01-02 15:04:05"
        public let expectRunTime: String?

        /// 标签信息
        public let tags: [TagItem]?

        /// 自动重试的时间段、可设置5至720分钟、0表示不重试
        public let autoRetryTimeRangeMinutes: Int64?

        public init(jobId: String, runMode: String, migrateOption: MigrateOption, srcInfo: DBEndpointInfo, dstInfo: DBEndpointInfo, jobName: String? = nil, expectRunTime: String? = nil, tags: [TagItem]? = nil, autoRetryTimeRangeMinutes: Int64? = nil) {
            self.jobId = jobId
            self.runMode = runMode
            self.migrateOption = migrateOption
            self.srcInfo = srcInfo
            self.dstInfo = dstInfo
            self.jobName = jobName
            self.expectRunTime = expectRunTime
            self.tags = tags
            self.autoRetryTimeRangeMinutes = autoRetryTimeRangeMinutes
        }

        enum CodingKeys: String, CodingKey {
            case jobId = "JobId"
            case runMode = "RunMode"
            case migrateOption = "MigrateOption"
            case srcInfo = "SrcInfo"
            case dstInfo = "DstInfo"
            case jobName = "JobName"
            case expectRunTime = "ExpectRunTime"
            case tags = "Tags"
            case autoRetryTimeRangeMinutes = "AutoRetryTimeRangeMinutes"
        }
    }

    /// ModifyMigrationJob返回参数结构体
    public struct ModifyMigrationJobResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 配置迁移服务
    ///
    /// 配置迁移服务，配置成功后可通过`CreateMigrationCheckJob` 创建迁移校验任务接口发起校验任务，只有校验通过才能启动迁移任务。
    @inlinable @discardableResult
    public func modifyMigrationJob(_ input: ModifyMigrationJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrationJobResponse> {
        self.client.execute(action: "ModifyMigrationJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 配置迁移服务
    ///
    /// 配置迁移服务，配置成功后可通过`CreateMigrationCheckJob` 创建迁移校验任务接口发起校验任务，只有校验通过才能启动迁移任务。
    @inlinable @discardableResult
    public func modifyMigrationJob(_ input: ModifyMigrationJobRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationJobResponse {
        try await self.client.execute(action: "ModifyMigrationJob", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 配置迁移服务
    ///
    /// 配置迁移服务，配置成功后可通过`CreateMigrationCheckJob` 创建迁移校验任务接口发起校验任务，只有校验通过才能启动迁移任务。
    @inlinable @discardableResult
    public func modifyMigrationJob(jobId: String, runMode: String, migrateOption: MigrateOption, srcInfo: DBEndpointInfo, dstInfo: DBEndpointInfo, jobName: String? = nil, expectRunTime: String? = nil, tags: [TagItem]? = nil, autoRetryTimeRangeMinutes: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyMigrationJobResponse> {
        self.modifyMigrationJob(.init(jobId: jobId, runMode: runMode, migrateOption: migrateOption, srcInfo: srcInfo, dstInfo: dstInfo, jobName: jobName, expectRunTime: expectRunTime, tags: tags, autoRetryTimeRangeMinutes: autoRetryTimeRangeMinutes), region: region, logger: logger, on: eventLoop)
    }

    /// 配置迁移服务
    ///
    /// 配置迁移服务，配置成功后可通过`CreateMigrationCheckJob` 创建迁移校验任务接口发起校验任务，只有校验通过才能启动迁移任务。
    @inlinable @discardableResult
    public func modifyMigrationJob(jobId: String, runMode: String, migrateOption: MigrateOption, srcInfo: DBEndpointInfo, dstInfo: DBEndpointInfo, jobName: String? = nil, expectRunTime: String? = nil, tags: [TagItem]? = nil, autoRetryTimeRangeMinutes: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyMigrationJobResponse {
        try await self.modifyMigrationJob(.init(jobId: jobId, runMode: runMode, migrateOption: migrateOption, srcInfo: srcInfo, dstInfo: dstInfo, jobName: jobName, expectRunTime: expectRunTime, tags: tags, autoRetryTimeRangeMinutes: autoRetryTimeRangeMinutes), region: region, logger: logger, on: eventLoop)
    }
}
