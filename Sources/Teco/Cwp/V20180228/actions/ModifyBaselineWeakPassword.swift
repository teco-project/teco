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
    /// ModifyBaselineWeakPassword请求参数结构体
    public struct ModifyBaselineWeakPasswordRequest: TCRequestModel {
        /// 无
        public let data: [BaselineWeakPassword]

        public init(data: [BaselineWeakPassword]) {
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case data = "Data"
        }
    }

    /// ModifyBaselineWeakPassword返回参数结构体
    public struct ModifyBaselineWeakPasswordResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改或新增弱口令
    ///
    /// 更改或新增弱口令
    @inlinable @discardableResult
    public func modifyBaselineWeakPassword(_ input: ModifyBaselineWeakPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselineWeakPasswordResponse> {
        self.client.execute(action: "ModifyBaselineWeakPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改或新增弱口令
    ///
    /// 更改或新增弱口令
    @inlinable @discardableResult
    public func modifyBaselineWeakPassword(_ input: ModifyBaselineWeakPasswordRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselineWeakPasswordResponse {
        try await self.client.execute(action: "ModifyBaselineWeakPassword", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改或新增弱口令
    ///
    /// 更改或新增弱口令
    @inlinable @discardableResult
    public func modifyBaselineWeakPassword(data: [BaselineWeakPassword], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyBaselineWeakPasswordResponse> {
        self.modifyBaselineWeakPassword(.init(data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 修改或新增弱口令
    ///
    /// 更改或新增弱口令
    @inlinable @discardableResult
    public func modifyBaselineWeakPassword(data: [BaselineWeakPassword], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyBaselineWeakPasswordResponse {
        try await self.modifyBaselineWeakPassword(.init(data: data), region: region, logger: logger, on: eventLoop)
    }
}
