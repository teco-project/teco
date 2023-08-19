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

extension Mongodb {
    /// SetAutoRenew请求参数结构体
    public struct SetAutoRenewRequest: TCRequest {
        /// 实例ID列表，格式如：cmgo-p8vnipr5。与云数据库控制台页面中显示的实例ID相同
        public let instanceIds: [String]

        /// 续费选项，取值范围：0-手动续费，1-自动续费，2-确认不续费
        public let autoRenewFlag: UInt64

        public init(instanceIds: [String], autoRenewFlag: UInt64) {
            self.instanceIds = instanceIds
            self.autoRenewFlag = autoRenewFlag
        }

        enum CodingKeys: String, CodingKey {
            case instanceIds = "InstanceIds"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }

    /// SetAutoRenew返回参数结构体
    public struct SetAutoRenewResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置云数据库实例的续费选项
    ///
    /// 本接口(SetAutoRenew)用于设置包年包月云数据库实例的续费选项。
    @inlinable @discardableResult
    public func setAutoRenew(_ input: SetAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetAutoRenewResponse> {
        self.client.execute(action: "SetAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置云数据库实例的续费选项
    ///
    /// 本接口(SetAutoRenew)用于设置包年包月云数据库实例的续费选项。
    @inlinable @discardableResult
    public func setAutoRenew(_ input: SetAutoRenewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetAutoRenewResponse {
        try await self.client.execute(action: "SetAutoRenew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置云数据库实例的续费选项
    ///
    /// 本接口(SetAutoRenew)用于设置包年包月云数据库实例的续费选项。
    @inlinable @discardableResult
    public func setAutoRenew(instanceIds: [String], autoRenewFlag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetAutoRenewResponse> {
        self.setAutoRenew(.init(instanceIds: instanceIds, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 设置云数据库实例的续费选项
    ///
    /// 本接口(SetAutoRenew)用于设置包年包月云数据库实例的续费选项。
    @inlinable @discardableResult
    public func setAutoRenew(instanceIds: [String], autoRenewFlag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetAutoRenewResponse {
        try await self.setAutoRenew(.init(instanceIds: instanceIds, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }
}
