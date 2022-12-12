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

extension Es {
    /// UpdateJdk请求参数结构体
    public struct UpdateJdkRequest: TCRequestModel {
        /// ES实例ID
        public let instanceId: String
        
        /// Jdk类型，支持kona和oracle
        public let jdk: String?
        
        /// Gc类型，支持g1和cms
        public let gc: String?
        
        /// 是否强制重启
        public let forceRestart: Bool?
        
        public init (instanceId: String, jdk: String? = nil, gc: String? = nil, forceRestart: Bool? = nil) {
            self.instanceId = instanceId
            self.jdk = jdk
            self.gc = gc
            self.forceRestart = forceRestart
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case jdk = "Jdk"
            case gc = "Gc"
            case forceRestart = "ForceRestart"
        }
    }
    
    /// UpdateJdk返回参数结构体
    public struct UpdateJdkResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
    
    /// 更新实例Jdk配置
    @inlinable
    public func updateJdk(_ input: UpdateJdkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateJdkResponse > {
        self.client.execute(action: "UpdateJdk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新实例Jdk配置
    @inlinable
    public func updateJdk(_ input: UpdateJdkRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateJdkResponse {
        try await self.client.execute(action: "UpdateJdk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
