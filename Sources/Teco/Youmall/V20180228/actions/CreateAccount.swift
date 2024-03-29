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

extension Youmall {
    /// CreateAccount请求参数结构体
    public struct CreateAccountRequest: TCRequest {
        /// 集团ID
        public let companyId: String

        /// 账号名；需要是手机号
        public let name: String

        /// 密码；需要是(`~!@#$%^&*()_+=-）中的至少两种且八位以上
        public let password: String

        /// 客户门店编码
        public let shopCode: String

        /// 备注说明; 30个字符以内
        public let remark: String?

        public init(companyId: String, name: String, password: String, shopCode: String, remark: String? = nil) {
            self.companyId = companyId
            self.name = name
            self.password = password
            self.shopCode = shopCode
            self.remark = remark
        }

        enum CodingKeys: String, CodingKey {
            case companyId = "CompanyId"
            case name = "Name"
            case password = "Password"
            case shopCode = "ShopCode"
            case remark = "Remark"
        }
    }

    /// CreateAccount返回参数结构体
    public struct CreateAccountResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 创建集团门店管理员账号
    @inlinable @discardableResult
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建集团门店管理员账号
    @inlinable @discardableResult
    public func createAccount(_ input: CreateAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        try await self.client.execute(action: "CreateAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建集团门店管理员账号
    @inlinable @discardableResult
    public func createAccount(companyId: String, name: String, password: String, shopCode: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateAccountResponse> {
        self.createAccount(.init(companyId: companyId, name: name, password: password, shopCode: shopCode, remark: remark), region: region, logger: logger, on: eventLoop)
    }

    /// 创建集团门店管理员账号
    @inlinable @discardableResult
    public func createAccount(companyId: String, name: String, password: String, shopCode: String, remark: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateAccountResponse {
        try await self.createAccount(.init(companyId: companyId, name: name, password: password, shopCode: shopCode, remark: remark), region: region, logger: logger, on: eventLoop)
    }
}
