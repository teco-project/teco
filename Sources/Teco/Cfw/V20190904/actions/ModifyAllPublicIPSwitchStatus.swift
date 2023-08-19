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
    /// ModifyAllPublicIPSwitchStatus请求参数结构体
    public struct ModifyAllPublicIPSwitchStatusRequest: TCRequest {
        /// 状态，0：关闭，1：开启
        public let status: Int64

        /// 选中的防火墙开关Id
        public let fireWallPublicIPs: [String]?

        public init(status: Int64, fireWallPublicIPs: [String]? = nil) {
            self.status = status
            self.fireWallPublicIPs = fireWallPublicIPs
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case fireWallPublicIPs = "FireWallPublicIPs"
        }
    }

    /// ModifyAllPublicIPSwitchStatus返回参数结构体
    public struct ModifyAllPublicIPSwitchStatusResponse: TCResponse {
        /// 接口返回信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnMsg: String?

        /// 接口返回错误码，0请求成功  非0失败
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let returnCode: Int64?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case returnMsg = "ReturnMsg"
            case returnCode = "ReturnCode"
            case requestId = "RequestId"
        }
    }

    /// 互联网边界防火墙一键开关
    @inlinable
    public func modifyAllPublicIPSwitchStatus(_ input: ModifyAllPublicIPSwitchStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAllPublicIPSwitchStatusResponse> {
        self.client.execute(action: "ModifyAllPublicIPSwitchStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 互联网边界防火墙一键开关
    @inlinable
    public func modifyAllPublicIPSwitchStatus(_ input: ModifyAllPublicIPSwitchStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAllPublicIPSwitchStatusResponse {
        try await self.client.execute(action: "ModifyAllPublicIPSwitchStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 互联网边界防火墙一键开关
    @inlinable
    public func modifyAllPublicIPSwitchStatus(status: Int64, fireWallPublicIPs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyAllPublicIPSwitchStatusResponse> {
        self.modifyAllPublicIPSwitchStatus(.init(status: status, fireWallPublicIPs: fireWallPublicIPs), region: region, logger: logger, on: eventLoop)
    }

    /// 互联网边界防火墙一键开关
    @inlinable
    public func modifyAllPublicIPSwitchStatus(status: Int64, fireWallPublicIPs: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyAllPublicIPSwitchStatusResponse {
        try await self.modifyAllPublicIPSwitchStatus(.init(status: status, fireWallPublicIPs: fireWallPublicIPs), region: region, logger: logger, on: eventLoop)
    }
}
