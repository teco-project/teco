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
    /// UpdateFleetName请求参数结构体
    public struct UpdateFleetNameRequest: TCRequest {
        /// 服务器舰队 Id
        public let fleetId: String

        /// 服务器舰队名称，最小长度1，最大长度50
        public let name: String

        public init(fleetId: String, name: String) {
            self.fleetId = fleetId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case name = "Name"
        }
    }

    /// UpdateFleetName返回参数结构体
    public struct UpdateFleetNameResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新服务器舰队名称
    ///
    /// 本接口（UpdateFleetName）用于更新服务器舰队名称。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateFleetName(_ input: UpdateFleetNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetNameResponse> {
        fatalError("'UpdateFleetName' is no longer available.")
    }

    /// 更新服务器舰队名称
    ///
    /// 本接口（UpdateFleetName）用于更新服务器舰队名称。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateFleetName(_ input: UpdateFleetNameRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetNameResponse {
        fatalError("'UpdateFleetName' is no longer available.")
    }

    /// 更新服务器舰队名称
    ///
    /// 本接口（UpdateFleetName）用于更新服务器舰队名称。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateFleetName(fleetId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<UpdateFleetNameResponse> {
        fatalError("'UpdateFleetName' is no longer available.")
    }

    /// 更新服务器舰队名称
    ///
    /// 本接口（UpdateFleetName）用于更新服务器舰队名称。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func updateFleetName(fleetId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateFleetNameResponse {
        fatalError("'UpdateFleetName' is no longer available.")
    }
}
