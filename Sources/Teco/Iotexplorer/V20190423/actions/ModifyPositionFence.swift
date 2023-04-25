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

extension Iotexplorer {
    /// ModifyPositionFence请求参数结构体
    public struct ModifyPositionFenceRequest: TCRequestModel {
        public init() {
        }
    }

    /// ModifyPositionFence返回参数结构体
    public struct ModifyPositionFenceResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新围栏
    @inlinable @discardableResult
    public func modifyPositionFence(_ input: ModifyPositionFenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPositionFenceResponse> {
        self.client.execute(action: "ModifyPositionFence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新围栏
    @inlinable @discardableResult
    public func modifyPositionFence(_ input: ModifyPositionFenceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPositionFenceResponse {
        try await self.client.execute(action: "ModifyPositionFence", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新围栏
    @inlinable @discardableResult
    public func modifyPositionFence(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyPositionFenceResponse> {
        self.modifyPositionFence(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 更新围栏
    @inlinable @discardableResult
    public func modifyPositionFence(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyPositionFenceResponse {
        try await self.modifyPositionFence(.init(), region: region, logger: logger, on: eventLoop)
    }
}
