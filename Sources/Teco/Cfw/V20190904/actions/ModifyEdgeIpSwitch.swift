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
    /// ModifyEdgeIpSwitch请求参数结构体
    public struct ModifyEdgeIpSwitchRequest: TCRequest {
        /// 0 关闭开关
        /// 1 打开开关
        /// 2 不操作开关，此次切换模式
        public let enable: Int64?

        /// 操作开关详情
        public let edgeIpSwitchLst: [EdgeIpSwitch]?

        /// 0 不自动选择子网
        /// 1 自动选择子网创建私有连接
        public let autoChooseSubnet: Int64?

        /// 0 切换为旁路
        /// 1 切换为串行
        /// 2 不切换模式，此次操作开关
        public let switchMode: Int64?

        public init(enable: Int64? = nil, edgeIpSwitchLst: [EdgeIpSwitch]? = nil, autoChooseSubnet: Int64? = nil, switchMode: Int64? = nil) {
            self.enable = enable
            self.edgeIpSwitchLst = edgeIpSwitchLst
            self.autoChooseSubnet = autoChooseSubnet
            self.switchMode = switchMode
        }

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case edgeIpSwitchLst = "EdgeIpSwitchLst"
            case autoChooseSubnet = "AutoChooseSubnet"
            case switchMode = "SwitchMode"
        }
    }

    /// ModifyEdgeIpSwitch返回参数结构体
    public struct ModifyEdgeIpSwitchResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改边界防火墙开关(旁路、串行)
    @inlinable @discardableResult
    public func modifyEdgeIpSwitch(_ input: ModifyEdgeIpSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeIpSwitchResponse> {
        self.client.execute(action: "ModifyEdgeIpSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改边界防火墙开关(旁路、串行)
    @inlinable @discardableResult
    public func modifyEdgeIpSwitch(_ input: ModifyEdgeIpSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeIpSwitchResponse {
        try await self.client.execute(action: "ModifyEdgeIpSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改边界防火墙开关(旁路、串行)
    @inlinable @discardableResult
    public func modifyEdgeIpSwitch(enable: Int64? = nil, edgeIpSwitchLst: [EdgeIpSwitch]? = nil, autoChooseSubnet: Int64? = nil, switchMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyEdgeIpSwitchResponse> {
        self.modifyEdgeIpSwitch(.init(enable: enable, edgeIpSwitchLst: edgeIpSwitchLst, autoChooseSubnet: autoChooseSubnet, switchMode: switchMode), region: region, logger: logger, on: eventLoop)
    }

    /// 修改边界防火墙开关(旁路、串行)
    @inlinable @discardableResult
    public func modifyEdgeIpSwitch(enable: Int64? = nil, edgeIpSwitchLst: [EdgeIpSwitch]? = nil, autoChooseSubnet: Int64? = nil, switchMode: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyEdgeIpSwitchResponse {
        try await self.modifyEdgeIpSwitch(.init(enable: enable, edgeIpSwitchLst: edgeIpSwitchLst, autoChooseSubnet: autoChooseSubnet, switchMode: switchMode), region: region, logger: logger, on: eventLoop)
    }
}
