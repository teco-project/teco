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

extension Iotvideo {
    /// ModifyDataForwardStatus请求参数结构体
    public struct ModifyDataForwardStatusRequest: TCRequestModel {
        /// 产品ID。
        public let productId: String

        /// 转发状态，1启用，0禁用。
        public let status: Int64

        public init(productId: String, status: Int64) {
            self.productId = productId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case status = "Status"
        }
    }

    /// ModifyDataForwardStatus返回参数结构体
    public struct ModifyDataForwardStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 设置数据转发状态
    @inlinable @discardableResult
    public func modifyDataForwardStatus(_ input: ModifyDataForwardStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataForwardStatusResponse> {
        self.client.execute(action: "ModifyDataForwardStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置数据转发状态
    @inlinable @discardableResult
    public func modifyDataForwardStatus(_ input: ModifyDataForwardStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataForwardStatusResponse {
        try await self.client.execute(action: "ModifyDataForwardStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 设置数据转发状态
    @inlinable @discardableResult
    public func modifyDataForwardStatus(productId: String, status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDataForwardStatusResponse> {
        let input = ModifyDataForwardStatusRequest(productId: productId, status: status)
        return self.client.execute(action: "ModifyDataForwardStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 设置数据转发状态
    @inlinable @discardableResult
    public func modifyDataForwardStatus(productId: String, status: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDataForwardStatusResponse {
        let input = ModifyDataForwardStatusRequest(productId: productId, status: status)
        return try await self.client.execute(action: "ModifyDataForwardStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
