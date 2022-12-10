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

extension Scf {
    /// 更新别名的配置
    ///
    /// 更新别名的配置
    @inlinable
    public func updateAlias(_ input: UpdateAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateAliasResponse > {
        self.client.execute(action: "UpdateAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新别名的配置
    ///
    /// 更新别名的配置
    @inlinable
    public func updateAlias(_ input: UpdateAliasRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAliasResponse {
        try await self.client.execute(action: "UpdateAlias", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateAlias请求参数结构体
    public struct UpdateAliasRequest: TCRequestModel {
        /// 函数名称
        public let functionName: String
        
        /// 别名的名称
        public let name: String
        
        /// 别名指向的主版本
        public let functionVersion: String
        
        /// 函数所在的命名空间
        public let namespace: String?
        
        /// 别名的路由信息，需要为别名指定附加版本时，必须提供此参数
        public let routingConfig: RoutingConfig
        
        /// 别名的描述
        public let description: String?
        
        public init (functionName: String, name: String, functionVersion: String, namespace: String?, routingConfig: RoutingConfig, description: String?) {
            self.functionName = functionName
            self.name = name
            self.functionVersion = functionVersion
            self.namespace = namespace
            self.routingConfig = routingConfig
            self.description = description
        }
        
        enum CodingKeys: String, CodingKey {
            case functionName = "FunctionName"
            case name = "Name"
            case functionVersion = "FunctionVersion"
            case namespace = "Namespace"
            case routingConfig = "RoutingConfig"
            case description = "Description"
        }
    }
    
    /// UpdateAlias返回参数结构体
    public struct UpdateAliasResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}