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

extension Tem {
    /// 销毁日志收集配置
    ///
    /// 销毁日志收集配置
    @inlinable
    public func destroyLogConfig(_ input: DestroyLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroyLogConfigResponse > {
        self.client.execute(action: "DestroyLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁日志收集配置
    ///
    /// 销毁日志收集配置
    @inlinable
    public func destroyLogConfig(_ input: DestroyLogConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyLogConfigResponse {
        try await self.client.execute(action: "DestroyLogConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DestroyLogConfig请求参数结构体
    public struct DestroyLogConfigRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String
        
        /// 配置名
        public let name: String
        
        /// 应用 ID
        public let applicationId: String?
        
        public init (environmentId: String, name: String, applicationId: String?) {
            self.environmentId = environmentId
            self.name = name
            self.applicationId = applicationId
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case applicationId = "ApplicationId"
        }
    }
    
    /// DestroyLogConfig返回参数结构体
    public struct DestroyLogConfigResponse: TCResponseModel {
        /// 返回结果
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}