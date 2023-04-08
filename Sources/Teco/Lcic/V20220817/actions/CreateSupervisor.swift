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

extension Lcic {
    /// CreateSupervisor请求参数结构体
    public struct CreateSupervisorRequest: TCRequestModel {
        /// 应用ID。
        public let sdkAppId: UInt64

        /// 用户ID列表。
        public let users: [String]

        public init(sdkAppId: UInt64, users: [String]) {
            self.sdkAppId = sdkAppId
            self.users = users
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case users = "Users"
        }
    }

    /// CreateSupervisor返回参数结构体
    public struct CreateSupervisorResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建巡课
    @inlinable @discardableResult
    public func createSupervisor(_ input: CreateSupervisorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSupervisorResponse> {
        self.client.execute(action: "CreateSupervisor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建巡课
    @inlinable @discardableResult
    public func createSupervisor(_ input: CreateSupervisorRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSupervisorResponse {
        try await self.client.execute(action: "CreateSupervisor", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建巡课
    @inlinable @discardableResult
    public func createSupervisor(sdkAppId: UInt64, users: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateSupervisorResponse> {
        self.createSupervisor(.init(sdkAppId: sdkAppId, users: users), region: region, logger: logger, on: eventLoop)
    }

    /// 创建巡课
    @inlinable @discardableResult
    public func createSupervisor(sdkAppId: UInt64, users: [String], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateSupervisorResponse {
        try await self.createSupervisor(.init(sdkAppId: sdkAppId, users: users), region: region, logger: logger, on: eventLoop)
    }
}
