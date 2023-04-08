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

extension Intlpartnersmgt {
    /// QueryCreditByUinList请求参数结构体
    public struct QueryCreditByUinListRequest: TCRequestModel {
        /// 用户列表
        public let uinList: [UInt64]

        public init(uinList: [UInt64]) {
            self.uinList = uinList
        }

        enum CodingKeys: String, CodingKey {
            case uinList = "UinList"
        }
    }

    /// QueryCreditByUinList返回参数结构体
    public struct QueryCreditByUinListResponse: TCResponseModel {
        /// 用户信息列表
        public let data: [QueryDirectCustomersCreditData]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 通过Uin列表查询信用
    ///
    /// 查询用户列表信用
    @inlinable
    public func queryCreditByUinList(_ input: QueryCreditByUinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCreditByUinListResponse> {
        self.client.execute(action: "QueryCreditByUinList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 通过Uin列表查询信用
    ///
    /// 查询用户列表信用
    @inlinable
    public func queryCreditByUinList(_ input: QueryCreditByUinListRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCreditByUinListResponse {
        try await self.client.execute(action: "QueryCreditByUinList", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 通过Uin列表查询信用
    ///
    /// 查询用户列表信用
    @inlinable
    public func queryCreditByUinList(uinList: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<QueryCreditByUinListResponse> {
        self.queryCreditByUinList(.init(uinList: uinList), region: region, logger: logger, on: eventLoop)
    }

    /// 通过Uin列表查询信用
    ///
    /// 查询用户列表信用
    @inlinable
    public func queryCreditByUinList(uinList: [UInt64], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryCreditByUinListResponse {
        try await self.queryCreditByUinList(.init(uinList: uinList), region: region, logger: logger, on: eventLoop)
    }
}
