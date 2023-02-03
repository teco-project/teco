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

extension Iotcloud {
    /// SetProductsForbiddenStatus请求参数结构体
    public struct SetProductsForbiddenStatusRequest: TCRequestModel {
        /// 要设置禁用状态的产品列表
        public let productId: [String]

        /// 0启用，1禁用
        public let status: UInt64

        public init(productId: [String], status: UInt64) {
            self.productId = productId
            self.status = status
        }

        enum CodingKeys: String, CodingKey {
            case productId = "ProductId"
            case status = "Status"
        }
    }

    /// SetProductsForbiddenStatus返回参数结构体
    public struct SetProductsForbiddenStatusResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 批量设置产品禁用状态
    @inlinable @discardableResult
    public func setProductsForbiddenStatus(_ input: SetProductsForbiddenStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetProductsForbiddenStatusResponse> {
        self.client.execute(action: "SetProductsForbiddenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量设置产品禁用状态
    @inlinable @discardableResult
    public func setProductsForbiddenStatus(_ input: SetProductsForbiddenStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetProductsForbiddenStatusResponse {
        try await self.client.execute(action: "SetProductsForbiddenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量设置产品禁用状态
    @inlinable @discardableResult
    public func setProductsForbiddenStatus(productId: [String], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SetProductsForbiddenStatusResponse> {
        let input = SetProductsForbiddenStatusRequest(productId: productId, status: status)
        return self.client.execute(action: "SetProductsForbiddenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量设置产品禁用状态
    @inlinable @discardableResult
    public func setProductsForbiddenStatus(productId: [String], status: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SetProductsForbiddenStatusResponse {
        let input = SetProductsForbiddenStatusRequest(productId: productId, status: status)
        return try await self.client.execute(action: "SetProductsForbiddenStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
