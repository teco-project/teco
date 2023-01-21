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

extension Postgres {
    /// ModifyBackupPlan请求参数结构体
    public struct ModifyBackupPlanRequest: TCRequestModel {
        /// 实例ID
        public let dbInstanceId: String

        /// 实例最早开始备份时间
        public let minBackupStartTime: String?

        /// 实例最晚开始备份时间
        public let maxBackupStartTime: String?

        /// 实例备份保留时长，取值范围为3-7，单位是天
        public let baseBackupRetentionPeriod: UInt64?

        /// 实例备份周期，按照星期维度，格式为小写星期英文单词
        public let backupPeriod: [String]?

        public init(dbInstanceId: String, minBackupStartTime: String? = nil, maxBackupStartTime: String? = nil, baseBackupRetentionPeriod: UInt64? = nil, backupPeriod: [String]? = nil) {
            self.dbInstanceId = dbInstanceId
            self.minBackupStartTime = minBackupStartTime
            self.maxBackupStartTime = maxBackupStartTime
            self.baseBackupRetentionPeriod = baseBackupRetentionPeriod
            self.backupPeriod = backupPeriod
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case minBackupStartTime = "MinBackupStartTime"
            case maxBackupStartTime = "MaxBackupStartTime"
            case baseBackupRetentionPeriod = "BaseBackupRetentionPeriod"
            case backupPeriod = "BackupPeriod"
        }
    }

    /// ModifyBackupPlan返回参数结构体
    public struct ModifyBackupPlanResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改备份计划
    ///
    /// 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。
    @inlinable @discardableResult
    public func modifyBackupPlan(_ input: ModifyBackupPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupPlanResponse> {
        self.client.execute(action: "ModifyBackupPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改备份计划
    ///
    /// 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。
    @inlinable @discardableResult
    public func modifyBackupPlan(_ input: ModifyBackupPlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupPlanResponse {
        try await self.client.execute(action: "ModifyBackupPlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改备份计划
    ///
    /// 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。
    @inlinable @discardableResult
    public func modifyBackupPlan(dbInstanceId: String, minBackupStartTime: String? = nil, maxBackupStartTime: String? = nil, baseBackupRetentionPeriod: UInt64? = nil, backupPeriod: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBackupPlanResponse> {
        self.modifyBackupPlan(ModifyBackupPlanRequest(dbInstanceId: dbInstanceId, minBackupStartTime: minBackupStartTime, maxBackupStartTime: maxBackupStartTime, baseBackupRetentionPeriod: baseBackupRetentionPeriod, backupPeriod: backupPeriod), region: region, logger: logger, on: eventLoop)
    }

    /// 修改备份计划
    ///
    /// 本接口 (ModifyBackupPlan) 用于实例备份计划的修改，默认是在每天的凌晨开始全量备份，备份保留时长是7天。可以根据此接口指定时间进行实例的备份。
    @inlinable @discardableResult
    public func modifyBackupPlan(dbInstanceId: String, minBackupStartTime: String? = nil, maxBackupStartTime: String? = nil, baseBackupRetentionPeriod: UInt64? = nil, backupPeriod: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupPlanResponse {
        try await self.modifyBackupPlan(ModifyBackupPlanRequest(dbInstanceId: dbInstanceId, minBackupStartTime: minBackupStartTime, maxBackupStartTime: maxBackupStartTime, baseBackupRetentionPeriod: baseBackupRetentionPeriod, backupPeriod: backupPeriod), region: region, logger: logger, on: eventLoop)
    }
}
