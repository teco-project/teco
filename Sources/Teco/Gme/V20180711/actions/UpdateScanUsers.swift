//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Gme {
    /// UpdateScanUsers请求参数结构体
    public struct UpdateScanUsersRequest: TCRequestModel {
        /// 应用ID
        public let bizId: UInt64

        /// 需要送检的所有用户号。多个用户号之间用","分隔。示例："0001,0002,0003"
        public let userIdString: String?

        /// 符合此正则表达式规则的用户号将被送检。示例：["^6.*"] 表示所有以6开头的用户号将被送检
        public let userIdRegex: [String]?

        public init(bizId: UInt64, userIdString: String? = nil, userIdRegex: [String]? = nil) {
            self.bizId = bizId
            self.userIdString = userIdString
            self.userIdRegex = userIdRegex
        }

        enum CodingKeys: String, CodingKey {
            case bizId = "BizId"
            case userIdString = "UserIdString"
            case userIdRegex = "UserIdRegex"
        }
    }

    /// UpdateScanUsers返回参数结构体
    public struct UpdateScanUsersResponse: TCResponseModel {
        /// 返回结果码
        public let errorCode: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case requestId = "RequestId"
        }
    }

    /// 更新送检用户号
    ///
    /// 更新自定义送检用户号
    @inlinable
    public func updateScanUsers(_ input: UpdateScanUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateScanUsersResponse > {
        self.client.execute(action: "UpdateScanUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 更新送检用户号
    ///
    /// 更新自定义送检用户号
    @inlinable
    public func updateScanUsers(_ input: UpdateScanUsersRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScanUsersResponse {
        try await self.client.execute(action: "UpdateScanUsers", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 更新送检用户号
    ///
    /// 更新自定义送检用户号
    @inlinable
    public func updateScanUsers(bizId: UInt64, userIdString: String? = nil, userIdRegex: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateScanUsersResponse > {
        self.updateScanUsers(UpdateScanUsersRequest(bizId: bizId, userIdString: userIdString, userIdRegex: userIdRegex), logger: logger, on: eventLoop)
    }

    /// 更新送检用户号
    ///
    /// 更新自定义送检用户号
    @inlinable
    public func updateScanUsers(bizId: UInt64, userIdString: String? = nil, userIdRegex: [String]? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateScanUsersResponse {
        try await self.updateScanUsers(UpdateScanUsersRequest(bizId: bizId, userIdString: userIdString, userIdRegex: userIdRegex), logger: logger, on: eventLoop)
    }
}
