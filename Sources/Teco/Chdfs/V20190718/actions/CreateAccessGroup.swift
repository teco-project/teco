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

extension Chdfs {
    /// 创建权限组
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(_ input: CreateAccessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAccessGroupResponse > {
        self.client.execute(action: "CreateAccessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建权限组
    ///
    /// 云API旧版本2019-07-18预下线，所有功能由新版本2020-11-12替代，目前云API主要用作控制台使用。
    /// 创建权限组。
    @inlinable
    public func createAccessGroup(_ input: CreateAccessGroupRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccessGroupResponse {
        try await self.client.execute(action: "CreateAccessGroup", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAccessGroup请求参数结构体
    public struct CreateAccessGroupRequest: TCRequestModel {
        /// 权限组名称
        public let accessGroupName: String
        
        /// 权限组描述
        public let description: String?
        
        public init (accessGroupName: String, description: String?) {
            self.accessGroupName = accessGroupName
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case accessGroupName = "AccessGroupName"
            case description = "Description"
        }
    }
    
    /// CreateAccessGroup返回参数结构体
    public struct CreateAccessGroupResponse: TCResponseModel {
        /// 权限组
        public let accessGroup: AccessGroup
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case accessGroup = "AccessGroup"
            case requestId = "RequestId"
        }
    }
}
