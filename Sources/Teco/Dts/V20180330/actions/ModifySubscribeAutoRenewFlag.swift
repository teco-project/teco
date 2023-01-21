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

extension Dts {
    /// ModifySubscribeAutoRenewFlag请求参数结构体
    public struct ModifySubscribeAutoRenewFlagRequest: TCRequestModel {
        /// 订阅实例ID，例如：subs-8uey736k
        public let subscribeId: String

        /// 自动续费标识。1-自动续费，0-不自动续费
        public let autoRenewFlag: Int64

        public init(subscribeId: String, autoRenewFlag: Int64) {
            self.subscribeId = subscribeId
            self.autoRenewFlag = autoRenewFlag
        }

        enum CodingKeys: String, CodingKey {
            case subscribeId = "SubscribeId"
            case autoRenewFlag = "AutoRenewFlag"
        }
    }

    /// ModifySubscribeAutoRenewFlag返回参数结构体
    public struct ModifySubscribeAutoRenewFlagResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改订阅实例自动续费标识
    @inlinable @discardableResult
    public func modifySubscribeAutoRenewFlag(_ input: ModifySubscribeAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeAutoRenewFlagResponse> {
        self.client.execute(action: "ModifySubscribeAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改订阅实例自动续费标识
    @inlinable @discardableResult
    public func modifySubscribeAutoRenewFlag(_ input: ModifySubscribeAutoRenewFlagRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeAutoRenewFlagResponse {
        try await self.client.execute(action: "ModifySubscribeAutoRenewFlag", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改订阅实例自动续费标识
    @inlinable @discardableResult
    public func modifySubscribeAutoRenewFlag(subscribeId: String, autoRenewFlag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySubscribeAutoRenewFlagResponse> {
        self.modifySubscribeAutoRenewFlag(ModifySubscribeAutoRenewFlagRequest(subscribeId: subscribeId, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }

    /// 修改订阅实例自动续费标识
    @inlinable @discardableResult
    public func modifySubscribeAutoRenewFlag(subscribeId: String, autoRenewFlag: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySubscribeAutoRenewFlagResponse {
        try await self.modifySubscribeAutoRenewFlag(ModifySubscribeAutoRenewFlagRequest(subscribeId: subscribeId, autoRenewFlag: autoRenewFlag), region: region, logger: logger, on: eventLoop)
    }
}
