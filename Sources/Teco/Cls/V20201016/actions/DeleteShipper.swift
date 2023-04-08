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

import TecoCore

extension Cls {
    /// DeleteShipper请求参数结构体
    public struct DeleteShipperRequest: TCRequestModel {
        /// 投递规则ID
        public let shipperId: String

        public init(shipperId: String) {
            self.shipperId = shipperId
        }

        enum CodingKeys: String, CodingKey {
            case shipperId = "ShipperId"
        }
    }

    /// DeleteShipper返回参数结构体
    public struct DeleteShipperResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除投递规则
    @inlinable @discardableResult
    public func deleteShipper(_ input: DeleteShipperRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShipperResponse> {
        self.client.execute(action: "DeleteShipper", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除投递规则
    @inlinable @discardableResult
    public func deleteShipper(_ input: DeleteShipperRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShipperResponse {
        try await self.client.execute(action: "DeleteShipper", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除投递规则
    @inlinable @discardableResult
    public func deleteShipper(shipperId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteShipperResponse> {
        self.deleteShipper(.init(shipperId: shipperId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除投递规则
    @inlinable @discardableResult
    public func deleteShipper(shipperId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteShipperResponse {
        try await self.deleteShipper(.init(shipperId: shipperId), region: region, logger: logger, on: eventLoop)
    }
}
