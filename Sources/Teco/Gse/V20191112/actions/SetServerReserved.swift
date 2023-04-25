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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Gse {
    /// SetServerReserved请求参数结构体
    public struct SetServerReservedRequest: TCRequestModel {
        /// 扩缩容配置服务器舰队ID
        public let fleetId: String

        /// 实例ID
        public let instanceId: String

        /// 实例是否保留, 1-保留，0-不保留,默认
        public let reserveValue: Int64?

        public init(fleetId: String, instanceId: String, reserveValue: Int64? = nil) {
            self.fleetId = fleetId
            self.instanceId = instanceId
            self.reserveValue = reserveValue
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case instanceId = "InstanceId"
            case reserveValue = "ReserveValue"
        }
    }

    /// SetServerReserved返回参数结构体
    public struct SetServerReservedResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置实例保留
    ///
    /// 本接口（SetServerReserved）用于将异常的实例标记为保留，用于问题排查。
    ///
    /// 字段ReserveValue：0默认值，不保留；1 保留
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerReserved(_ input: SetServerReservedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetServerReservedResponse> {
        fatalError("SetServerReserved is no longer available.")
    }

    /// 设置实例保留
    ///
    /// 本接口（SetServerReserved）用于将异常的实例标记为保留，用于问题排查。
    ///
    /// 字段ReserveValue：0默认值，不保留；1 保留
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerReserved(_ input: SetServerReservedRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetServerReservedResponse {
        fatalError("SetServerReserved is no longer available.")
    }

    /// 设置实例保留
    ///
    /// 本接口（SetServerReserved）用于将异常的实例标记为保留，用于问题排查。
    ///
    /// 字段ReserveValue：0默认值，不保留；1 保留
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerReserved(fleetId: String, instanceId: String, reserveValue: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetServerReservedResponse> {
        fatalError("SetServerReserved is no longer available.")
    }

    /// 设置实例保留
    ///
    /// 本接口（SetServerReserved）用于将异常的实例标记为保留，用于问题排查。
    ///
    /// 字段ReserveValue：0默认值，不保留；1 保留
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable @discardableResult
    public func setServerReserved(fleetId: String, instanceId: String, reserveValue: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetServerReservedResponse {
        fatalError("SetServerReserved is no longer available.")
    }
}
