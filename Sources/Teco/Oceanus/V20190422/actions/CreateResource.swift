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
    /// CreateResource请求参数结构体
    public struct CreateResourceRequest: TCRequestModel {
        /// 资源位置
        public let resourceLoc: ResourceLoc
        
        /// 资源类型。目前只支持 JAR，取值为 1
        public let resourceType: Int64
        
        /// 资源描述
        public let remark: String?
        
        /// 资源名称
        public let name: String?
        
        /// 资源版本描述
        public let resourceConfigRemark: String?
        
        /// 目录ID
        public let folderId: String?
        
        /// 工作空间 SerialId
        public let workSpaceId: String?
        
        public init (resourceLoc: ResourceLoc, resourceType: Int64, remark: String? = nil, name: String? = nil, resourceConfigRemark: String? = nil, folderId: String? = nil, workSpaceId: String? = nil) {
            self.resourceLoc = resourceLoc
            self.resourceType = resourceType
            self.remark = remark
            self.name = name
            self.resourceConfigRemark = resourceConfigRemark
            self.folderId = folderId
            self.workSpaceId = workSpaceId
        }
        
        enum CodingKeys: String, CodingKey {
            case resourceLoc = "ResourceLoc"
            case resourceType = "ResourceType"
            case remark = "Remark"
            case name = "Name"
            case resourceConfigRemark = "ResourceConfigRemark"
            case folderId = "FolderId"
            case workSpaceId = "WorkSpaceId"
        }
    }
    
    /// CreateResource返回参数结构体
    public struct CreateResourceResponse: TCResponseModel {
        /// 资源ID
        public let resourceId: String
        
        /// 资源版本
        public let version: Int64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case resourceId = "ResourceId"
            case version = "Version"
            case requestId = "RequestId"
        }
    }
    
    /// 创建资源接口
    @inlinable
    public func createResource(_ input: CreateResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateResourceResponse > {
        self.client.execute(action: "CreateResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建资源接口
    @inlinable
    public func createResource(_ input: CreateResourceRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateResourceResponse {
        try await self.client.execute(action: "CreateResource", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
