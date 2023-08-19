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

extension Bma {
    /// CreateBPFalseTicket请求参数结构体
    public struct CreateBPFalseTicketRequest: TCRequest {
        /// 仿冒网址
        public let fakeURL: String?

        public init(fakeURL: String? = nil) {
            self.fakeURL = fakeURL
        }

        enum CodingKeys: String, CodingKey {
            case fakeURL = "FakeURL"
        }
    }

    /// CreateBPFalseTicket返回参数结构体
    public struct CreateBPFalseTicketResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加误报工单
    @inlinable @discardableResult
    public func createBPFalseTicket(_ input: CreateBPFalseTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPFalseTicketResponse> {
        self.client.execute(action: "CreateBPFalseTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加误报工单
    @inlinable @discardableResult
    public func createBPFalseTicket(_ input: CreateBPFalseTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPFalseTicketResponse {
        try await self.client.execute(action: "CreateBPFalseTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加误报工单
    @inlinable @discardableResult
    public func createBPFalseTicket(fakeURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPFalseTicketResponse> {
        self.createBPFalseTicket(.init(fakeURL: fakeURL), region: region, logger: logger, on: eventLoop)
    }

    /// 添加误报工单
    @inlinable @discardableResult
    public func createBPFalseTicket(fakeURL: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPFalseTicketResponse {
        try await self.createBPFalseTicket(.init(fakeURL: fakeURL), region: region, logger: logger, on: eventLoop)
    }
}
