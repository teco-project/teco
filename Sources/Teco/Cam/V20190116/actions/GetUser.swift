//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Cam {
    /// GetUser请求参数结构体
    public struct GetUserRequest: TCRequestModel {
        /// 子用户用户名
        public let name: String

        public init(name: String) {
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
        }
    }

    /// GetUser返回参数结构体
    public struct GetUserResponse: TCResponseModel {
        /// 子用户用户 UIN
        public let uin: UInt64

        /// 子用户用户名
        public let name: String

        /// 子用户 UID
        public let uid: UInt64

        /// 子用户备注
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let remark: String?

        /// 子用户能否登录控制台 0-无法登录控制台，1-可以登录控制台
        public let consoleLogin: UInt64

        /// 手机号
        public let phoneNum: String

        /// 区号
        public let countryCode: String

        /// 邮箱
        public let email: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case uin = "Uin"
            case name = "Name"
            case uid = "Uid"
            case remark = "Remark"
            case consoleLogin = "ConsoleLogin"
            case phoneNum = "PhoneNum"
            case countryCode = "CountryCode"
            case email = "Email"
            case requestId = "RequestId"
        }
    }

    /// 查询子用户
    @inlinable
    public func getUser(_ input: GetUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUserResponse> {
        self.client.execute(action: "GetUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询子用户
    @inlinable
    public func getUser(_ input: GetUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserResponse {
        try await self.client.execute(action: "GetUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询子用户
    @inlinable
    public func getUser(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetUserResponse> {
        self.getUser(GetUserRequest(name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 查询子用户
    @inlinable
    public func getUser(name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetUserResponse {
        try await self.getUser(GetUserRequest(name: name), region: region, logger: logger, on: eventLoop)
    }
}
