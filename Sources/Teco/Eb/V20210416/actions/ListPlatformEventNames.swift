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

extension Eb {
    /// ListPlatformEventNames请求参数结构体
    public struct ListPlatformEventNamesRequest: TCRequest {
        /// 平台产品类型
        public let productType: String

        public init(productType: String) {
            self.productType = productType
        }

        enum CodingKeys: String, CodingKey {
            case productType = "ProductType"
        }
    }

    /// ListPlatformEventNames返回参数结构体
    public struct ListPlatformEventNamesResponse: TCResponse {
        /// 平台产品列表
        public let eventNames: [PlatformEventDetail]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case eventNames = "EventNames"
            case requestId = "RequestId"
        }
    }

    /// 获取平台产品事件名称
    @inlinable
    public func listPlatformEventNames(_ input: ListPlatformEventNamesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlatformEventNamesResponse> {
        self.client.execute(action: "ListPlatformEventNames", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取平台产品事件名称
    @inlinable
    public func listPlatformEventNames(_ input: ListPlatformEventNamesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlatformEventNamesResponse {
        try await self.client.execute(action: "ListPlatformEventNames", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取平台产品事件名称
    @inlinable
    public func listPlatformEventNames(productType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ListPlatformEventNamesResponse> {
        self.listPlatformEventNames(.init(productType: productType), region: region, logger: logger, on: eventLoop)
    }

    /// 获取平台产品事件名称
    @inlinable
    public func listPlatformEventNames(productType: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ListPlatformEventNamesResponse {
        try await self.listPlatformEventNames(.init(productType: productType), region: region, logger: logger, on: eventLoop)
    }
}
