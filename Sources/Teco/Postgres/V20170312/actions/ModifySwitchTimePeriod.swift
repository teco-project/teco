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

extension Postgres {
    /// ModifySwitchTimePeriod请求参数结构体
    public struct ModifySwitchTimePeriodRequest: TCRequestModel {
        /// 处于等待切换状态中的实例ID
        public let dbInstanceId: String

        /// 入参取值为 0 ，代表立即切换。
        public let switchTag: UInt64

        public init(dbInstanceId: String, switchTag: UInt64) {
            self.dbInstanceId = dbInstanceId
            self.switchTag = switchTag
        }

        enum CodingKeys: String, CodingKey {
            case dbInstanceId = "DBInstanceId"
            case switchTag = "SwitchTag"
        }
    }

    /// ModifySwitchTimePeriod返回参数结构体
    public struct ModifySwitchTimePeriodResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改变更配置切换时间
    ///
    /// 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。
    @inlinable @discardableResult
    public func modifySwitchTimePeriod(_ input: ModifySwitchTimePeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySwitchTimePeriodResponse> {
        self.client.execute(action: "ModifySwitchTimePeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改变更配置切换时间
    ///
    /// 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。
    @inlinable @discardableResult
    public func modifySwitchTimePeriod(_ input: ModifySwitchTimePeriodRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySwitchTimePeriodResponse {
        try await self.client.execute(action: "ModifySwitchTimePeriod", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改变更配置切换时间
    ///
    /// 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。
    @inlinable @discardableResult
    public func modifySwitchTimePeriod(dbInstanceId: String, switchTag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySwitchTimePeriodResponse> {
        self.modifySwitchTimePeriod(.init(dbInstanceId: dbInstanceId, switchTag: switchTag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改变更配置切换时间
    ///
    /// 当升级完成后，对处于等待切换状态下的实例，强制实例立即切换。
    @inlinable @discardableResult
    public func modifySwitchTimePeriod(dbInstanceId: String, switchTag: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySwitchTimePeriodResponse {
        try await self.modifySwitchTimePeriod(.init(dbInstanceId: dbInstanceId, switchTag: switchTag), region: region, logger: logger, on: eventLoop)
    }
}
