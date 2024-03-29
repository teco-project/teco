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

import struct Foundation.Date
import Logging
import NIOCore
import TecoCore
import TecoDateHelpers

extension Dasb {
    /// CreateUser请求参数结构体
    public struct CreateUserRequest: TCRequest {
        /// 用户名, 3-20个字符, 必须以英文字母开头，且不能包含字母、数字、.、_、-以外的字符
        public let userName: String

        /// 用户姓名，最大长度20个字符，不能包含空白字符
        public let realName: String

        /// 大陆手机号直接填写，如果是其他国家、地区号码， 按照"国家地区代码|手机号"的格式输入。如: "+852|xxxxxxxx"
        public let phone: String?

        /// 电子邮件
        public let email: String?

        /// 用户生效时间，如:"2021-09-22T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateFrom`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateFrom: Date?

        /// 用户失效时间，如:"2021-09-23T00:00:00+00:00"
        /// 生效、失效时间不填则用户长期有效
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the underlying
        /// string value (through `$validateTo`) in case the synthesized encoding is incorrect.
        @TCTimestampISO8601Encoding public var validateTo: Date?

        /// 所属用户组ID集合
        public let groupIdSet: [UInt64]?

        /// 认证方式，0 - 本地， 1 - LDAP， 2 - OAuth 不传则默认为0
        public let authType: UInt64?

        /// 访问时间段限制， 由0、1组成的字符串，长度168(7 × 24)，代表该用户在一周中允许访问的时间段。字符串中第N个字符代表在一周中的第N个小时， 0 - 代表不允许访问，1 - 代表允许访问
        public let validateTime: String?

        /// 所属部门ID，如：“1.2.3”
        public let departmentId: String?

        public init(userName: String, realName: String, phone: String? = nil, email: String? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, groupIdSet: [UInt64]? = nil, authType: UInt64? = nil, validateTime: String? = nil, departmentId: String? = nil) {
            self.userName = userName
            self.realName = realName
            self.phone = phone
            self.email = email
            self._validateFrom = .init(wrappedValue: validateFrom)
            self._validateTo = .init(wrappedValue: validateTo)
            self.groupIdSet = groupIdSet
            self.authType = authType
            self.validateTime = validateTime
            self.departmentId = departmentId
        }

        enum CodingKeys: String, CodingKey {
            case userName = "UserName"
            case realName = "RealName"
            case phone = "Phone"
            case email = "Email"
            case validateFrom = "ValidateFrom"
            case validateTo = "ValidateTo"
            case groupIdSet = "GroupIdSet"
            case authType = "AuthType"
            case validateTime = "ValidateTime"
            case departmentId = "DepartmentId"
        }
    }

    /// CreateUser返回参数结构体
    public struct CreateUserResponse: TCResponse {
        /// 新建用户的ID
        public let id: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case requestId = "RequestId"
        }
    }

    /// 新建用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新建用户
    @inlinable
    public func createUser(_ input: CreateUserRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.client.execute(action: "CreateUser", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新建用户
    @inlinable
    public func createUser(userName: String, realName: String, phone: String? = nil, email: String? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, groupIdSet: [UInt64]? = nil, authType: UInt64? = nil, validateTime: String? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateUserResponse> {
        self.createUser(.init(userName: userName, realName: realName, phone: phone, email: email, validateFrom: validateFrom, validateTo: validateTo, groupIdSet: groupIdSet, authType: authType, validateTime: validateTime, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }

    /// 新建用户
    @inlinable
    public func createUser(userName: String, realName: String, phone: String? = nil, email: String? = nil, validateFrom: Date? = nil, validateTo: Date? = nil, groupIdSet: [UInt64]? = nil, authType: UInt64? = nil, validateTime: String? = nil, departmentId: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateUserResponse {
        try await self.createUser(.init(userName: userName, realName: realName, phone: phone, email: email, validateFrom: validateFrom, validateTo: validateTo, groupIdSet: groupIdSet, authType: authType, validateTime: validateTime, departmentId: departmentId), region: region, logger: logger, on: eventLoop)
    }
}
