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

extension Partners {
    /// DescribeClientBalanceNew请求参数结构体
    public struct DescribeClientBalanceNewRequest: TCRequest {
        /// 客户(代客)账号ID
        public let clientUin: String

        public init(clientUin: String) {
            self.clientUin = clientUin
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
        }
    }

    /// DescribeClientBalanceNew返回参数结构体
    public struct DescribeClientBalanceNewResponse: TCResponse {
        /// 账户可用余额，单位分 （可用余额 = 现金余额 + 赠送金余额 - 欠费金额 - 冻结金额）
        public let balance: Int64

        /// 账户现金余额，单位分
        public let cash: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case balance = "Balance"
            case cash = "Cash"
            case requestId = "RequestId"
        }
    }

    /// 查询客户余额（新）
    ///
    /// 为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额
    @inlinable
    public func describeClientBalanceNew(_ input: DescribeClientBalanceNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientBalanceNewResponse> {
        self.client.execute(action: "DescribeClientBalanceNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户余额（新）
    ///
    /// 为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额
    @inlinable
    public func describeClientBalanceNew(_ input: DescribeClientBalanceNewRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientBalanceNewResponse {
        try await self.client.execute(action: "DescribeClientBalanceNew", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户余额（新）
    ///
    /// 为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额
    @inlinable
    public func describeClientBalanceNew(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientBalanceNewResponse> {
        self.describeClientBalanceNew(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户余额（新）
    ///
    /// 为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额
    @inlinable
    public func describeClientBalanceNew(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientBalanceNewResponse {
        try await self.describeClientBalanceNew(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }
}
