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
    /// DescribeFleetPortSettings请求参数结构体
    public struct DescribeFleetPortSettingsRequest: TCRequestModel {
        /// 服务器舰队 Id
        public let fleetId: String

        public init(fleetId: String) {
            self.fleetId = fleetId
        }

        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
        }
    }

    /// DescribeFleetPortSettings返回参数结构体
    public struct DescribeFleetPortSettingsResponse: TCResponseModel {
        /// 安全组信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inboundPermissions: [InboundPermission]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case inboundPermissions = "InboundPermissions"
            case requestId = "RequestId"
        }
    }

    /// 服务器舰队安全组信息查询
    ///
    /// 本接口（DescribeFleetPortSettings）用于获取服务器舰队安全组信息。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetPortSettings(_ input: DescribeFleetPortSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetPortSettingsResponse> {
        fatalError("DescribeFleetPortSettings is no longer available.")
    }

    /// 服务器舰队安全组信息查询
    ///
    /// 本接口（DescribeFleetPortSettings）用于获取服务器舰队安全组信息。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetPortSettings(_ input: DescribeFleetPortSettingsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetPortSettingsResponse {
        fatalError("DescribeFleetPortSettings is no longer available.")
    }

    /// 服务器舰队安全组信息查询
    ///
    /// 本接口（DescribeFleetPortSettings）用于获取服务器舰队安全组信息。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetPortSettings(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeFleetPortSettingsResponse> {
        fatalError("DescribeFleetPortSettings is no longer available.")
    }

    /// 服务器舰队安全组信息查询
    ///
    /// 本接口（DescribeFleetPortSettings）用于获取服务器舰队安全组信息。
    @available(*, unavailable, message: "此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持")
    @inlinable
    public func describeFleetPortSettings(fleetId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeFleetPortSettingsResponse {
        fatalError("DescribeFleetPortSettings is no longer available.")
    }
}
