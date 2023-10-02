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
    /// ModifyFwGroupSwitch请求参数结构体
    public struct ModifyFwGroupSwitchRequest: TCRequest {
        /// 打开或关闭开关
        /// 0：关闭开关
        /// 1：打开开关
        public let enable: Int64

        /// 是否操作全部开关 0 不操作全部开关，1 操作全部开关
        public let allSwitch: Int64

        /// 开关列表
        public let switchList: [FwGroupSwitch]?

        public init(enable: Int64, allSwitch: Int64, switchList: [FwGroupSwitch]? = nil) {
            self.enable = enable
            self.allSwitch = allSwitch
            self.switchList = switchList
        }

        enum CodingKeys: String, CodingKey {
            case enable = "Enable"
            case allSwitch = "AllSwitch"
            case switchList = "SwitchList"
        }
    }

    /// ModifyFwGroupSwitch返回参数结构体
    public struct ModifyFwGroupSwitchResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改防火墙(组)开关(支持单点模式、多点模式、全互通模式)
    @inlinable @discardableResult
    public func modifyFwGroupSwitch(_ input: ModifyFwGroupSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFwGroupSwitchResponse> {
        self.client.execute(action: "ModifyFwGroupSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改防火墙(组)开关(支持单点模式、多点模式、全互通模式)
    @inlinable @discardableResult
    public func modifyFwGroupSwitch(_ input: ModifyFwGroupSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFwGroupSwitchResponse {
        try await self.client.execute(action: "ModifyFwGroupSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改防火墙(组)开关(支持单点模式、多点模式、全互通模式)
    @inlinable @discardableResult
    public func modifyFwGroupSwitch(enable: Int64, allSwitch: Int64, switchList: [FwGroupSwitch]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyFwGroupSwitchResponse> {
        self.modifyFwGroupSwitch(.init(enable: enable, allSwitch: allSwitch, switchList: switchList), region: region, logger: logger, on: eventLoop)
    }

    /// 修改防火墙(组)开关(支持单点模式、多点模式、全互通模式)
    @inlinable @discardableResult
    public func modifyFwGroupSwitch(enable: Int64, allSwitch: Int64, switchList: [FwGroupSwitch]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyFwGroupSwitchResponse {
        try await self.modifyFwGroupSwitch(.init(enable: enable, allSwitch: allSwitch, switchList: switchList), region: region, logger: logger, on: eventLoop)
    }
}