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

extension Cdc {
    /// ModifyOrderStatus请求参数结构体
    public struct ModifyOrderStatusRequest: TCRequest {
        /// 要更新成的状态
        public let status: String

        /// 大订单ID
        public let dedicatedClusterOrderId: String?

        /// 小订单ID
        public let subOrderIds: [String]?

        public init(status: String, dedicatedClusterOrderId: String? = nil, subOrderIds: [String]? = nil) {
            self.status = status
            self.dedicatedClusterOrderId = dedicatedClusterOrderId
            self.subOrderIds = subOrderIds
        }

        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case dedicatedClusterOrderId = "DedicatedClusterOrderId"
            case subOrderIds = "SubOrderIds"
        }
    }

    /// ModifyOrderStatus返回参数结构体
    public struct ModifyOrderStatusResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改订单状态
    ///
    /// 修改大订单、小订单的状态
    @inlinable @discardableResult
    public func modifyOrderStatus(_ input: ModifyOrderStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrderStatusResponse> {
        self.client.execute(action: "ModifyOrderStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改订单状态
    ///
    /// 修改大订单、小订单的状态
    @inlinable @discardableResult
    public func modifyOrderStatus(_ input: ModifyOrderStatusRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrderStatusResponse {
        try await self.client.execute(action: "ModifyOrderStatus", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改订单状态
    ///
    /// 修改大订单、小订单的状态
    @inlinable @discardableResult
    public func modifyOrderStatus(status: String, dedicatedClusterOrderId: String? = nil, subOrderIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyOrderStatusResponse> {
        self.modifyOrderStatus(.init(status: status, dedicatedClusterOrderId: dedicatedClusterOrderId, subOrderIds: subOrderIds), region: region, logger: logger, on: eventLoop)
    }

    /// 修改订单状态
    ///
    /// 修改大订单、小订单的状态
    @inlinable @discardableResult
    public func modifyOrderStatus(status: String, dedicatedClusterOrderId: String? = nil, subOrderIds: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyOrderStatusResponse {
        try await self.modifyOrderStatus(.init(status: status, dedicatedClusterOrderId: dedicatedClusterOrderId, subOrderIds: subOrderIds), region: region, logger: logger, on: eventLoop)
    }
}
