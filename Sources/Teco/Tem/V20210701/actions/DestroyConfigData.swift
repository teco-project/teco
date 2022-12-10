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
    /// 销毁配置
    ///
    /// 销毁配置
    @inlinable
    public func destroyConfigData(_ input: DestroyConfigDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DestroyConfigDataResponse > {
        self.client.execute(action: "DestroyConfigData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 销毁配置
    ///
    /// 销毁配置
    @inlinable
    public func destroyConfigData(_ input: DestroyConfigDataRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DestroyConfigDataResponse {
        try await self.client.execute(action: "DestroyConfigData", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DestroyConfigData请求参数结构体
    public struct DestroyConfigDataRequest: TCRequestModel {
        /// 环境 ID
        public let environmentId: String
        
        /// 配置名
        public let name: String
        
        /// 来源渠道
        public let sourceChannel: Int64?
        
        public init (environmentId: String, name: String, sourceChannel: Int64?) {
            self.environmentId = environmentId
            self.name = name
            self.sourceChannel = sourceChannel
        }
        
        enum CodingKeys: String, CodingKey {
            case environmentId = "EnvironmentId"
            case name = "Name"
            case sourceChannel = "SourceChannel"
        }
    }
    
    /// DestroyConfigData返回参数结构体
    public struct DestroyConfigDataResponse: TCResponseModel {
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