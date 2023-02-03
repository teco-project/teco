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

extension Bma {
    /// CreateBPOfflineTicket请求参数结构体
    public struct CreateBPOfflineTicketRequest: TCRequestModel {
        /// 仿冒网址ID
        public let fakeURLId: Int64?

        public init(fakeURLId: Int64? = nil) {
            self.fakeURLId = fakeURLId
        }

        enum CodingKeys: String, CodingKey {
            case fakeURLId = "FakeURLId"
        }
    }

    /// CreateBPOfflineTicket返回参数结构体
    public struct CreateBPOfflineTicketResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 添加下线工单
    @inlinable @discardableResult
    public func createBPOfflineTicket(_ input: CreateBPOfflineTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPOfflineTicketResponse> {
        self.client.execute(action: "CreateBPOfflineTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加下线工单
    @inlinable @discardableResult
    public func createBPOfflineTicket(_ input: CreateBPOfflineTicketRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPOfflineTicketResponse {
        try await self.client.execute(action: "CreateBPOfflineTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 添加下线工单
    @inlinable @discardableResult
    public func createBPOfflineTicket(fakeURLId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateBPOfflineTicketResponse> {
        let input = CreateBPOfflineTicketRequest(fakeURLId: fakeURLId)
        return self.client.execute(action: "CreateBPOfflineTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 添加下线工单
    @inlinable @discardableResult
    public func createBPOfflineTicket(fakeURLId: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateBPOfflineTicketResponse {
        let input = CreateBPOfflineTicketRequest(fakeURLId: fakeURLId)
        return try await self.client.execute(action: "CreateBPOfflineTicket", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
