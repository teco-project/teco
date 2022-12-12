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

extension Oceanus {
    /// CreateResourceConfig请求参数结构体
    public struct CreateResourceConfigRequest: TCRequestModel {
        /// 资源ID
        public let resourceId: String
        
        /// 位置信息
        public let resourceLoc: ResourceLoc
        
        /// 资源描述信息
        public let remark: String?
        
        /// 1： 资源版本达到上限，自动删除最早可删除的版本
        public let autoDelete: Int64?
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (resourceId: String, resourceLoc: ResourceLoc, remark: String? = nil, autoDelete: Int64? = nil, workSpaceId: String? = nil) {
            self.resourceId = resourceId
            self.resourceLoc = resourceLoc
            self.remark = remark
            self.autoDelete = autoDelete
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case resourceLoc = "ResourceLoc"
            case remark = "Remark"
            case autoDelete = "AutoDelete"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// CreateResourceConfig返回参数结构体
    public struct CreateResourceConfigResponse: TCResponseModel {
        /// 资源版本ID
        public let version: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case version = "Version"
            case requestId = "RequestId"
        }
    }
    
    /// 创建资源配置接口
    @inlinable
    public func createResourceConfig(_ input: CreateResourceConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateResourceConfigResponse > {
        self.client.execute(action: "CreateResourceConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建资源配置接口
    @inlinable
    public func createResourceConfig(_ input: CreateResourceConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceConfigResponse {
        try await self.client.execute(action: "CreateResourceConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
