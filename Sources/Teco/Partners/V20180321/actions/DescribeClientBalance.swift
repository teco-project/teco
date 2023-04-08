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
    /// DescribeClientBalance请求参数结构体
    public struct DescribeClientBalanceRequest: TCRequestModel {
        /// 客户(代客)账号ID
        public let clientUin: String

        public init(clientUin: String) {
            self.clientUin = clientUin
        }

        enum CodingKeys: String, CodingKey {
            case clientUin = "ClientUin"
        }
    }

    /// DescribeClientBalance返回参数结构体
    public struct DescribeClientBalanceResponse: TCResponseModel {
        /// 账户可用余额，单位分 （可用余额 = 现金余额 - 冻结金额）  【注：该数据准确性存疑，请切换至DescribeClientBalanceNew取值】
        public let balance: UInt64

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

    /// 查询客户余额
    ///
    /// 【该接口将逐步下线，请切换使用升级版本DescribeClientBalanceNew】为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额.
    @inlinable
    public func describeClientBalance(_ input: DescribeClientBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientBalanceResponse> {
        self.client.execute(action: "DescribeClientBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询客户余额
    ///
    /// 【该接口将逐步下线，请切换使用升级版本DescribeClientBalanceNew】为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额.
    @inlinable
    public func describeClientBalance(_ input: DescribeClientBalanceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientBalanceResponse {
        try await self.client.execute(action: "DescribeClientBalance", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询客户余额
    ///
    /// 【该接口将逐步下线，请切换使用升级版本DescribeClientBalanceNew】为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额.
    @inlinable
    public func describeClientBalance(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeClientBalanceResponse> {
        self.describeClientBalance(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }

    /// 查询客户余额
    ///
    /// 【该接口将逐步下线，请切换使用升级版本DescribeClientBalanceNew】为合作伙伴提供查询客户余额能力。调用者必须是合作伙伴，只能查询自己名下客户余额.
    @inlinable
    public func describeClientBalance(clientUin: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeClientBalanceResponse {
        try await self.describeClientBalance(.init(clientUin: clientUin), region: region, logger: logger, on: eventLoop)
    }
}
