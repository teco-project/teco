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

extension Gse {
    /// UpdateAlias请求参数结构体
    public struct UpdateAliasRequest: TCRequestModel {
        /// 要更新的别名的唯一标识符
        public let aliasId: String

        /// 名字，长度不小于1字符不超过1024字符
        public let name: String?

        /// 别名的可读说明，长度不小于1字符不超过1024字符
        public let description: String?

        /// 别名的路由配置
        public let routingStrategy: RoutingStrategy?

        public init(aliasId: String, name: String? = nil, description: String? = nil, routingStrategy: RoutingStrategy? = nil) {
            self.aliasId = aliasId
            self.name = name
            self.description = description
            self.routingStrategy = routingStrategy
        }

        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
            case name = "Name"
            case description = "Description"
            case routingStrategy = "RoutingStrategy"
        }
    }

    /// UpdateAlias返回参数结构体
    public struct UpdateAliasResponse: TCResponseModel {
        /// 别名对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let alias: Alias?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case alias = "Alias"
            case requestId = "RequestId"
        }
    }

    /// 更新别名的属性
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateAlias）用于更新别名的属性。
    @inlinable
    public func updateAlias(_ input: UpdateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAliasResponse> {
        self.client.execute(action: "UpdateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新别名的属性
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateAlias）用于更新别名的属性。
    @inlinable
    public func updateAlias(_ input: UpdateAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAliasResponse {
        try await self.client.execute(action: "UpdateAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新别名的属性
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateAlias）用于更新别名的属性。
    @inlinable
    public func updateAlias(aliasId: String, name: String? = nil, description: String? = nil, routingStrategy: RoutingStrategy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateAliasResponse> {
        self.updateAlias(UpdateAliasRequest(aliasId: aliasId, name: name, description: description, routingStrategy: routingStrategy), region: region, logger: logger, on: eventLoop)
    }

    /// 更新别名的属性
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    ///
    /// 本接口（UpdateAlias）用于更新别名的属性。
    @inlinable
    public func updateAlias(aliasId: String, name: String? = nil, description: String? = nil, routingStrategy: RoutingStrategy? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateAliasResponse {
        try await self.updateAlias(UpdateAliasRequest(aliasId: aliasId, name: name, description: description, routingStrategy: routingStrategy), region: region, logger: logger, on: eventLoop)
    }
}
