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

extension Cwp {
    /// ModifyBaselinePolicyState请求参数结构体
    public struct ModifyBaselinePolicyStateRequest: TCRequest {
        /// 策略Id
        public let policyId: Int64

        /// 开启状态[1:开启|0:未开启]
        public let isEnabled: Int64

        public init(policyId: Int64, isEnabled: Int64) {
            self.policyId = policyId
            self.isEnabled = isEnabled
        }

        enum CodingKeys: String, CodingKey {
            case policyId = "PolicyId"
            case isEnabled = "IsEnabled"
        }
    }

    /// ModifyBaselinePolicyState返回参数结构体
    public struct ModifyBaselinePolicyStateResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改或新增基线策略状态
    ///
    /// 更改基线策略状态
    @inlinable @discardableResult
    public func modifyBaselinePolicyState(_ input: ModifyBaselinePolicyStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselinePolicyStateResponse> {
        self.client.execute(action: "ModifyBaselinePolicyState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改或新增基线策略状态
    ///
    /// 更改基线策略状态
    @inlinable @discardableResult
    public func modifyBaselinePolicyState(_ input: ModifyBaselinePolicyStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselinePolicyStateResponse {
        try await self.client.execute(action: "ModifyBaselinePolicyState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改或新增基线策略状态
    ///
    /// 更改基线策略状态
    @inlinable @discardableResult
    public func modifyBaselinePolicyState(policyId: Int64, isEnabled: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselinePolicyStateResponse> {
        self.modifyBaselinePolicyState(.init(policyId: policyId, isEnabled: isEnabled), region: region, logger: logger, on: eventLoop)
    }

    /// 修改或新增基线策略状态
    ///
    /// 更改基线策略状态
    @inlinable @discardableResult
    public func modifyBaselinePolicyState(policyId: Int64, isEnabled: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselinePolicyStateResponse {
        try await self.modifyBaselinePolicyState(.init(policyId: policyId, isEnabled: isEnabled), region: region, logger: logger, on: eventLoop)
    }
}
