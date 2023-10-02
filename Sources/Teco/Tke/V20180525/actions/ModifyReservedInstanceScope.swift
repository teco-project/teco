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

extension Tke {
    /// ModifyReservedInstanceScope请求参数结构体
    public struct ModifyReservedInstanceScopeRequest: TCRequest {
        /// 预留券唯一 ID
        public let reservedInstanceIds: [String]

        /// 预留券抵扣范围信息
        public let reservedInstanceScope: ReservedInstanceScope

        public init(reservedInstanceIds: [String], reservedInstanceScope: ReservedInstanceScope) {
            self.reservedInstanceIds = reservedInstanceIds
            self.reservedInstanceScope = reservedInstanceScope
        }

        enum CodingKeys: String, CodingKey {
            case reservedInstanceIds = "ReservedInstanceIds"
            case reservedInstanceScope = "ReservedInstanceScope"
        }
    }

    /// ModifyReservedInstanceScope返回参数结构体
    public struct ModifyReservedInstanceScopeResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改预留券的抵扣范围
    ///
    /// 修改预留券的抵扣范围，抵扣范围取值：Region、Zone 和 Node。
    @inlinable @discardableResult
    public func modifyReservedInstanceScope(_ input: ModifyReservedInstanceScopeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReservedInstanceScopeResponse> {
        self.client.execute(action: "ModifyReservedInstanceScope", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改预留券的抵扣范围
    ///
    /// 修改预留券的抵扣范围，抵扣范围取值：Region、Zone 和 Node。
    @inlinable @discardableResult
    public func modifyReservedInstanceScope(_ input: ModifyReservedInstanceScopeRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReservedInstanceScopeResponse {
        try await self.client.execute(action: "ModifyReservedInstanceScope", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改预留券的抵扣范围
    ///
    /// 修改预留券的抵扣范围，抵扣范围取值：Region、Zone 和 Node。
    @inlinable @discardableResult
    public func modifyReservedInstanceScope(reservedInstanceIds: [String], reservedInstanceScope: ReservedInstanceScope, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyReservedInstanceScopeResponse> {
        self.modifyReservedInstanceScope(.init(reservedInstanceIds: reservedInstanceIds, reservedInstanceScope: reservedInstanceScope), region: region, logger: logger, on: eventLoop)
    }

    /// 修改预留券的抵扣范围
    ///
    /// 修改预留券的抵扣范围，抵扣范围取值：Region、Zone 和 Node。
    @inlinable @discardableResult
    public func modifyReservedInstanceScope(reservedInstanceIds: [String], reservedInstanceScope: ReservedInstanceScope, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyReservedInstanceScopeResponse {
        try await self.modifyReservedInstanceScope(.init(reservedInstanceIds: reservedInstanceIds, reservedInstanceScope: reservedInstanceScope), region: region, logger: logger, on: eventLoop)
    }
}