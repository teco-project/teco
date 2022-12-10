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

extension Gaap {
    /// 修改域名属性
    ///
    /// 修改域名属性
    @inlinable
    public func modifyGlobalDomainAttribute(_ input: ModifyGlobalDomainAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyGlobalDomainAttributeResponse > {
        self.client.execute(action: "ModifyGlobalDomainAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 修改域名属性
    ///
    /// 修改域名属性
    @inlinable
    public func modifyGlobalDomainAttribute(_ input: ModifyGlobalDomainAttributeRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyGlobalDomainAttributeResponse {
        try await self.client.execute(action: "ModifyGlobalDomainAttribute", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyGlobalDomainAttribute请求参数结构体
    public struct ModifyGlobalDomainAttributeRequest: TCRequestModel {
        /// 域名ID
        public let domainId: String
        
        /// 项目ID
        public let projectId: UInt64
        
        /// 别名
        public let alias: String?
        
        /// 默认入口
        public let defaultValue: String?
        
        public init (domainId: String, projectId: UInt64, alias: String?, defaultValue: String?) {
            self.domainId = domainId
            self.projectId = projectId
            self.alias = alias
            self.defaultValue = defaultValue
        }
        
        enum CodingKeys: String, CodingKey {
            case domainId = "DomainId"
            case projectId = "ProjectId"
            case alias = "Alias"
            case defaultValue = "DefaultValue"
        }
    }
    
    /// ModifyGlobalDomainAttribute返回参数结构体
    public struct ModifyGlobalDomainAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}