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
    /// DeleteFleet请求参数结构体
    public struct DeleteFleetRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String

        public init(fleetId: String) {
            self.fleetId = fleetId
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
        }
    }

    /// DeleteFleet返回参数结构体
    public struct DeleteFleetResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除服务器舰队
    ///
    /// 本接口（DeleteFleet）用于删除服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteFleet(_ input: DeleteFleetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFleetResponse> {
        fatalError("DeleteFleet is no longer available.")
    }

    /// 删除服务器舰队
    ///
    /// 本接口（DeleteFleet）用于删除服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteFleet(_ input: DeleteFleetRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFleetResponse {
        fatalError("DeleteFleet is no longer available.")
    }

    /// 删除服务器舰队
    ///
    /// 本接口（DeleteFleet）用于删除服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteFleet(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteFleetResponse> {
        fatalError("DeleteFleet is no longer available.")
    }

    /// 删除服务器舰队
    ///
    /// 本接口（DeleteFleet）用于删除服务器舰队。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func deleteFleet(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteFleetResponse {
        fatalError("DeleteFleet is no longer available.")
    }
}
