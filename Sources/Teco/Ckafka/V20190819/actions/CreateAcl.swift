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

extension Ckafka {
    /// 添加 ACL 策略
    ///
    /// 添加 ACL 策略
    @inlinable
    public func createAcl(_ input: CreateAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateAclResponse > {
        self.client.execute(action: "CreateAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 添加 ACL 策略
    ///
    /// 添加 ACL 策略
    @inlinable
    public func createAcl(_ input: CreateAclRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAclResponse {
        try await self.client.execute(action: "CreateAcl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateAcl请求参数结构体
    public struct CreateAclRequest: TCRequestModel {
        /// 实例id信息
        public let instanceId: String
        
        /// Acl资源类型，(2:TOPIC，3:GROUP，4:CLUSTER)
        public let resourceType: Int64
        
        /// Acl操作方式，(2:ALL，3:READ，4:WRITE，5:CREATE，6:DELETE，7:ALTER，8:DESCRIBE，9:CLUSTER_ACTION，10:DESCRIBE_CONFIGS，11:ALTER_CONFIGS，12:IDEMPOTENT_WRITE)
        public let operation: Int64
        
        /// 权限类型，(2:DENY，3:ALLOW)，当前ckakfa支持ALLOW(相当于白名单)，其它用于后续兼容开源kafka的acl时使用
        public let permissionType: Int64
        
        /// 资源名称，和resourceType相关，如当resourceType为TOPIC时，则该字段表示topic名称，当resourceType为GROUP时，该字段表示group名称，当resourceType为CLUSTER时，该字段可为空。
        public let resourceName: String?
        
        /// 默认为\*，表示任何host都可以访问，当前ckafka不支持host为\*，但是后面开源kafka的产品化会直接支持
        public let host: String?
        
        /// 用户列表，默认为User:*，表示任何user都可以访问，当前用户只能是用户列表中包含的用户。传入时需要加 User: 前缀,如用户A则传入User:A。
        public let principal: String?
        
        /// 资源名称列表,Json字符串格式。ResourceName和resourceNameList只能指定其中一个。
        public let resourceNameList: String?
        
        public init (instanceId: String, resourceType: Int64, operation: Int64, permissionType: Int64, resourceName: String?, host: String?, principal: String?, resourceNameList: String?) {
            self.instanceId = instanceId
            self.resourceType = resourceType
            self.operation = operation
            self.permissionType = permissionType
            self.resourceName = resourceName
            self.host = host
            self.principal = principal
            self.resourceNameList = resourceNameList
        }
        
        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case resourceType = "ResourceType"
            case operation = "Operation"
            case permissionType = "PermissionType"
            case resourceName = "ResourceName"
            case host = "Host"
            case principal = "Principal"
            case resourceNameList = "ResourceNameList"
        }
    }
    
    /// CreateAcl返回参数结构体
    public struct CreateAclResponse: TCResponseModel {
        /// 返回结果
        public let result: JgwOperateResponse
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}