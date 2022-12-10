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

extension Cls {
    /// 创建告警策略
    ///
    /// 本接口用于创建告警策略。
    @inlinable
    public func createAlarm(_ input: CreateAlarmRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAlarmResponse > {
        self.client.execute(action: "CreateAlarm", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建告警策略
    ///
    /// 本接口用于创建告警策略。
    @inlinable
    public func createAlarm(_ input: CreateAlarmRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAlarmResponse {
        try await self.client.execute(action: "CreateAlarm", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAlarm请求参数结构体
    public struct CreateAlarmRequest: TCRequestModel {
        /// 告警策略名称
        public let name: String
        
        /// 监控对象列表。
        public let alarmTargets: [AlarmTarget]
        
        /// 监控任务运行时间点。
        public let monitorTime: MonitorTime
        
        /// 触发条件。
        public let condition: String
        
        /// 持续周期。持续满足触发条件TriggerCount个周期后，再进行告警；最小值为1，最大值为10。
        public let triggerCount: Int64
        
        /// 告警重复的周期。单位是分钟。取值范围是0~1440。
        public let alarmPeriod: Int64
        
        /// 关联的告警通知模板列表。
        public let alarmNoticeIds: [String]
        
        /// 是否开启告警策略。默认值为true
        public let status: Bool?
        
        /// 用户自定义告警内容
        public let messageTemplate: String?
        
        /// 用户自定义回调
        public let callBack: CallBackInfo
        
        /// 多维分析
        public let analysis: [AnalysisDimensional]?
        
        public init (name: String, alarmTargets: [AlarmTarget], monitorTime: MonitorTime, condition: String, triggerCount: Int64, alarmPeriod: Int64, alarmNoticeIds: [String], status: Bool?, messageTemplate: String?, callBack: CallBackInfo, analysis: [AnalysisDimensional]?) {
            self.name = name
            self.alarmTargets = alarmTargets
            self.monitorTime = monitorTime
            self.condition = condition
            self.triggerCount = triggerCount
            self.alarmPeriod = alarmPeriod
            self.alarmNoticeIds = alarmNoticeIds
            self.status = status
            self.messageTemplate = messageTemplate
            self.callBack = callBack
            self.analysis = analysis
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case alarmTargets = "AlarmTargets"
            case monitorTime = "MonitorTime"
            case condition = "Condition"
            case triggerCount = "TriggerCount"
            case alarmPeriod = "AlarmPeriod"
            case alarmNoticeIds = "AlarmNoticeIds"
            case status = "Status"
            case messageTemplate = "MessageTemplate"
            case callBack = "CallBack"
            case analysis = "Analysis"
        }
    }
    
    /// CreateAlarm返回参数结构体
    public struct CreateAlarmResponse: TCResponseModel {
        /// 告警策略ID。
        public let alarmId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case alarmId = "AlarmId"
            case requestId = "RequestId"
        }
    }
}