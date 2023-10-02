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

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// UpdateFleetAttributes请求参数结构体
    public struct UpdateFleetAttributesRequest: TCRequest {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 服务器舰队描述，最小长度0，最大长度100
        public let description: String?

        /// 服务器舰队名称，最小长度1，最大长度50
        public let name: String?

        /// 保护策略：不保护NoProtection、完全保护FullProtection、时限保护TimeLimitProtection
        public let newGameSessionProtectionPolicy: String?

        /// 资源创建限制策略
        public let resourceCreationLimitPolicy: ResourceCreationLimitPolicy?

        /// 时限保护超时时间，默认60分钟，最小值5，最大值1440；当NewGameSessionProtectionPolicy为TimeLimitProtection时参数有效
        public let gameServerSessionProtectionTimeLimit: Int64?

        public init(fleetId: String, description: String? = nil, name: String? = nil, newGameSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil) {
            self.fleetId = fleetId
            self.description = description
            self.name = name
            self.newGameSessionProtectionPolicy = newGameSessionProtectionPolicy
            self.resourceCreationLimitPolicy = resourceCreationLimitPolicy
            self.gameServerSessionProtectionTimeLimit = gameServerSessionProtectionTimeLimit
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case description = "Description"
            case name = "Name"
            case newGameSessionProtectionPolicy = "NewGameSessionProtectionPolicy"
            case resourceCreationLimitPolicy = "ResourceCreationLimitPolicy"
            case gameServerSessionProtectionTimeLimit = "GameServerSessionProtectionTimeLimit"
        }
    }

    /// UpdateFleetAttributes返回参数结构体
    public struct UpdateFleetAttributesResponse: TCResponse {
        /// 服务器舰队Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case requestId = "RequestId"
        }
    }

    /// 更新服务器舰队属性
    ///
    /// 本接口（UpdateFleetAttributes）用于更新服务器舰队属性。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetAttributes(_ input: UpdateFleetAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetAttributesResponse> {
        fatalError("'UpdateFleetAttributes' is no longer available.")
    }

    /// 更新服务器舰队属性
    ///
    /// 本接口（UpdateFleetAttributes）用于更新服务器舰队属性。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetAttributes(_ input: UpdateFleetAttributesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetAttributesResponse {
        fatalError("'UpdateFleetAttributes' is no longer available.")
    }

    /// 更新服务器舰队属性
    ///
    /// 本接口（UpdateFleetAttributes）用于更新服务器舰队属性。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetAttributes(fleetId: String, description: String? = nil, name: String? = nil, newGameSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetAttributesResponse> {
        fatalError("'UpdateFleetAttributes' is no longer available.")
    }

    /// 更新服务器舰队属性
    ///
    /// 本接口（UpdateFleetAttributes）用于更新服务器舰队属性。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func updateFleetAttributes(fleetId: String, description: String? = nil, name: String? = nil, newGameSessionProtectionPolicy: String? = nil, resourceCreationLimitPolicy: ResourceCreationLimitPolicy? = nil, gameServerSessionProtectionTimeLimit: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetAttributesResponse {
        fatalError("'UpdateFleetAttributes' is no longer available.")
    }
}
