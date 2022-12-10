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

extension Dcdb {
    /// 修改数据库账号备注
    ///
    /// 本接口（ModifyAccountDescription）用于修改云数据库账号备注。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyAccountDescriptionResponse > {
        self.client.execute(action: "ModifyAccountDescription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改数据库账号备注
    ///
    /// 本接口（ModifyAccountDescription）用于修改云数据库账号备注。
    /// 注意：相同用户名，不同Host是不同的账号。
    @inlinable
    public func modifyAccountDescription(_ input: ModifyAccountDescriptionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAccountDescriptionResponse {
        try await self.client.execute(action: "ModifyAccountDescription", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyAccountDescription请求参数结构体
    public struct ModifyAccountDescriptionRequest: TCRequestModel {
        /// 实例 ID，形如：dcdbt-ow728lmc。
        public let instanceId: String
        
        /// 登录用户名。
        public let userName: String
        
        /// 用户允许的访问 host，用户名+host唯一确定一个账号。
        public let host: String
        
        /// 新的账号备注，长度 0~256。
        public let description: String
        
        public init (instanceId: String, userName: String, host: String, description: String) {
            self.instanceId = instanceId
            self.userName = userName
            self.host = host
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case userName = "UserName"
            case host = "Host"
            case description = "Description"
        }
    }
    
    /// ModifyAccountDescription返回参数结构体
    public struct ModifyAccountDescriptionResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
