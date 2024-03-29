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

extension Ciam {
    /// CreateUser请求参数结构体
    public struct CreateUserRequest: TCRequest {
        /// 用户目录ID
        public let userStoreId: String

        /// 手机号码
        public let phoneNumber: String

        /// 邮箱
        public let email: String

        /// 密码
        public let password: String

        /// 用户名
        public let userName: String

        /// 昵称
        public let nickname: String?

        /// 地址
        public let address: String?

        /// 用户组ID
        public let userGroup: [String]?

        /// 生日
        public let birthdate: Int64?

        /// 自定义属性
        public let customizationAttributes: [MemberMap]?

        /// 索引字段1
        public let indexedAttribute1: String?

        /// 索引字段2
        public let indexedAttribute2: String?

        /// 索引字段3
        public let indexedAttribute3: String?

        /// 索引字段4
        public let indexedAttribute4: String?

        /// 索引字段5
        public let indexedAttribute5: String?

        public init(userStoreId: String, phoneNumber: String, email: String, password: String, userName: String, nickname: String? = nil, address: String? = nil, userGroup: [String]? = nil, birthdate: Int64? = nil, customizationAttributes: [MemberMap]? = nil, indexedAttribute1: String? = nil, indexedAttribute2: String? = nil, indexedAttribute3: String? = nil, indexedAttribute4: String? = nil, indexedAttribute5: String? = nil) {
            self.userStoreId = userStoreId
            self.phoneNumber = phoneNumber
            self.email = email
            self.password = password
            self.userName = userName
            self.nickname = nickname
            self.address = address
            self.userGroup = userGroup
            self.birthdate = birthdate
            self.customizationAttributes = customizationAttributes
            self.indexedAttribute1 = indexedAttribute1
            self.indexedAttribute2 = indexedAttribute2
            self.indexedAttribute3 = indexedAttribute3
            self.indexedAttribute4 = indexedAttribute4
            self.indexedAttribute5 = indexedAttribute5
        }

        enum CodingKeys: String, CodingKey {
            case userStoreId = "UserStoreId"
            case phoneNumber = "PhoneNumber"
            case email = "Email"
            case password = "Password"
            case userName = "UserName"
            case nickname = "Nickname"
            case address = "Address"
            case userGroup = "UserGroup"
            case birthdate = "Birthdate"
            case customizationAttributes = "CustomizationAttributes"
            case indexedAttribute1 = "IndexedAttribute1"
            case indexedAttribute2 = "IndexedAttribute2"
            case indexedAttribute3 = "IndexedAttribute3"
            case indexedAttribute4 = "IndexedAttribute4"
            case indexedAttribute5 = "IndexedAttribute5"
        }
    }

    /// CreateUser返回参数结构体
    public struct CreateUserResponse: TCResponse {
        /// 创建的用户信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let user: User?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case user = "User"
            case requestId = "RequestId"
        }
    }

    /// 创建用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建用户
    @inlinable
    public func createUser(userStoreId: String, phoneNumber: String, email: String, password: String, userName: String, nickname: String? = nil, address: String? = nil, userGroup: [String]? = nil, birthdate: Int64? = nil, customizationAttributes: [MemberMap]? = nil, indexedAttribute1: String? = nil, indexedAttribute2: String? = nil, indexedAttribute3: String? = nil, indexedAttribute4: String? = nil, indexedAttribute5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.createUser(.init(userStoreId: userStoreId, phoneNumber: phoneNumber, email: email, password: password, userName: userName, nickname: nickname, address: address, userGroup: userGroup, birthdate: birthdate, customizationAttributes: customizationAttributes, indexedAttribute1: indexedAttribute1, indexedAttribute2: indexedAttribute2, indexedAttribute3: indexedAttribute3, indexedAttribute4: indexedAttribute4, indexedAttribute5: indexedAttribute5), region: region, logger: logger, on: eventLoop)
    }

    /// 创建用户
    @inlinable
    public func createUser(userStoreId: String, phoneNumber: String, email: String, password: String, userName: String, nickname: String? = nil, address: String? = nil, userGroup: [String]? = nil, birthdate: Int64? = nil, customizationAttributes: [MemberMap]? = nil, indexedAttribute1: String? = nil, indexedAttribute2: String? = nil, indexedAttribute3: String? = nil, indexedAttribute4: String? = nil, indexedAttribute5: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.createUser(.init(userStoreId: userStoreId, phoneNumber: phoneNumber, email: email, password: password, userName: userName, nickname: nickname, address: address, userGroup: userGroup, birthdate: birthdate, customizationAttributes: customizationAttributes, indexedAttribute1: indexedAttribute1, indexedAttribute2: indexedAttribute2, indexedAttribute3: indexedAttribute3, indexedAttribute4: indexedAttribute4, indexedAttribute5: indexedAttribute5), region: region, logger: logger, on: eventLoop)
    }
}
