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

extension Cwp {
    /// ModifyWebPageProtectSwitch请求参数结构体
    public struct ModifyWebPageProtectSwitchRequest: TCRequestModel {
        /// 开关类型 1 防护开关  2 自动恢复开关 3 移除防护目录
        public let switchType: UInt64

        /// 需要操作开关的网站 最大100条
        public let ids: [String]

        /// 1 开启 0 关闭 SwitchType 为 1 | 2 必填;
        public let status: UInt64?

        public init(switchType: UInt64, ids: [String], status: UInt64? = nil) {
            self.switchType = switchType
            self.ids = ids
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case switchType = "SwitchType"
            case ids = "Ids"
            case status = "Status"
        }
    }

    /// ModifyWebPageProtectSwitch返回参数结构体
    public struct ModifyWebPageProtectSwitchResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 网站防护设置开关
    ///
    /// 网站防篡改防护设置开关
    @inlinable @discardableResult
    public func modifyWebPageProtectSwitch(_ input: ModifyWebPageProtectSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebPageProtectSwitchResponse> {
        self.client.execute(action: "ModifyWebPageProtectSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 网站防护设置开关
    ///
    /// 网站防篡改防护设置开关
    @inlinable @discardableResult
    public func modifyWebPageProtectSwitch(_ input: ModifyWebPageProtectSwitchRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebPageProtectSwitchResponse {
        try await self.client.execute(action: "ModifyWebPageProtectSwitch", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 网站防护设置开关
    ///
    /// 网站防篡改防护设置开关
    @inlinable @discardableResult
    public func modifyWebPageProtectSwitch(switchType: UInt64, ids: [String], status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyWebPageProtectSwitchResponse> {
        self.modifyWebPageProtectSwitch(.init(switchType: switchType, ids: ids, status: status), region: region, logger: logger, on: eventLoop)
    }

    /// 网站防护设置开关
    ///
    /// 网站防篡改防护设置开关
    @inlinable @discardableResult
    public func modifyWebPageProtectSwitch(switchType: UInt64, ids: [String], status: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyWebPageProtectSwitchResponse {
        try await self.modifyWebPageProtectSwitch(.init(switchType: switchType, ids: ids, status: status), region: region, logger: logger, on: eventLoop)
    }
}
