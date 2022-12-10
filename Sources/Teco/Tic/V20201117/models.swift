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

extension Tic {
    /// 事件详情
    public struct EventInfo: TCOutputModel {
        /// 事件ID
        public let eventId: String
        
        /// 版本ID
        public let versionId: String
        
        /// 资源栈ID
        public let stackId: String
        
        /// 事件类型
        public let type: String
        
        /// 版本状态
        public let status: String
        
        /// 状态信息
        public let message: String
        
        /// 创建时间
        public let createTime: String
        
        enum CodingKeys: String, CodingKey {
            case eventId = "EventId"
            case versionId = "VersionId"
            case stackId = "StackId"
            case type = "Type"
            case status = "Status"
            case message = "Message"
            case createTime = "CreateTime"
        }
    }
    
    /// 查询过滤条件
    public struct Filter: TCInputModel {
        /// 条件名字
        public let name: String
        
        /// 匹配的值，可以有多个
        public let values: [String]
        
        public init (name: String, values: [String]) {
            self.name = name
            self.values = values
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case values = "Values"
        }
    }
    
    /// 资源栈信息
    public struct StackInfo: TCOutputModel {
        /// 资源栈ID
        public let stackId: String
        
        /// 资源栈名称
        public let stackName: String
        
        /// 资源栈描述
        public let description: String
        
        /// 所处地域
        public let region: String
        
        /// 资源栈状态
        public let status: String
        
        /// 创建时间
        public let createTime: String
        
        enum CodingKeys: String, CodingKey {
            case stackId = "StackId"
            case stackName = "StackName"
            case description = "Description"
            case region = "Region"
            case status = "Status"
            case createTime = "CreateTime"
        }
    }
    
    /// 版本信息
    public struct VersionInfo: TCOutputModel {
        /// 版本ID
        public let versionId: String
        
        /// 版本名称
        public let versionName: String
        
        /// 版本描述
        public let description: String
        
        /// 资源栈ID
        public let stackId: String
        
        /// 版本状态
        public let status: String
        
        /// 创建时间
        public let createTime: String
        
        enum CodingKeys: String, CodingKey {
            case versionId = "VersionId"
            case versionName = "VersionName"
            case description = "Description"
            case stackId = "StackId"
            case status = "Status"
            case createTime = "CreateTime"
        }
    }
}
