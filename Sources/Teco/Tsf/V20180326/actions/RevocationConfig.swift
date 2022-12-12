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

extension Tsf {
    /// RevocationConfig请求参数结构体
    public struct RevocationConfigRequest: TCRequestModel {
        /// 配置项发布ID
        public let configReleaseId: String
        
        public init (configReleaseId: String) {
            self.configReleaseId = configReleaseId
        }
        
        enum CodingKeys: String, CodingKey {
            case configReleaseId = "ConfigReleaseId"
        }
    }
    
    /// RevocationConfig返回参数结构体
    public struct RevocationConfigResponse: TCResponseModel {
        /// true：回滚成功；false：回滚失败
        public let result: Bool
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 撤回已发布的配置
    @inlinable
    public func revocationConfig(_ input: RevocationConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < RevocationConfigResponse > {
        self.client.execute(action: "RevocationConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 撤回已发布的配置
    @inlinable
    public func revocationConfig(_ input: RevocationConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> RevocationConfigResponse {
        try await self.client.execute(action: "RevocationConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
