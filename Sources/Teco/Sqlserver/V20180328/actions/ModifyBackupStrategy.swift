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

extension Sqlserver {
    /// ModifyBackupStrategy请求参数结构体
    public struct ModifyBackupStrategyRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String
        
        /// 备份类型，当length(BackupDay) <=7 && length(BackupDay) >=2时，取值为weekly，当length(BackupDay)=1时，取值daily，默认daily
        public let backupType: String?
        
        /// 备份时间点，取值为0-23的整数
        public let backupTime: UInt64?
        
        /// BackupType取值为daily时，表示备份间隔天数。当前取值只能为1
        public let backupDay: UInt64?
        
        /// 备份模式，master_pkg-主节点上打包备份文件；master_no_pkg-主节点单库备份文件；slave_pkg-从节点上打包备份文件；slave_no_pkg-从节点上单库备份文件，从节点上备份只有在always on容灾模式下支持。
        public let backupModel: String?
        
        /// BackupType取值为weekly时，表示每周的星期N做备份。（如果数据备份保留时间<7天，则取值[1,2,3,4,5,6,7]。如果数据备份保留时间>=7天，则备份周期取值至少是一周的任意2天）
        public let backupCycle: [UInt64]?
        
        /// 数据(日志)备份保留时间，取值[3-1830]天，默认7天
        public let backupSaveDays: UInt64?
        
        /// 定期备份状态 enable-开启，disable-关闭，默认关闭
        public let regularBackupEnable: String?
        
        /// 定期备份保留天数 [90 - 3650]天，默认365天
        public let regularBackupSaveDays: UInt64?
        
        /// 定期备份策略 years-每年，quarters-每季度，months-每月，默认months
        public let regularBackupStrategy: String?
        
        /// 定期备份保留个数，默认1个
        public let regularBackupCounts: UInt64?
        
        /// 定期备份开始日期，格式-YYYY-MM-DD 默认当前日期
        public let regularBackupStartTime: String?
        
        public init (instanceId: String, backupType: String? = nil, backupTime: UInt64? = nil, backupDay: UInt64? = nil, backupModel: String? = nil, backupCycle: [UInt64]? = nil, backupSaveDays: UInt64? = nil, regularBackupEnable: String? = nil, regularBackupSaveDays: UInt64? = nil, regularBackupStrategy: String? = nil, regularBackupCounts: UInt64? = nil, regularBackupStartTime: String? = nil) {
            self.instanceId = instanceId
            self.backupType = backupType
            self.backupTime = backupTime
            self.backupDay = backupDay
            self.backupModel = backupModel
            self.backupCycle = backupCycle
            self.backupSaveDays = backupSaveDays
            self.regularBackupEnable = regularBackupEnable
            self.regularBackupSaveDays = regularBackupSaveDays
            self.regularBackupStrategy = regularBackupStrategy
            self.regularBackupCounts = regularBackupCounts
            self.regularBackupStartTime = regularBackupStartTime
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case backupType = "BackupType"
            case backupTime = "BackupTime"
            case backupDay = "BackupDay"
            case backupModel = "BackupModel"
            case backupCycle = "BackupCycle"
            case backupSaveDays = "BackupSaveDays"
            case regularBackupEnable = "RegularBackupEnable"
            case regularBackupSaveDays = "RegularBackupSaveDays"
            case regularBackupStrategy = "RegularBackupStrategy"
            case regularBackupCounts = "RegularBackupCounts"
            case regularBackupStartTime = "RegularBackupStartTime"
        }
    }
    
    /// ModifyBackupStrategy返回参数结构体
    public struct ModifyBackupStrategyResponse: TCResponseModel {
        /// 返回错误码
        public let errno: Int64
        
        /// 返回错误信息
        public let msg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case errno = "Errno"
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
    
    /// 设置备份策略
    ///
    /// 本接口（ModifyBackupStrategy）用于修改备份策略
    @inlinable
    public func modifyBackupStrategy(_ input: ModifyBackupStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyBackupStrategyResponse > {
        self.client.execute(action: "ModifyBackupStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置备份策略
    ///
    /// 本接口（ModifyBackupStrategy）用于修改备份策略
    @inlinable
    public func modifyBackupStrategy(_ input: ModifyBackupStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupStrategyResponse {
        try await self.client.execute(action: "ModifyBackupStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
