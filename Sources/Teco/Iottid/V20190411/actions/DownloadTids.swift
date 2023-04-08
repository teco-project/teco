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

extension Iottid {
    /// DownloadTids请求参数结构体
    public struct DownloadTidsRequest: TCRequestModel {
        /// 订单编号
        public let orderId: String

        /// 下载数量：1~10
        public let quantity: UInt64

        public init(orderId: String, quantity: UInt64) {
            self.orderId = orderId
            self.quantity = quantity
        }

        enum CodingKeys: String, CodingKey {
            case orderId = "OrderId"
            case quantity = "Quantity"
        }
    }

    /// DownloadTids返回参数结构体
    public struct DownloadTidsResponse: TCResponseModel {
        /// 下载的TID信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let tidSet: [TidKeysInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case tidSet = "TidSet"
            case requestId = "RequestId"
        }
    }

    /// 下载芯片订单的TID
    @inlinable
    public func downloadTids(_ input: DownloadTidsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadTidsResponse> {
        self.client.execute(action: "DownloadTids", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 下载芯片订单的TID
    @inlinable
    public func downloadTids(_ input: DownloadTidsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadTidsResponse {
        try await self.client.execute(action: "DownloadTids", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 下载芯片订单的TID
    @inlinable
    public func downloadTids(orderId: String, quantity: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DownloadTidsResponse> {
        self.downloadTids(.init(orderId: orderId, quantity: quantity), region: region, logger: logger, on: eventLoop)
    }

    /// 下载芯片订单的TID
    @inlinable
    public func downloadTids(orderId: String, quantity: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DownloadTidsResponse {
        try await self.downloadTids(.init(orderId: orderId, quantity: quantity), region: region, logger: logger, on: eventLoop)
    }
}
