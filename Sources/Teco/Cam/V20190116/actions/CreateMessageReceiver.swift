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

extension Cam {
    /// CreateMessageReceiver请求参数结构体
    public struct CreateMessageReceiverRequest: TCRequest {
        /// 消息接收人的用户名
        public let name: String

        /// 手机号国际区号，国内为86
        public let countryCode: String

        /// 手机号码, 例如：132****2492
        public let phoneNumber: String

        /// 邮箱，例如：57*****@qq.com
        public let email: String

        /// 消息接收人的备注，选填
        public let remark: String?

        public init(name: String, countryCode: String, phoneNumber: String, email: String, remark: String? = nil) {
            self.name = name
            self.countryCode = countryCode
            self.phoneNumber = phoneNumber
            self.email = email
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case countryCode = "CountryCode"
            case phoneNumber = "PhoneNumber"
            case email = "Email"
            case remark = "Remark"
        }
    }

    /// CreateMessageReceiver返回参数结构体
    public struct CreateMessageReceiverResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建消息接收人
    ///
    /// 创建消息接收人接口：仅允许已完成实名认证的用户访问消息接收人接口，并对每个用户限制每天最多请求10次。
    @inlinable @discardableResult
    public func createMessageReceiver(_ input: CreateMessageReceiverRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageReceiverResponse> {
        self.client.execute(action: "CreateMessageReceiver", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建消息接收人
    ///
    /// 创建消息接收人接口：仅允许已完成实名认证的用户访问消息接收人接口，并对每个用户限制每天最多请求10次。
    @inlinable @discardableResult
    public func createMessageReceiver(_ input: CreateMessageReceiverRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageReceiverResponse {
        try await self.client.execute(action: "CreateMessageReceiver", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建消息接收人
    ///
    /// 创建消息接收人接口：仅允许已完成实名认证的用户访问消息接收人接口，并对每个用户限制每天最多请求10次。
    @inlinable @discardableResult
    public func createMessageReceiver(name: String, countryCode: String, phoneNumber: String, email: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateMessageReceiverResponse> {
        self.createMessageReceiver(.init(name: name, countryCode: countryCode, phoneNumber: phoneNumber, email: email, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建消息接收人
    ///
    /// 创建消息接收人接口：仅允许已完成实名认证的用户访问消息接收人接口，并对每个用户限制每天最多请求10次。
    @inlinable @discardableResult
    public func createMessageReceiver(name: String, countryCode: String, phoneNumber: String, email: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateMessageReceiverResponse {
        try await self.createMessageReceiver(.init(name: name, countryCode: countryCode, phoneNumber: phoneNumber, email: email, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
