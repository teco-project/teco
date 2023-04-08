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

import TecoCore

extension Vpc {
    /// ModifyDhcpIpAttribute请求参数结构体
    public struct ModifyDhcpIpAttributeRequest: TCRequestModel {
        /// `DhcpIp`唯一`ID`，形如：`dhcpip-9o233uri`。
        public let dhcpIpId: String

        /// `DhcpIp`名称，可任意命名，但不得超过60个字符。
        public let dhcpIpName: String

        public init(dhcpIpId: String, dhcpIpName: String) {
            self.dhcpIpId = dhcpIpId
            self.dhcpIpName = dhcpIpName
        }

        enum CodingKeys: String, CodingKey {
            case dhcpIpId = "DhcpIpId"
            case dhcpIpName = "DhcpIpName"
        }
    }

    /// ModifyDhcpIpAttribute返回参数结构体
    public struct ModifyDhcpIpAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改DhcpIp属性
    ///
    /// 本接口（ModifyDhcpIpAttribute）用于修改DhcpIp属性
    @inlinable @discardableResult
    public func modifyDhcpIpAttribute(_ input: ModifyDhcpIpAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDhcpIpAttributeResponse> {
        self.client.execute(action: "ModifyDhcpIpAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DhcpIp属性
    ///
    /// 本接口（ModifyDhcpIpAttribute）用于修改DhcpIp属性
    @inlinable @discardableResult
    public func modifyDhcpIpAttribute(_ input: ModifyDhcpIpAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDhcpIpAttributeResponse {
        try await self.client.execute(action: "ModifyDhcpIpAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DhcpIp属性
    ///
    /// 本接口（ModifyDhcpIpAttribute）用于修改DhcpIp属性
    @inlinable @discardableResult
    public func modifyDhcpIpAttribute(dhcpIpId: String, dhcpIpName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDhcpIpAttributeResponse> {
        self.modifyDhcpIpAttribute(.init(dhcpIpId: dhcpIpId, dhcpIpName: dhcpIpName), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DhcpIp属性
    ///
    /// 本接口（ModifyDhcpIpAttribute）用于修改DhcpIp属性
    @inlinable @discardableResult
    public func modifyDhcpIpAttribute(dhcpIpId: String, dhcpIpName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDhcpIpAttributeResponse {
        try await self.modifyDhcpIpAttribute(.init(dhcpIpId: dhcpIpId, dhcpIpName: dhcpIpName), region: region, logger: logger, on: eventLoop)
    }
}
