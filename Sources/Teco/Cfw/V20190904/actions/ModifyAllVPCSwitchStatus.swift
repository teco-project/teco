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

extension Cfw {
    /// ModifyAllVPCSwitchStatus请求参数结构体
    public struct ModifyAllVPCSwitchStatusRequest: TCRequest {
        /// 状态，0：关闭，1：开启
        public let status: Int64

        /// 选中的防火墙开关Id
        public let fireWallVpcIds: [String]?

        public init(status: Int64, fireWallVpcIds: [String]? = nil) {
            self.status = status
            self.fireWallVpcIds = fireWallVpcIds
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case fireWallVpcIds = "FireWallVpcIds"
        }
    }

    /// ModifyAllVPCSwitchStatus返回参数结构体
    public struct ModifyAllVPCSwitchStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// VPC防火墙一键开关
    @inlinable @discardableResult
    public func modifyAllVPCSwitchStatus(_ input: ModifyAllVPCSwitchStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAllVPCSwitchStatusResponse> {
        self.client.execute(action: "ModifyAllVPCSwitchStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// VPC防火墙一键开关
    @inlinable @discardableResult
    public func modifyAllVPCSwitchStatus(_ input: ModifyAllVPCSwitchStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAllVPCSwitchStatusResponse {
        try await self.client.execute(action: "ModifyAllVPCSwitchStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// VPC防火墙一键开关
    @inlinable @discardableResult
    public func modifyAllVPCSwitchStatus(status: Int64, fireWallVpcIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAllVPCSwitchStatusResponse> {
        self.modifyAllVPCSwitchStatus(.init(status: status, fireWallVpcIds: fireWallVpcIds), region: region, logger: logger, on: eventLoop)
    }

    /// VPC防火墙一键开关
    @inlinable @discardableResult
    public func modifyAllVPCSwitchStatus(status: Int64, fireWallVpcIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAllVPCSwitchStatusResponse {
        try await self.modifyAllVPCSwitchStatus(.init(status: status, fireWallVpcIds: fireWallVpcIds), region: region, logger: logger, on: eventLoop)
    }
}
