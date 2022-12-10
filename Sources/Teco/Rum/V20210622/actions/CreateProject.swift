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

extension Rum {
    /// 创建项目
    ///
    /// 创建项目（归属于某个团队）
    @inlinable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateProjectResponse > {
        self.client.execute(action: "CreateProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建项目
    ///
    /// 创建项目（归属于某个团队）
    @inlinable
    public func createProject(_ input: CreateProjectRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProjectResponse {
        try await self.client.execute(action: "CreateProject", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateProject请求参数结构体
    public struct CreateProjectRequest: TCRequestModel {
        /// 创建的项目名(不为空且最长为 200)
        public let name: String
        
        /// 业务系统 ID
        public let instanceID: String
        
        /// 项目抽样率(大于等于 0)
        public let rate: String
        
        /// 是否开启聚类
        public let enableURLGroup: UInt64
        
        /// 项目类型("web", "mp", "android", "ios", "node", "hippy", "weex", "viola", "rn")
        public let type: String
        
        /// 项目对应仓库地址(可选，最长为 256)
        public let repo: String?
        
        /// 项目对应网页地址(可选，最长为 256)
        public let url: String?
        
        /// 创建的项目描述(可选，最长为 1000)
        public let desc: String?
        
        public init (name: String, instanceID: String, rate: String, enableURLGroup: UInt64, type: String, repo: String?, url: String?, desc: String?) {
            self.name = name
            self.instanceID = instanceID
            self.rate = rate
            self.enableURLGroup = enableURLGroup
            self.type = type
            self.repo = repo
            self.url = url
            self.desc = desc
        }
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case instanceID = "InstanceID"
            case rate = "Rate"
            case enableURLGroup = "EnableURLGroup"
            case type = "Type"
            case repo = "Repo"
            case url = "URL"
            case desc = "Desc"
        }
    }
    
    /// CreateProject返回参数结构体
    public struct CreateProjectResponse: TCResponseModel {
        /// 项目 id
        public let id: UInt64
        
        /// 项目唯一key
        public let key: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case key = "Key"
            case requestId = "RequestId"
        }
    }
}
