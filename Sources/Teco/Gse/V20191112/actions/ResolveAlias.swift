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
    /// ResolveAlias请求参数结构体
    public struct ResolveAliasRequest: TCRequestModel {
        /// 要获取fleetId的别名ID
        public let aliasId: String

        public init(aliasId: String) {
            self.aliasId = aliasId
        }

        enum CodingKeys: String, CodingKey {
            case aliasId = "AliasId"
        }
    }

    /// ResolveAlias返回参数结构体
    public struct ResolveAliasResponse: TCResponseModel {
        /// 别名指向的fleet的唯一标识符
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case requestId = "RequestId"
        }
    }

    /// 获取别名当前指向的fleetId
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（ResolveAlias）用于获取别名当前指向的fleetId。
    @inlinable
    public func resolveAlias(_ input: ResolveAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResolveAliasResponse> {
        self.client.execute(action: "ResolveAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取别名当前指向的fleetId
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（ResolveAlias）用于获取别名当前指向的fleetId。
    @inlinable
    public func resolveAlias(_ input: ResolveAliasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResolveAliasResponse {
        try await self.client.execute(action: "ResolveAlias", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取别名当前指向的fleetId
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（ResolveAlias）用于获取别名当前指向的fleetId。
    @inlinable
    public func resolveAlias(aliasId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ResolveAliasResponse> {
        self.resolveAlias(ResolveAliasRequest(aliasId: aliasId), region: region, logger: logger, on: eventLoop)
    }

    /// 获取别名当前指向的fleetId
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（ResolveAlias）用于获取别名当前指向的fleetId。
    @inlinable
    public func resolveAlias(aliasId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ResolveAliasResponse {
        try await self.resolveAlias(ResolveAliasRequest(aliasId: aliasId), region: region, logger: logger, on: eventLoop)
    }
}
