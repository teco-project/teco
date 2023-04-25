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

extension Vpc {
    /// ModifyDirectConnectGatewayAttribute请求参数结构体
    public struct ModifyDirectConnectGatewayAttributeRequest: TCRequestModel {
        /// 专线网关唯一`ID`，形如：`dcg-9o233uri`。
        public let directConnectGatewayId: String

        /// 专线网关名称，可任意命名，但不得超过60个字符。
        public let directConnectGatewayName: String?

        /// 云联网路由学习类型，可选值：`BGP`（自动学习）、`STATIC`（静态，即用户配置）。只有云联网类型专线网关且开启了BGP功能才支持修改`CcnRouteType`。
        public let ccnRouteType: String?

        /// 云联网路由发布模式，可选值：`standard`（标准模式）、`exquisite`（精细模式）。只有云联网类型专线网关才支持修改`ModeType`。
        public let modeType: String?

        public init(directConnectGatewayId: String, directConnectGatewayName: String? = nil, ccnRouteType: String? = nil, modeType: String? = nil) {
            self.directConnectGatewayId = directConnectGatewayId
            self.directConnectGatewayName = directConnectGatewayName
            self.ccnRouteType = ccnRouteType
            self.modeType = modeType
        }

        enum CodingKeys: String, CodingKey {
            case directConnectGatewayId = "DirectConnectGatewayId"
            case directConnectGatewayName = "DirectConnectGatewayName"
            case ccnRouteType = "CcnRouteType"
            case modeType = "ModeType"
        }
    }

    /// ModifyDirectConnectGatewayAttribute返回参数结构体
    public struct ModifyDirectConnectGatewayAttributeResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改专线网关属性
    ///
    /// 本接口（ModifyDirectConnectGatewayAttribute）用于修改专线网关属性
    @inlinable @discardableResult
    public func modifyDirectConnectGatewayAttribute(_ input: ModifyDirectConnectGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDirectConnectGatewayAttributeResponse> {
        self.client.execute(action: "ModifyDirectConnectGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改专线网关属性
    ///
    /// 本接口（ModifyDirectConnectGatewayAttribute）用于修改专线网关属性
    @inlinable @discardableResult
    public func modifyDirectConnectGatewayAttribute(_ input: ModifyDirectConnectGatewayAttributeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDirectConnectGatewayAttributeResponse {
        try await self.client.execute(action: "ModifyDirectConnectGatewayAttribute", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改专线网关属性
    ///
    /// 本接口（ModifyDirectConnectGatewayAttribute）用于修改专线网关属性
    @inlinable @discardableResult
    public func modifyDirectConnectGatewayAttribute(directConnectGatewayId: String, directConnectGatewayName: String? = nil, ccnRouteType: String? = nil, modeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDirectConnectGatewayAttributeResponse> {
        self.modifyDirectConnectGatewayAttribute(.init(directConnectGatewayId: directConnectGatewayId, directConnectGatewayName: directConnectGatewayName, ccnRouteType: ccnRouteType, modeType: modeType), region: region, logger: logger, on: eventLoop)
    }

    /// 修改专线网关属性
    ///
    /// 本接口（ModifyDirectConnectGatewayAttribute）用于修改专线网关属性
    @inlinable @discardableResult
    public func modifyDirectConnectGatewayAttribute(directConnectGatewayId: String, directConnectGatewayName: String? = nil, ccnRouteType: String? = nil, modeType: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDirectConnectGatewayAttributeResponse {
        try await self.modifyDirectConnectGatewayAttribute(.init(directConnectGatewayId: directConnectGatewayId, directConnectGatewayName: directConnectGatewayName, ccnRouteType: ccnRouteType, modeType: modeType), region: region, logger: logger, on: eventLoop)
    }
}
