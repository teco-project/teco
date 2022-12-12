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

extension As {
    /// CreateNotificationConfiguration请求参数结构体
    public struct CreateNotificationConfigurationRequest: TCRequestModel {
        /// 伸缩组ID。
        public let autoScalingGroupId: String
        
        /// 通知类型，即为需要订阅的通知类型集合，取值范围如下：
        /// <li>SCALE_OUT_SUCCESSFUL：扩容成功</li>
        /// <li>SCALE_OUT_FAILED：扩容失败</li>
        /// <li>SCALE_IN_SUCCESSFUL：缩容成功</li>
        /// <li>SCALE_IN_FAILED：缩容失败</li>
        /// <li>REPLACE_UNHEALTHY_INSTANCE_SUCCESSFUL：替换不健康子机成功</li>
        /// <li>REPLACE_UNHEALTHY_INSTANCE_FAILED：替换不健康子机失败</li>
        public let notificationTypes: [String]
        
        /// 通知组ID，即为用户组ID集合，用户组ID可以通过[ListGroups](https://cloud.tencent.com/document/product/598/34589)查询。
        public let notificationUserGroupIds: [String]?
        
        /// 通知接收端类型，取值如下
        /// <br><li>USER_GROUP：用户组
        /// <br><li>CMQ_QUEUE：CMQ 队列
        /// <br><li>CMQ_TOPIC：CMQ 主题
        /// <br><li>TDMQ_CMQ_TOPIC：TDMQ CMQ 主题
        /// <br><li>TDMQ_CMQ_QUEUE：TDMQ CMQ 队列
        /// 默认值为：`USER_GROUP`。
        public let targetType: String?
        
        /// CMQ 队列名称，如 TargetType 取值为 `CMQ_QUEUE` 或 `TDMQ_CMQ_QUEUE` 时，该字段必填。
        public let queueName: String?
        
        /// CMQ 主题名称，如 TargetType 取值为 `CMQ_TOPIC` 或 `TDMQ_CMQ_TOPIC` 时，该字段必填。
        public let topicName: String?
        
        public init (autoScalingGroupId: String, notificationTypes: [String], notificationUserGroupIds: [String]? = nil, targetType: String? = nil, queueName: String? = nil, topicName: String? = nil) {
            self.autoScalingGroupId = autoScalingGroupId
            self.notificationTypes = notificationTypes
            self.notificationUserGroupIds = notificationUserGroupIds
            self.targetType = targetType
            self.queueName = queueName
            self.topicName = topicName
        }
        
        enum CodingKeys: String, CodingKey {
            case autoScalingGroupId = "AutoScalingGroupId"
            case notificationTypes = "NotificationTypes"
            case notificationUserGroupIds = "NotificationUserGroupIds"
            case targetType = "TargetType"
            case queueName = "QueueName"
            case topicName = "TopicName"
        }
    }
    
    /// CreateNotificationConfiguration返回参数结构体
    public struct CreateNotificationConfigurationResponse: TCResponseModel {
        /// 通知ID。
        public let autoScalingNotificationId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case autoScalingNotificationId = "AutoScalingNotificationId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建通知
    ///
    /// 本接口（CreateNotificationConfiguration）用于创建通知。
    /// 通知到 CMQ 主题或队列时，消息内容如下：
    /// ```
    /// {
    ///     "Service": "Tencent Cloud Auto Scaling",
    ///     "CreatedTime": "2021-10-11T10:15:11Z", // 活动创建时间
    ///     "AppId": "100000000",
    ///     "ActivityId": "asa-fznnvrja", // 伸缩活动ID
    ///     "AutoScalingGroupId": "asg-pc2oqu2z", // 伸缩组ID
    ///     "ActivityType": "SCALE_OUT",  // 伸缩活动类型
    ///     "StatusCode": "SUCCESSFUL",   // 伸缩活动结果
    ///     "Description": "Activity was launched in response to a difference between desired capacity and actual capacity,
    ///     scale out 1 instance(s).", // 伸缩活动描述
    ///     "StartTime": "2021-10-11T10:15:11Z",  // 活动开始时间
    ///     "EndTime": "2021-10-11T10:15:32Z",    // 活动结束时间
    ///     "DetailedStatusMessageSet": [ // 活动内部错误集合（非空不代表活动失败）
    ///         {
    ///             "Code": "InvalidInstanceType",
    ///             "Zone": "ap-guangzhou-2",
    ///             "InstanceId": "",
    ///             "InstanceChargeType": "POSTPAID_BY_HOUR",
    ///             "SubnetId": "subnet-4t5mgeuu",
    ///             "Message": "The specified instance type `S5.LARGE8` is invalid in `subnet-4t5mgeuu`, `ap-guangzhou-2`.",
    ///             "InstanceType": "S5.LARGE8"
    ///         }
    ///     ]
    /// }
    /// ```
    @inlinable
    public func createNotificationConfiguration(_ input: CreateNotificationConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateNotificationConfigurationResponse > {
        self.client.execute(action: "CreateNotificationConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建通知
    ///
    /// 本接口（CreateNotificationConfiguration）用于创建通知。
    /// 通知到 CMQ 主题或队列时，消息内容如下：
    /// ```
    /// {
    ///     "Service": "Tencent Cloud Auto Scaling",
    ///     "CreatedTime": "2021-10-11T10:15:11Z", // 活动创建时间
    ///     "AppId": "100000000",
    ///     "ActivityId": "asa-fznnvrja", // 伸缩活动ID
    ///     "AutoScalingGroupId": "asg-pc2oqu2z", // 伸缩组ID
    ///     "ActivityType": "SCALE_OUT",  // 伸缩活动类型
    ///     "StatusCode": "SUCCESSFUL",   // 伸缩活动结果
    ///     "Description": "Activity was launched in response to a difference between desired capacity and actual capacity,
    ///     scale out 1 instance(s).", // 伸缩活动描述
    ///     "StartTime": "2021-10-11T10:15:11Z",  // 活动开始时间
    ///     "EndTime": "2021-10-11T10:15:32Z",    // 活动结束时间
    ///     "DetailedStatusMessageSet": [ // 活动内部错误集合（非空不代表活动失败）
    ///         {
    ///             "Code": "InvalidInstanceType",
    ///             "Zone": "ap-guangzhou-2",
    ///             "InstanceId": "",
    ///             "InstanceChargeType": "POSTPAID_BY_HOUR",
    ///             "SubnetId": "subnet-4t5mgeuu",
    ///             "Message": "The specified instance type `S5.LARGE8` is invalid in `subnet-4t5mgeuu`, `ap-guangzhou-2`.",
    ///             "InstanceType": "S5.LARGE8"
    ///         }
    ///     ]
    /// }
    /// ```
    @inlinable
    public func createNotificationConfiguration(_ input: CreateNotificationConfigurationRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateNotificationConfigurationResponse {
        try await self.client.execute(action: "CreateNotificationConfiguration", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
