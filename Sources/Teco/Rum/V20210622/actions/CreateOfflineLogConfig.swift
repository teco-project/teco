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
    /// 创建离线日志监听
    ///
    /// 创建离线日志监听，对应用户的离线日志将上报
    @inlinable
    public func createOfflineLogConfig(_ input: CreateOfflineLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateOfflineLogConfigResponse > {
        self.client.execute(action: "CreateOfflineLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建离线日志监听
    ///
    /// 创建离线日志监听，对应用户的离线日志将上报
    @inlinable
    public func createOfflineLogConfig(_ input: CreateOfflineLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateOfflineLogConfigResponse {
        try await self.client.execute(action: "CreateOfflineLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateOfflineLogConfig请求参数结构体
    public struct CreateOfflineLogConfigRequest: TCRequestModel {
        /// 项目唯一上报 key
        public let projectKey: String
        
        /// 需要监听的用户唯一标示(aid 或 uin)
        public let uniqueID: String
        
        public init (projectKey: String, uniqueID: String) {
            self.projectKey = projectKey
            self.uniqueID = uniqueID
        }
        
        enum CodingKeys: String, CodingKey {
            case projectKey = "ProjectKey"
            case uniqueID = "UniqueID"
        }
    }
    
    /// CreateOfflineLogConfig返回参数结构体
    public struct CreateOfflineLogConfigResponse: TCResponseModel {
        /// 接口返回信息
        public let msg: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case msg = "Msg"
            case requestId = "RequestId"
        }
    }
}
