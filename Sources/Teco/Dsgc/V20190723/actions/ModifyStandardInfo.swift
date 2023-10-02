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

extension Dsgc {
    /// ModifyStandardInfo请求参数结构体
    public struct ModifyStandardInfoRequest: TCRequest {
        public init() {
        }
    }

    /// ModifyStandardInfo返回参数结构体
    public struct ModifyStandardInfoResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改分级分类模板信息
    @inlinable @discardableResult
    public func modifyStandardInfo(_ input: ModifyStandardInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStandardInfoResponse> {
        self.client.execute(action: "ModifyStandardInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改分级分类模板信息
    @inlinable @discardableResult
    public func modifyStandardInfo(_ input: ModifyStandardInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStandardInfoResponse {
        try await self.client.execute(action: "ModifyStandardInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改分级分类模板信息
    @inlinable @discardableResult
    public func modifyStandardInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyStandardInfoResponse> {
        self.modifyStandardInfo(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 修改分级分类模板信息
    @inlinable @discardableResult
    public func modifyStandardInfo(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyStandardInfoResponse {
        try await self.modifyStandardInfo(.init(), region: region, logger: logger, on: eventLoop)
    }
}