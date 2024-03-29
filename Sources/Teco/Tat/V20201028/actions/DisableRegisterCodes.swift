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

extension Tat {
    /// DisableRegisterCodes请求参数结构体
    public struct DisableRegisterCodesRequest: TCRequest {
        /// 注册码ID。
        public let registerCodeIds: [String]

        public init(registerCodeIds: [String]) {
            self.registerCodeIds = registerCodeIds
        }

        enum CodingKeys: String, CodingKey {
            case registerCodeIds = "RegisterCodeIds"
        }
    }

    /// DisableRegisterCodes返回参数结构体
    public struct DisableRegisterCodesResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量禁用注册码
    ///
    /// 此接口用于批量禁用注册码。
    @inlinable @discardableResult
    public func disableRegisterCodes(_ input: DisableRegisterCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableRegisterCodesResponse> {
        self.client.execute(action: "DisableRegisterCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量禁用注册码
    ///
    /// 此接口用于批量禁用注册码。
    @inlinable @discardableResult
    public func disableRegisterCodes(_ input: DisableRegisterCodesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableRegisterCodesResponse {
        try await self.client.execute(action: "DisableRegisterCodes", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量禁用注册码
    ///
    /// 此接口用于批量禁用注册码。
    @inlinable @discardableResult
    public func disableRegisterCodes(registerCodeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DisableRegisterCodesResponse> {
        self.disableRegisterCodes(.init(registerCodeIds: registerCodeIds), region: region, logger: logger, on: eventLoop)
    }

    /// 批量禁用注册码
    ///
    /// 此接口用于批量禁用注册码。
    @inlinable @discardableResult
    public func disableRegisterCodes(registerCodeIds: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DisableRegisterCodesResponse {
        try await self.disableRegisterCodes(.init(registerCodeIds: registerCodeIds), region: region, logger: logger, on: eventLoop)
    }
}
