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

extension Essbasic {
    /// CreateUser请求参数结构体
    public struct CreateUserRequest: TCRequestModel {
        /// 调用方信息
        public let caller: Caller

        /// 第三方平台唯一标识；要求应用内OpenId唯一; len<=32
        public let openId: String

        /// 用户姓名
        public let name: String

        /// 用户证件类型：
        /// 1. ID_CARD - 居民身份证
        /// 2. PASSPORT - 护照
        /// 3. MAINLAND_TRAVEL_PERMIT_FOR_HONGKONG_AND_MACAO_RESIDENTS - 港澳居民来往内地通行证
        /// 4. MAINLAND_TRAVEL_PERMIT_FOR_TAIWAN_RESIDENTS - 台湾居民来往大陆通行证
        /// 5. HOUSEHOLD_REGISTER - 户口本
        /// 6. TEMP_ID_CARD - 临时居民身份证
        public let idCardType: String

        /// 用户证件号
        public let idCardNumber: String

        /// 是否以OpenId作为UserId (为true时将直接以OpenId生成腾讯电子签平台的UserId)
        public let useOpenId: Bool?

        /// 用户邮箱，不要求唯一
        public let email: String?

        /// 用户手机号码，不要求唯一
        public let mobile: String?

        public init(caller: Caller, openId: String, name: String, idCardType: String, idCardNumber: String, useOpenId: Bool? = nil, email: String? = nil, mobile: String? = nil) {
            self.caller = caller
            self.openId = openId
            self.name = name
            self.idCardType = idCardType
            self.idCardNumber = idCardNumber
            self.useOpenId = useOpenId
            self.email = email
            self.mobile = mobile
        }

        enum CodingKeys: String, CodingKey {
            case caller = "Caller"
            case openId = "OpenId"
            case name = "Name"
            case idCardType = "IdCardType"
            case idCardNumber = "IdCardNumber"
            case useOpenId = "UseOpenId"
            case email = "Email"
            case mobile = "Mobile"
        }
    }

    /// CreateUser返回参数结构体
    public struct CreateUserResponse: TCResponseModel {
        /// 用户ID，按应用号隔离
        public let userId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case userId = "UserId"
            case requestId = "RequestId"
        }
    }

    /// 注册个人用户
    ///
    /// 此接口（CreateUser）用于注册腾讯电子签个人用户。
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 注册个人用户
    ///
    /// 此接口（CreateUser）用于注册腾讯电子签个人用户。
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 注册个人用户
    ///
    /// 此接口（CreateUser）用于注册腾讯电子签个人用户。
    @inlinable
    public func createUser(caller: Caller, openId: String, name: String, idCardType: String, idCardNumber: String, useOpenId: Bool? = nil, email: String? = nil, mobile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.createUser(CreateUserRequest(caller: caller, openId: openId, name: name, idCardType: idCardType, idCardNumber: idCardNumber, useOpenId: useOpenId, email: email, mobile: mobile), region: region, logger: logger, on: eventLoop)
    }

    /// 注册个人用户
    ///
    /// 此接口（CreateUser）用于注册腾讯电子签个人用户。
    @inlinable
    public func createUser(caller: Caller, openId: String, name: String, idCardType: String, idCardNumber: String, useOpenId: Bool? = nil, email: String? = nil, mobile: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.createUser(CreateUserRequest(caller: caller, openId: openId, name: name, idCardType: idCardType, idCardNumber: idCardNumber, useOpenId: useOpenId, email: email, mobile: mobile), region: region, logger: logger, on: eventLoop)
    }
}
