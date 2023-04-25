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
    /// ModifySpaceProperty请求参数结构体
    public struct ModifySpacePropertyRequest: TCRequestModel {
        /// 位置空间Id
        public let spaceId: String

        /// 产品Id
        public let productId: String

        /// 产品属性
        public let data: String

        public init(spaceId: String, productId: String, data: String) {
            self.spaceId = spaceId
            self.productId = productId
            self.data = data
        }

        enum CodingKeys: String, CodingKey {
            case spaceId = "SpaceId"
            case productId = "ProductId"
            case data = "Data"
        }
    }

    /// ModifySpaceProperty返回参数结构体
    public struct ModifySpacePropertyResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 更新位置空间产品属性
    @inlinable @discardableResult
    public func modifySpaceProperty(_ input: ModifySpacePropertyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySpacePropertyResponse> {
        self.client.execute(action: "ModifySpaceProperty", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新位置空间产品属性
    @inlinable @discardableResult
    public func modifySpaceProperty(_ input: ModifySpacePropertyRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySpacePropertyResponse {
        try await self.client.execute(action: "ModifySpaceProperty", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新位置空间产品属性
    @inlinable @discardableResult
    public func modifySpaceProperty(spaceId: String, productId: String, data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySpacePropertyResponse> {
        self.modifySpaceProperty(.init(spaceId: spaceId, productId: productId, data: data), region: region, logger: logger, on: eventLoop)
    }

    /// 更新位置空间产品属性
    @inlinable @discardableResult
    public func modifySpaceProperty(spaceId: String, productId: String, data: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySpacePropertyResponse {
        try await self.modifySpaceProperty(.init(spaceId: spaceId, productId: productId, data: data), region: region, logger: logger, on: eventLoop)
    }
}
