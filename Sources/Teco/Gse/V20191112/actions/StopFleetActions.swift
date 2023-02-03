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
    /// StopFleetActions请求参数结构体
    public struct StopFleetActionsRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 服务器舰队扩展策略，值为["AUTO_SCALING"]
        public let actions: [String]?

        public init(fleetId: String, actions: [String]? = nil) {
            self.fleetId = fleetId
            self.actions = actions
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case actions = "Actions"
        }
    }

    /// StopFleetActions返回参数结构体
    public struct StopFleetActionsResponse: TCResponseModel {
        /// 服务器舰队 Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fleetId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case requestId = "RequestId"
        }
    }

    /// 停止服务器舰队自动扩缩容
    ///
    /// 本接口（StopFleetActions）用于停止服务器舰队自动扩缩容，改为手动扩缩容。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopFleetActions(_ input: StopFleetActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopFleetActionsResponse> {
        self.client.execute(action: "StopFleetActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止服务器舰队自动扩缩容
    ///
    /// 本接口（StopFleetActions）用于停止服务器舰队自动扩缩容，改为手动扩缩容。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopFleetActions(_ input: StopFleetActionsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopFleetActionsResponse {
        try await self.client.execute(action: "StopFleetActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止服务器舰队自动扩缩容
    ///
    /// 本接口（StopFleetActions）用于停止服务器舰队自动扩缩容，改为手动扩缩容。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopFleetActions(fleetId: String, actions: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopFleetActionsResponse> {
        let input = StopFleetActionsRequest(fleetId: fleetId, actions: actions)
        return self.client.execute(action: "StopFleetActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止服务器舰队自动扩缩容
    ///
    /// 本接口（StopFleetActions）用于停止服务器舰队自动扩缩容，改为手动扩缩容。
    @available(*, deprecated, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func stopFleetActions(fleetId: String, actions: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopFleetActionsResponse {
        let input = StopFleetActionsRequest(fleetId: fleetId, actions: actions)
        return try await self.client.execute(action: "StopFleetActions", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
