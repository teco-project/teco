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

extension Wedata {
    /// 告警接收人详情
    ///
    /// 告警接收人详情
    @inlinable
    public func describeAlarmReceiver(_ input: DescribeAlarmReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeAlarmReceiverResponse > {
        self.client.execute(action: "DescribeAlarmReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 告警接收人详情
    ///
    /// 告警接收人详情
    @inlinable
    public func describeAlarmReceiver(_ input: DescribeAlarmReceiverRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeAlarmReceiverResponse {
        try await self.client.execute(action: "DescribeAlarmReceiver", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeAlarmReceiver请求参数结构体
    public struct DescribeAlarmReceiverRequest: TCRequestModel {
        /// 告警ID
        public let alarmId: String
        
        /// 当前页
        public let pageNumber: UInt64
        
        /// 每页记录数
        public let pageSize: UInt64
        
        /// 项目ID
        public let projectId: String
        
        /// 消息ID
        public let messageId: String
        
        /// 类型
        public let taskType: UInt64?
        
        /// 告警接收人ID(逗号分隔)
        public let alarmRecipient: String?
        
        /// 告警接收人姓名(逗号分隔)
        public let alarmRecipientName: String?
        
        /// 告警时间
        public let alarmTime: String?
        
        public init (alarmId: String, pageNumber: UInt64, pageSize: UInt64, projectId: String, messageId: String, taskType: UInt64?, alarmRecipient: String?, alarmRecipientName: String?, alarmTime: String?) {
            self.alarmId = alarmId
            self.pageNumber = pageNumber
            self.pageSize = pageSize
            self.projectId = projectId
            self.messageId = messageId
            self.taskType = taskType
            self.alarmRecipient = alarmRecipient
            self.alarmRecipientName = alarmRecipientName
            self.alarmTime = alarmTime
        }
        
        enum CodingKeys: String, CodingKey {
            case alarmId = "AlarmId"
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case projectId = "ProjectId"
            case messageId = "MessageId"
            case taskType = "TaskType"
            case alarmRecipient = "AlarmRecipient"
            case alarmRecipientName = "AlarmRecipientName"
            case alarmTime = "AlarmTime"
        }
    }
    
    /// DescribeAlarmReceiver返回参数结构体
    public struct DescribeAlarmReceiverResponse: TCResponseModel {
        /// 告警接收人列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alarmReceiverInfoList: [AlarmReceiverInfo]?
        
        /// 总记录数
        public let totalCount: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case alarmReceiverInfoList = "AlarmReceiverInfoList"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }
}