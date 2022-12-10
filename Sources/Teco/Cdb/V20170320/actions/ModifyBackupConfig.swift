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

extension Cdb {
    /// 修改数据库备份配置
    ///
    /// 本接口(ModifyBackupConfig)用于修改数据库备份配置信息。
    @inlinable
    public func modifyBackupConfig(_ input: ModifyBackupConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyBackupConfigResponse > {
        self.client.execute(action: "ModifyBackupConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改数据库备份配置
    ///
    /// 本接口(ModifyBackupConfig)用于修改数据库备份配置信息。
    @inlinable
    public func modifyBackupConfig(_ input: ModifyBackupConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBackupConfigResponse {
        try await self.client.execute(action: "ModifyBackupConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyBackupConfig请求参数结构体
    public struct ModifyBackupConfigRequest: TCRequestModel {
        /// 实例 ID，格式如：cdb-c1nl9rpv。与云数据库控制台页面中显示的实例ID相同。
        public let instanceId: String
        
        /// 备份文件的保留时间，单位为天。最小值为7天，最大值为1830天。
        public let expireDays: Int64?
        
        /// (将废弃，建议使用 BackupTimeWindow 参数) 备份时间范围，格式为：02:00-06:00，起点和终点时间目前限制为整点，目前可以选择的范围为： 00:00-12:00，02:00-06:00，06：00-10：00，10:00-14:00，14:00-18:00，18:00-22:00，22:00-02:00。
        public let startTime: String?
        
        /// 自动备份方式，仅支持：physical - 物理冷备
        public let backupMethod: String?
        
        /// binlog的保留时间，单位为天。最小值为7天，最大值为1830天。该值的设置不能大于备份文件的保留时间。
        public let binlogExpireDays: Int64?
        
        /// 备份时间窗，比如要设置每周二和周日 10:00-14:00之间备份，该参数如下：{"Monday": "", "Tuesday": "10:00-14:00", "Wednesday": "", "Thursday": "", "Friday": "", "Saturday": "", "Sunday": "10:00-14:00"}    （注：可以设置一周的某几天备份，但是每天的备份时间需要设置为相同的时间段。 如果设置了该字段，将忽略StartTime字段的设置）
        public let backupTimeWindow: CommonTimeWindow
        
        /// 定期保留开关，off - 不开启定期保留策略，on - 开启定期保留策略，默认为off。首次开启定期保留策略时，BackupPeriodSaveDays，BackupPeriodSaveInterval，BackupPeriodSaveCount，StartBackupPeriodSaveDate参数为必填项，否则定期保留策略不会生效
        public let enableBackupPeriodSave: String?
        
        /// 长期保留开关,该字段功能暂未上线，可忽略。off - 不开启长期保留策略，on - 开启长期保留策略，默认为off，如果开启，则BackupPeriodSaveDays，BackupPeriodSaveInterval，BackupPeriodSaveCount参数无效
        public let enableBackupPeriodLongTermSave: String?
        
        /// 定期保留最长天数，最小值：90，最大值：3650，默认值：1080
        public let backupPeriodSaveDays: Int64?
        
        /// 定期保留策略周期，可取值：weekly - 周，monthly - 月， quarterly - 季度，yearly - 年，默认为monthly
        public let backupPeriodSaveInterval: String?
        
        /// 定期保留的备份数量，最小值为1，最大值不超过定期保留策略周期内常规备份个数，默认值为1
        public let backupPeriodSaveCount: Int64?
        
        /// 定期保留策略周期起始日期，格式：YYYY-MM-dd HH:mm:ss
        public let startBackupPeriodSaveDate: String?
        
        /// 是否开启数据备份归档策略，off-关闭，on-打开，默认为off
        public let enableBackupArchive: String?
        
        /// 数据备份归档起始天数，数据备份达到归档起始天数时进行归档，最小为180天，不得大于数据备份保留天数
        public let backupArchiveDays: Int64?
        
        /// 日志备份归档起始天数，日志备份达到归档起始天数时进行归档，最小为180天，不得大于日志备份保留天数
        public let binlogArchiveDays: Int64?
        
        /// 是否开启日志备份归档策略，off-关闭，on-打开，默认为off
        public let enableBinlogArchive: String?
        
        public init (instanceId: String, expireDays: Int64?, startTime: String?, backupMethod: String?, binlogExpireDays: Int64?, backupTimeWindow: CommonTimeWindow, enableBackupPeriodSave: String?, enableBackupPeriodLongTermSave: String?, backupPeriodSaveDays: Int64?, backupPeriodSaveInterval: String?, backupPeriodSaveCount: Int64?, startBackupPeriodSaveDate: String?, enableBackupArchive: String?, backupArchiveDays: Int64?, binlogArchiveDays: Int64?, enableBinlogArchive: String?) {
            self.instanceId = instanceId
            self.expireDays = expireDays
            self.startTime = startTime
            self.backupMethod = backupMethod
            self.binlogExpireDays = binlogExpireDays
            self.backupTimeWindow = backupTimeWindow
            self.enableBackupPeriodSave = enableBackupPeriodSave
            self.enableBackupPeriodLongTermSave = enableBackupPeriodLongTermSave
            self.backupPeriodSaveDays = backupPeriodSaveDays
            self.backupPeriodSaveInterval = backupPeriodSaveInterval
            self.backupPeriodSaveCount = backupPeriodSaveCount
            self.startBackupPeriodSaveDate = startBackupPeriodSaveDate
            self.enableBackupArchive = enableBackupArchive
            self.backupArchiveDays = backupArchiveDays
            self.binlogArchiveDays = binlogArchiveDays
            self.enableBinlogArchive = enableBinlogArchive
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case expireDays = "ExpireDays"
            case startTime = "StartTime"
            case backupMethod = "BackupMethod"
            case binlogExpireDays = "BinlogExpireDays"
            case backupTimeWindow = "BackupTimeWindow"
            case enableBackupPeriodSave = "EnableBackupPeriodSave"
            case enableBackupPeriodLongTermSave = "EnableBackupPeriodLongTermSave"
            case backupPeriodSaveDays = "BackupPeriodSaveDays"
            case backupPeriodSaveInterval = "BackupPeriodSaveInterval"
            case backupPeriodSaveCount = "BackupPeriodSaveCount"
            case startBackupPeriodSaveDate = "StartBackupPeriodSaveDate"
            case enableBackupArchive = "EnableBackupArchive"
            case backupArchiveDays = "BackupArchiveDays"
            case binlogArchiveDays = "BinlogArchiveDays"
            case enableBinlogArchive = "EnableBinlogArchive"
        }
    }
    
    /// ModifyBackupConfig返回参数结构体
    public struct ModifyBackupConfigResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}