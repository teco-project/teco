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
    /// 发布公共配置
    @inlinable
    public func releasePublicConfig(_ input: ReleasePublicConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ReleasePublicConfigResponse > {
        self.client.execute(action: "ReleasePublicConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 发布公共配置
    @inlinable
    public func releasePublicConfig(_ input: ReleasePublicConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ReleasePublicConfigResponse {
        try await self.client.execute(action: "ReleasePublicConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ReleasePublicConfig请求参数结构体
    public struct ReleasePublicConfigRequest: TCRequestModel {
        /// 配置ID
        public let configId: String
        
        /// 命名空间ID
        public let namespaceId: String
        
        /// 发布描述
        public let releaseDesc: String?
        
        public init (configId: String, namespaceId: String, releaseDesc: String?) {
            self.configId = configId
            self.namespaceId = namespaceId
            self.releaseDesc = releaseDesc
        }
        
        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
            case namespaceId = "NamespaceId"
            case releaseDesc = "ReleaseDesc"
        }
    }
    
    /// ReleasePublicConfig返回参数结构体
    public struct ReleasePublicConfigResponse: TCResponseModel {
        /// true：发布成功；false：发布失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
