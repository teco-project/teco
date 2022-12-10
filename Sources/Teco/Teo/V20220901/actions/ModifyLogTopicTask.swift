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

extension Teo {
    /// 修改推送任务
    ///
    /// 本接口（ModifyLogTopicTask）用于修改日志推送任务信息。
    @inlinable
    public func modifyLogTopicTask(_ input: ModifyLogTopicTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLogTopicTaskResponse > {
        self.client.execute(action: "ModifyLogTopicTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改推送任务
    ///
    /// 本接口（ModifyLogTopicTask）用于修改日志推送任务信息。
    @inlinable
    public func modifyLogTopicTask(_ input: ModifyLogTopicTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLogTopicTaskResponse {
        try await self.client.execute(action: "ModifyLogTopicTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyLogTopicTask请求参数结构体
    public struct ModifyLogTopicTaskRequest: TCRequestModel {
        /// 站点ID。
        public let zoneId: String
        
        /// 日志集所属地区。
        public let logSetRegion: String
        
        /// 日志集ID。
        public let logSetId: String
        
        /// 日志主题ID。
        public let topicId: String
        
        /// 数据推送类型，可选的类型有：
        /// <li>domain：七层代理日志；</li>
        /// <li>application：四层代理日志；</li>
        /// <li>web-rateLiming：速率限制日志；</li>
        /// <li>web-attack：Web攻击防护日志；</li>
        /// <li>web-rule：自定义规则日志；</li>
        /// <li>web-bot：Bot管理日志。</li>
        public let entityType: String?
        
        /// 推送任务名。
        public let taskName: String?
        
        /// 待更新的主题名称，不填表示不更新主题名称。
        public let topicName: String?
        
        /// 更新后的日志集名称。
        public let logSetName: String?
        
        /// 更新后的日志集保存时间。
        public let period: Int64?
        
        /// 待添加的推送任务实体列表。
        public let dropEntityList: [String]?
        
        /// 待删除的推送任务实例列表。
        public let addedEntityList: [String]?
        
        public init (zoneId: String, logSetRegion: String, logSetId: String, topicId: String, entityType: String?, taskName: String?, topicName: String?, logSetName: String?, period: Int64?, dropEntityList: [String]?, addedEntityList: [String]?) {
            self.zoneId = zoneId
            self.logSetRegion = logSetRegion
            self.logSetId = logSetId
            self.topicId = topicId
            self.entityType = entityType
            self.taskName = taskName
            self.topicName = topicName
            self.logSetName = logSetName
            self.period = period
            self.dropEntityList = dropEntityList
            self.addedEntityList = addedEntityList
        }
        
        enum CodingKeys: String, CodingKey {
            case zoneId = "ZoneId"
            case logSetRegion = "LogSetRegion"
            case logSetId = "LogSetId"
            case topicId = "TopicId"
            case entityType = "EntityType"
            case taskName = "TaskName"
            case topicName = "TopicName"
            case logSetName = "LogSetName"
            case period = "Period"
            case dropEntityList = "DropEntityList"
            case addedEntityList = "AddedEntityList"
        }
    }
    
    /// ModifyLogTopicTask返回参数结构体
    public struct ModifyLogTopicTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
