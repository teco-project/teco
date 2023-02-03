//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Scf {
    /// CreateAlias请求参数结构体
    public struct CreateAliasRequest: TCRequestModel {
        /// 别名的名称，在函数级别中唯一，只能包含字母、数字、'_'和‘-’，且必须以字母开头，长度限制为1-64
        public let name: String

        /// 函数名称
        public let functionName: String

        /// 别名指向的主版本
        public let functionVersion: String

        /// 函数所在的命名空间
        public let namespace: String?

        /// 别名的请求路由配置
        public let routingConfig: RoutingConfig?

        /// 别名的描述信息
        public let description: String?

        public init(name: String, functionName: String, functionVersion: String, namespace: String? = nil, routingConfig: RoutingConfig? = nil, description: String? = nil) {
            self.name = name
            self.functionName = functionName
            self.functionVersion = functionVersion
            self.namespace = namespace
            self.routingConfig = routingConfig
            self.description = description
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case functionName = "FunctionName"
            case functionVersion = "FunctionVersion"
            case namespace = "Namespace"
            case routingConfig = "RoutingConfig"
            case description = "Description"
        }
    }

    /// CreateAlias返回参数结构体
    public struct CreateAliasResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建函数版本别名
    ///
    /// 为某个函数版本创建一个别名，您可以使用别名来标记特定的函数版本，如DEV/RELEASE版本，也可以随时修改别名指向的版本。
    /// 一个别名必须指向一个主版本，此外还可以同时指向一个附加版本。调用函数时指定特定的别名，则请求会被发送到别名指向的版本上，您可以配置请求发送到主版本和附加版本的比例。
    @inlinable @discardableResult
    public func createAlias(_ input: CreateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAliasResponse> {
        self.client.execute(action: "CreateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建函数版本别名
    ///
    /// 为某个函数版本创建一个别名，您可以使用别名来标记特定的函数版本，如DEV/RELEASE版本，也可以随时修改别名指向的版本。
    /// 一个别名必须指向一个主版本，此外还可以同时指向一个附加版本。调用函数时指定特定的别名，则请求会被发送到别名指向的版本上，您可以配置请求发送到主版本和附加版本的比例。
    @inlinable @discardableResult
    public func createAlias(_ input: CreateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAliasResponse {
        try await self.client.execute(action: "CreateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建函数版本别名
    ///
    /// 为某个函数版本创建一个别名，您可以使用别名来标记特定的函数版本，如DEV/RELEASE版本，也可以随时修改别名指向的版本。
    /// 一个别名必须指向一个主版本，此外还可以同时指向一个附加版本。调用函数时指定特定的别名，则请求会被发送到别名指向的版本上，您可以配置请求发送到主版本和附加版本的比例。
    @inlinable @discardableResult
    public func createAlias(name: String, functionName: String, functionVersion: String, namespace: String? = nil, routingConfig: RoutingConfig? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAliasResponse> {
        let input = CreateAliasRequest(name: name, functionName: functionName, functionVersion: functionVersion, namespace: namespace, routingConfig: routingConfig, description: description)
        return self.client.execute(action: "CreateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建函数版本别名
    ///
    /// 为某个函数版本创建一个别名，您可以使用别名来标记特定的函数版本，如DEV/RELEASE版本，也可以随时修改别名指向的版本。
    /// 一个别名必须指向一个主版本，此外还可以同时指向一个附加版本。调用函数时指定特定的别名，则请求会被发送到别名指向的版本上，您可以配置请求发送到主版本和附加版本的比例。
    @inlinable @discardableResult
    public func createAlias(name: String, functionName: String, functionVersion: String, namespace: String? = nil, routingConfig: RoutingConfig? = nil, description: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAliasResponse {
        let input = CreateAliasRequest(name: name, functionName: functionName, functionVersion: functionVersion, namespace: namespace, routingConfig: routingConfig, description: description)
        return try await self.client.execute(action: "CreateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
